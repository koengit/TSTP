#!/usr/bin/env python3
"""Check a TPTP finite interpretation (SAT-FMo / CSA-FMo file) against its problem, independently of Lean.

usage: Tools/check_finite_model.py PROBLEM SOLUTION.s
  env: TPTP = root of the TPTP library (default ./TPTP)

Checks (exit 0 = CERTIFIED, 1 = REJECT):
  * the interpretation-domains formula lists the domain elements "d0".."dN-1" (distinct objects);
  * every function symbol of the problem has exactly one value for every tuple of domain elements, and every
    predicate symbol exactly one truth value (totality and functionality of the tables);
  * every formula of the problem (axioms, and the negated conjecture for a CounterSatisfiable problem) holds
    when evaluated over the domain, by brute force over all variable assignments.
"""
import itertools, os, re, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import tptp

def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    P, sol = sys.argv[1], sys.argv[2]
    T = os.path.abspath(os.environ.get("TPTP", "TPTP"))
    txt = open(sol).read()
    m = re.search(r"^% SZS output start \w+.*?\n(.*)^% SZS output end", txt, re.S | re.M)
    if not m:
        sys.exit("REJECT: no SZS output block")
    block = m.group(1)
    formulas = re.findall(r"^fof\((\w+),\s*([\w-]+),(.*?)\)\s*\.\s*$", block, re.S | re.M)
    dom = [f for f in formulas if f[1] == "interpretation-domains"]
    if len(dom) != 1:
        sys.exit("REJECT: expected one interpretation-domains formula")
    elems = re.findall(r'X\s*=\s*"(d\d+)"', dom[0][2])
    N = len(elems)
    if elems != [f"d{i}" for i in range(N)] or N == 0:
        sys.exit("REJECT: domain must be \"d0\"..\"dN-1\"")
    fun, pred = {}, {}
    for name, role, body in formulas:
        if role == "interpretation-domains":
            continue
        if role != "interpretation-mappings":
            sys.exit(f"REJECT: unexpected role {role} in {name}")
        body = re.sub(r"\s+", "", body).strip("()")
        for conj in body.split("&"):
            conj = conj.strip("()")
            mf = re.fullmatch(r'(\w+)(?:\(((?:"d\d+",?)*)\))?="(d\d+)"', conj)
            mp = re.fullmatch(r'(~?)(\w+)(?:\(((?:"d\d+",?)*)\))?', conj)
            if mf:
                f, args, val = mf.group(1), mf.group(2), mf.group(3)
                key = (f, tuple(int(a.strip('"d')) for a in args.split(",")) if args else ())
                if key in fun:
                    sys.exit(f"REJECT: two values for {f}{key[1]}")
                fun[key] = int(val[1:])
            elif mp:
                neg, p, args = mp.group(1), mp.group(2), mp.group(3)
                key = (p, tuple(int(a.strip('"d')) for a in args.split(",")) if args else ())
                if key in pred:
                    sys.exit(f"REJECT: two truth values for {p}{key[1]}")
                pred[key] = not neg
            else:
                sys.exit(f"REJECT: cannot read mapping {conj[:80]} in {name}")
    for v in list(fun.values()):
        if not 0 <= v < N:
            sys.exit("REJECT: value outside the domain")
    prob = tptp.load_problem(os.path.join(T, "Problems", P[:3], P + ".p"), T)
    syms = set()
    for f in prob:
        tptp.symbols(f["ast"], syms)
    for name, arity, kind in syms:
        table = fun if kind == "fun" else pred
        for args in itertools.product(range(N), repeat=arity):
            if (name, args) not in table:
                sys.exit(f"REJECT: {name}{args} has no value (table not total)")

    def ev(t, env):
        if t[0] == "var":
            return env[t[1]]
        return fun[(t[1], tuple(ev(x, env) for x in t[2]))]

    def holds(f, env):
        k = f[0]
        if k == "pred": return pred[(f[1], tuple(ev(x, env) for x in f[2]))]
        if k == "eq": return ev(f[1], env) == ev(f[2], env)
        if k == "true": return True
        if k == "false": return False
        if k == "not": return not holds(f[1], env)
        if k == "and": return all(holds(g, env) for g in f[1])
        if k == "or": return any(holds(g, env) for g in f[1])
        if k == "imp": return (not holds(f[1], env)) or holds(f[2], env)
        if k == "iff": return holds(f[1], env) == holds(f[2], env)
        if k in ("all", "ex"):
            q = all if k == "all" else any
            return q(holds(f[2], {**env, **dict(zip(f[1], vs))}) for vs in itertools.product(range(N), repeat=len(f[1])))
        raise ValueError(k)

    count = 0
    for f in prob:
        ast = f["ast"]
        if f["lang"] == "cnf":
            vs = sorted(tptp.clause_vars(ast))
            ok = all(any(holds(l, dict(zip(vs, a))) for l in ast) for a in itertools.product(range(N), repeat=len(vs)))
        else:
            ok = holds(ast, {})
            if f["role"] == "conjecture":
                ok = not ok
        if not ok:
            sys.exit(f"REJECT: {f['name']} does not hold in the interpretation")
        count += 1
    print(f"{P}: finite model CERTIFIED ({N} elements, {count} formulas checked)")

if __name__ == "__main__":
    main()
