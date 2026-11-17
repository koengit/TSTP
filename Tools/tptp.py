"""Minimal, strict parser/printer for the first-order TPTP languages CNF and FOF.

Only what is needed by the proof checker: tokenizing, parsing annotated
formulas (with include resolution), and printing formulas back in a canonical,
fully parenthesised form.  The parser follows the TPTP BNF (v9) for fof/cnf;
anything it does not understand is reported as a ParseError.
"""
import os
import re

class ParseError(Exception):
    pass

# ---------------------------------------------------------------- tokenizer

TOKEN_RE = re.compile(r"""
   (?P<ws>\s+)
 | (?P<lcomment>%[^\n]*)
 | (?P<bcomment>/\*.*?\*/)
 | (?P<sq>'(?:[^'\\]|\\.)*')
 | (?P<dq>"(?:[^"\\]|\\.)*")
 | (?P<op><~>|<=>|=>|<=|~\||~&|!=|[!?~&|=(),\[\]:.*+])
 | (?P<real>[+-]?[0-9]+(?:\.[0-9]+)?(?:[Ee][+-]?[0-9]+)?(?:/[0-9]+)?)
 | (?P<dollar>\$\$?[a-z][A-Za-z0-9_]*)
 | (?P<upper>[A-Z][A-Za-z0-9_]*)
 | (?P<lower>[a-z][A-Za-z0-9_]*)
""", re.X | re.S)

def tokenize(text, fname="<input>"):
    toks = []
    pos = 0
    line = 1
    n = len(text)
    while pos < n:
        m = TOKEN_RE.match(text, pos)
        if not m:
            raise ParseError(f"{fname}:{line}: unexpected character {text[pos]!r}")
        kind = m.lastgroup
        val = m.group(kind)
        if kind not in ("ws", "lcomment", "bcomment"):
            toks.append((kind, val, line))
        line += val.count("\n")
        pos = m.end()
    toks.append(("eof", "", line))
    return toks

# ---------------------------------------------------------------- AST
# terms:    ('var', name) | ('fun', name, [args])          (constants: no args)
# formulas: ('pred', name, [args]) | ('eq', t1, t2) | ('true',) | ('false',)
#           ('not', f) | ('and', [fs]) | ('or', [fs]) | ('imp', a, b) | ('iff', a, b)
#           ('xor', a, b) | ('nor', a, b) | ('nand', a, b)
#           ('all', [vars], f) | ('ex', [vars], f)

class Parser:
    def __init__(self, toks, fname):
        self.toks = toks
        self.i = 0
        self.fname = fname

    def peek(self, k=0):
        return self.toks[self.i + k]

    def next(self):
        t = self.toks[self.i]
        self.i += 1
        return t

    def err(self, msg):
        t = self.peek()
        raise ParseError(f"{self.fname}:{t[2]}: {msg} (at {t[1]!r})")

    def expect(self, val):
        t = self.next()
        if t[1] != val or t[0] in ("sq", "dq"):
            self.i -= 1
            self.err(f"expected {val!r}")
        return t

    def is_op(self, val, k=0):
        t = self.peek(k)
        return t[0] == "op" and t[1] == val

    # -- names / words
    def name(self):
        t = self.next()
        if t[0] in ("lower", "sq"):
            return t[1]
        if t[0] == "real" and re.fullmatch(r"[0-9]+", t[1]):
            return t[1]
        self.i -= 1
        self.err("expected a name")

    # -- terms
    def term(self):
        t = self.peek()
        if t[0] == "upper":
            self.next()
            return ("var", t[1])
        if t[0] in ("lower", "sq", "dollar"):
            self.next()
            if t[0] == "dollar" and t[1] not in DEFINED_FUNCTORS:
                self.i -= 1
                self.err("unsupported defined functor")
            args = self.args() if self.is_op("(") else []
            return ("fun", t[1], args)
        if t[0] in ("dq", "real"):
            self.next()
            return ("fun", t[1], [])
        self.err("expected a term")

    def args(self):
        self.expect("(")
        a = [self.term()]
        while self.is_op(","):
            self.next()
            a.append(self.term())
        self.expect(")")
        return a

    # -- atoms
    def atomic(self):
        t = self.peek()
        if t[0] == "dollar" and t[1] in ("$true", "$false"):
            self.next()
            if self.is_op("=") or self.is_op("!="):
                self.err("$true/$false cannot be used as terms")
            return ("true",) if t[1] == "$true" else ("false",)
        if t[0] == "upper" or t[0] in ("dq", "real"):
            lhs = self.term()
            return self.infix(lhs, required=True)
        if t[0] in ("lower", "sq", "dollar"):
            lhs = self.term()
            r = self.infix(lhs, required=False)
            if r is not None:
                return r
            # plain predicate atom
            return ("pred", lhs[1], lhs[2])
        self.err("expected an atomic formula")

    def infix(self, lhs, required):
        if self.is_op("="):
            self.next()
            return ("eq", lhs, self.term())
        if self.is_op("!="):
            self.next()
            return ("not", ("eq", lhs, self.term()))
        if required:
            self.err("expected = or !=")
        return None

    # -- fof formulas (TPTP BNF)
    BIN_NONASSOC = {"<=>": "iff", "=>": "imp", "<=": "revimp",
                    "<~>": "xor", "~|": "nor", "~&": "nand"}

    def fof_logic(self):
        lhs = self.fof_unit()
        t = self.peek()
        if t[0] == "op" and t[1] in self.BIN_NONASSOC:
            self.next()
            rhs = self.fof_unit()
            k = self.BIN_NONASSOC[t[1]]
            if k == "revimp":
                return ("imp", rhs, lhs)
            return (k, lhs, rhs)
        if t[0] == "op" and t[1] in ("|", "&"):
            op = t[1]
            fs = [lhs]
            while self.is_op(op):
                self.next()
                fs.append(self.fof_unit())
            nt = self.peek()
            if nt[0] == "op" and (nt[1] in ("|", "&") or nt[1] in self.BIN_NONASSOC):
                self.err("mixed connectives need parentheses")
            return ("or" if op == "|" else "and", fs)
        return lhs

    def fof_unit(self):
        # unit_formula = unitary | unary ;  unary = ~ unit | infix_unary (t != t)
        if self.is_op("~"):
            self.next()
            return ("not", self.fof_unit())
        return self.fof_unitary()

    def fof_unitary(self):
        if self.is_op("!") or self.is_op("?"):
            q = self.next()[1]
            self.expect("[")
            vs = [self.var()]
            while self.is_op(","):
                self.next()
                vs.append(self.var())
            self.expect("]")
            self.expect(":")
            body = self.fof_unit()
            return ("all" if q == "!" else "ex", vs, body)
        if self.is_op("("):
            self.next()
            f = self.fof_logic()
            self.expect(")")
            return f
        return self.atomic()

    def var(self):
        t = self.next()
        if t[0] != "upper":
            self.i -= 1
            self.err("expected a variable")
        if self.is_op(":"):
            if self.peek(1)[0] in ("dollar", "lower"):
                self.err("typed variables are not supported")
        return t[1]

    # -- cnf formulas
    def cnf_formula(self):
        if self.is_op("("):
            self.next()
            c = self.disjunction()
            self.expect(")")
            return c
        return self.disjunction()

    def disjunction(self):
        lits = [self.literal()]
        while self.is_op("|"):
            self.next()
            lits.append(self.literal())
        return lits

    def literal(self):
        if self.is_op("~"):
            self.next()
            a = self.atomic()
            if a[0] == "not":
                self.err("~ applied to a negative equation")
            return ("not", a)
        return self.atomic()

    # -- general terms (annotations): parsed and discarded / kept raw
    def general_term(self):
        if self.is_op("["):
            self.next()
            items = []
            if not self.is_op("]"):
                items.append(self.general_term())
                while self.is_op(","):
                    self.next()
                    items.append(self.general_term())
            self.expect("]")
            return ("list", items)
        t = self.next()
        if t[0] in ("lower", "sq", "dollar", "upper", "dq", "real"):
            if self.is_op("("):
                self.next()
                items = [self.general_term()]
                while self.is_op(","):
                    self.next()
                    items.append(self.general_term())
                self.expect(")")
                node = ("app", t[1], items)
            else:
                node = ("word", t[1])
            if self.is_op(":"):
                self.next()
                return ("colon", node, self.general_term())
            return node
        self.i -= 1
        self.err("bad annotation term")

    # -- top level
    def tptp_input(self):
        """Yields ('include', file, selection|None) or
        ('formula', lang, name, role, ast, annotations)."""
        out = []
        while self.peek()[0] != "eof":
            t = self.next()
            if t[0] != "lower":
                self.i -= 1
                self.err("expected fof/cnf/include")
            if t[1] == "include":
                self.expect("(")
                f = self.next()
                if f[0] != "sq":
                    self.i -= 1
                    self.err("expected a file name")
                sel = None
                if self.is_op(","):
                    self.next()
                    self.expect("[")
                    sel = [self.name()]
                    while self.is_op(","):
                        self.next()
                        sel.append(self.name())
                    self.expect("]")
                self.expect(")")
                self.expect(".")
                out.append(("include", f[1][1:-1], sel, t[2]))
                continue
            if t[1] not in ("fof", "cnf"):
                self.i -= 1
                self.err(f"unsupported language {t[1]!r} (only fof/cnf)")
            lang = t[1]
            self.expect("(")
            name = self.name()
            self.expect(",")
            rt = self.next()
            if rt[0] != "lower":
                self.i -= 1
                self.err("expected a role")
            role = rt[1]
            self.expect(",")
            ast = self.fof_logic() if lang == "fof" else self.cnf_formula()
            annots = None
            if self.is_op(","):
                self.next()
                annots = [self.general_term()]
                while self.is_op(","):
                    self.next()
                    annots.append(self.general_term())
            self.expect(")")
            self.expect(".")
            out.append(("formula", lang, name, role, ast, annots, t[2]))
        return out

DEFINED_FUNCTORS = set()   # no arithmetic in fof/cnf here

# ---------------------------------------------------------------- semantics checks

def term_vars(t, acc):
    if t[0] == "var":
        acc.add(t[1])
    else:
        for a in t[2]:
            term_vars(a, acc)
    return acc

def check_closed(f, bound=frozenset()):
    """Return the set of free variables of fof formula f."""
    k = f[0]
    if k == "pred":
        s = set()
        for a in f[2]:
            term_vars(a, s)
        return s - bound
    if k == "eq":
        s = set()
        term_vars(f[1], s)
        term_vars(f[2], s)
        return s - bound
    if k in ("true", "false"):
        return set()
    if k == "not":
        return check_closed(f[1], bound)
    if k in ("and", "or"):
        s = set()
        for g in f[1]:
            s |= check_closed(g, bound)
        return s
    if k in ("all", "ex"):
        return check_closed(f[2], bound | set(f[1]))
    return check_closed(f[1], bound) | check_closed(f[2], bound)

def clause_vars(lits):
    s = set()
    for l in lits:
        a = l[1] if l[0] == "not" else l
        if a[0] == "pred":
            for t in a[2]:
                term_vars(t, s)
        elif a[0] == "eq":
            term_vars(a[1], s)
            term_vars(a[2], s)
    return s

def symbols(f, acc):
    """Collect (name, arity, kind) of fof formula / clause (list of lits)."""
    if isinstance(f, list):
        for l in f:
            symbols(l, acc)
        return acc
    k = f[0]
    if k == "pred":
        acc.add((f[1], len(f[2]), "pred"))
        for a in f[2]:
            _tsyms(a, acc)
    elif k == "eq":
        _tsyms(f[1], acc)
        _tsyms(f[2], acc)
    elif k == "not":
        symbols(f[1], acc)
    elif k in ("and", "or"):
        for g in f[1]:
            symbols(g, acc)
    elif k in ("all", "ex"):
        symbols(f[2], acc)
    elif k in ("true", "false"):
        pass
    else:
        symbols(f[1], acc)
        symbols(f[2], acc)
    return acc

def _tsyms(t, acc):
    if t[0] == "fun":
        acc.add((t[1], len(t[2]), "fun"))
        for a in t[2]:
            _tsyms(a, acc)

# ---------------------------------------------------------------- printing

def pterm(t):
    if t[0] == "var":
        return t[1]
    if not t[2]:
        return t[1]
    return t[1] + "(" + ",".join(pterm(a) for a in t[2]) + ")"

def pform(f):
    k = f[0]
    if k == "pred":
        return f[1] if not f[2] else f[1] + "(" + ",".join(pterm(a) for a in f[2]) + ")"
    if k == "eq":
        return pterm(f[1]) + " = " + pterm(f[2])
    if k == "true":
        return "$true"
    if k == "false":
        return "$false"
    if k == "not":
        if f[1][0] == "eq":
            return pterm(f[1][1]) + " != " + pterm(f[1][2])
        if f[1][0] in ("pred", "true", "false"):
            return "~ " + pform(f[1])      # cnf forbids "~ (atom)"
        return "~ (" + pform(f[1]) + ")"
    if k == "and":
        return "(" + " & ".join(pform(g) for g in f[1]) + ")"
    if k == "or":
        return "(" + " | ".join(pform(g) for g in f[1]) + ")"
    if k in ("all", "ex"):
        q = "!" if k == "all" else "?"
        return "(" + q + " [" + ",".join(f[1]) + "] : " + pform(f[2]) + ")"
    op = {"imp": "=>", "iff": "<=>", "xor": "<~>", "nor": "~|", "nand": "~&"}[k]
    return "(" + pform(f[1]) + " " + op + " " + pform(f[2]) + ")"

def pclause(lits):
    return "(" + " | ".join(pform(l) for l in lits) + ")"

def clause_as_fof(lits):
    vs = sorted(clause_vars(lits))
    body = pclause(lits)
    return "(! [" + ",".join(vs) + "] : " + body + ")" if vs else body

# ---------------------------------------------------------------- problems

ASSERT_ROLES = {"axiom", "hypothesis", "definition", "assumption", "lemma",
                "theorem", "corollary", "negated_conjecture", "plain"}

def load_problem(path, tptp_root):
    """Parse a TPTP problem, resolving includes.  Returns a list of dicts
    {name, lang, role, ast, src} in file order.  Raises ParseError."""
    out = []
    _load(path, tptp_root, None, out, set())
    names = {}
    for f in out:
        if f["name"] in names:
            raise ParseError(f"duplicate formula name {f['name']}")
        names[f["name"]] = f
        if f["role"] not in ASSERT_ROLES and f["role"] != "conjecture":
            raise ParseError(f"unsupported role {f['role']} for {f['name']}")
        if f["lang"] == "fof":
            fv = check_closed(f["ast"])
            if fv:
                raise ParseError(f"free variables {sorted(fv)} in fof {f['name']}")
    if sum(1 for f in out if f["role"] == "conjecture") > 1:
        raise ParseError("more than one conjecture")
    return out

def _load(path, root, selection, out, stack):
    if path in stack:
        raise ParseError(f"include cycle at {path}")
    with open(path) as fh:
        text = fh.read()
    items = Parser(tokenize(text, path), path).tptp_input()
    for it in items:
        if it[0] == "include":
            inc = os.path.join(root, it[1])
            if not os.path.exists(inc):
                raise ParseError(f"{path}:{it[3]}: cannot find include {it[1]}")
            _load(inc, root, it[2], out, stack | {path})
        else:
            _, lang, name, role, ast, annots, line = it
            if selection is not None and name not in selection:
                continue
            out.append({"name": name, "lang": lang, "role": role, "ast": ast,
                        "src": f"{os.path.basename(path)}:{line}"})
