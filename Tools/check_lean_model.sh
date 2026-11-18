#!/bin/bash
# usage: Tools/check_lean_model.sh PROBLEM SOLUTION.s
#   env: TPTP     = root of the TPTP library (default ./TPTP); needs $TPTP/Scripts/tptp4X
#        LEAN     = lean command (default: lean +leanprover/lean4:v4.35.0 via elan)
#        MATHLIB  = a Lake project with Mathlib v4.35.0 built (default Tools/mathlib; run
#                   'lake exe cache get' there once), only needed when the model imports Mathlib
# Regenerates Statement.lean from the TPTP problem, extracts Model.lean from the solution file,
# rejects constructs that could bypass the check (Tools/lint_model.py), compiles both, and prints the
# axioms that `sat` depends on (accepted: propext, Classical.choice, Quot.sound).
set -u
HERE=$(cd "$(dirname "$0")" && pwd)
P=$1; S=$(cd "$(dirname "$2")" && pwd)/$(basename "$2")
export TPTP=${TPTP:-TPTP}; TPTP=$(cd "$TPTP" && pwd)
LEAN=${LEAN:-"lean +leanprover/lean4:v4.35.0"}
MATHLIB=$(cd "${MATHLIB:-$HERE/mathlib}" && pwd)
W=$(mktemp -d); trap 'rm -rf "$W"' EXIT
python3 "$HERE/tptp2lean.py" "$TPTP/Problems/${P:0:3}/$P.p" > "$W/Statement.lean" || { echo "REJECT: cannot translate problem"; exit 1; }
"$HERE/extract_lean.sh" "$S" > "$W/Model.lean"
python3 "$HERE/lint_model.py" "$W/Model.lean" || exit 1   # forbidden constructs (see lint_model.py)
cd "$W"
$LEAN -o Statement.olean Statement.lean || { echo "REJECT: statement does not compile"; exit 1; }
SH=$(sha256sum Statement.olean Statement.lean)   # must be unchanged after compiling the model
LP=.
if grep -q '^import Mathlib' Model.lean; then LP=.:$(cd "$MATHLIB" && lake env printenv LEAN_PATH); fi
out=$(LEAN_PATH=$LP $LEAN -o Model.olean Model.lean 2>&1)
echo "$out" | grep -q error && { echo "$out" | grep -A10 error | head -30; echo "REJECT: model does not compile"; exit 1; }
[ "$(sha256sum Statement.olean Statement.lean)" = "$SH" ] || { echo "REJECT: compiling the model changed the statement"; exit 1; }
printf 'import Statement\nimport Model\nexample : TPTP.Satisfiable ∨ TPTP.Satisfiable1 := by first | exact Or.inl sat | exact Or.inr sat\n#print axioms sat\n' > check.lean
out=$(LEAN_PATH=$LP $LEAN check.lean 2>&1)
echo "$out" | grep -q error && { echo "$out" | head -20; echo "REJECT"; exit 1; }
ax=$(echo "$out" | grep "depends on axioms\|does not depend on any axioms")
bad=$(echo "$ax" | grep "depends on axioms" | sed 's/.*\[//; s/\].*//' | tr ',' '\n' | tr -d ' ' | grep -vxE 'propext|Classical.choice|Quot.sound|')
[ -n "$bad" ] && { echo "REJECT: non-standard axioms: $bad"; exit 1; }
[ -z "$ax" ] && { echo "REJECT: no axiom report"; exit 1; }
echo "$P: model CERTIFIED ($ax)"
