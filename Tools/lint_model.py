#!/usr/bin/env python3
"""Reject Lean model files that use constructs able to bypass or fool the checker.
usage: lint_model.py Model.lean   (exit 0 = ok; exit 1 and a message = rejected)

Rejected anywhere in the file (after removing comments and the one whitelisted tactic):
  axiom, opaque, sorry, native_decide, implemented_by, extern, unsafe, run_cmd, run_elab, run_meta,
  initialize, builtin_initialize, #eval, #exit, #reduce,
  set_option debug.*, macro, macro_rules, syntax, notation, infix(l/r), prefix, postfix, elab, elab_rules.
Whitelisted: the exact text of the `add_digit_bounds` tactic of the RDN models (whitelist file next to
this script), which only adds kernel-checked facts `digitOf_le x` to the context.
"""
import os, re, sys

src = open(sys.argv[1]).read()
wl = open(os.path.join(os.path.dirname(os.path.abspath(__file__)), "whitelist_add_digit_bounds.lean")).read()
src = src.replace(wl, "")
src = re.sub(r"/-.*?-/", " ", src, flags=re.S)        # block comments (incl. doc comments)
src = re.sub(r"--[^\n]*", " ", src)                    # line comments
bad = ["axiom", "opaque", "sorry", "native_decide", "implemented_by", "extern", "unsafe", "run_cmd",
       "run_elab", "run_meta", "initialize", "builtin_initialize", "macro", "macro_rules", "syntax", "notation",
       "infix", "infixl", "infixr", "prefix", "postfix", "elab", "elab_rules"]
# commands that run code while the model is compiled (e.g. could overwrite Statement.olean)
for w in ("#eval", "#exit", "#reduce"):
    if w in src:
        sys.exit(f"REJECT: forbidden construct `{w}` in model")
for w in bad:
    if re.search(r"(?<![\w.'])" + re.escape(w) + r"(?![\w'])", src):
        sys.exit(f"REJECT: forbidden construct `{w}` in model")
if re.search(r"set_option\s+debug\.", src):
    sys.exit("REJECT: forbidden construct `set_option debug.*` in model")
