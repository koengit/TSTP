#!/bin/bash
# usage: Tools/check_lean_proof.sh PROBLEM PROOF.lean [LIB.lean ...]
#   e.g. Tools/check_lean_proof.sh GRA125-1 Lean/Ramsey/GRA125-1.lean Lean/Ramsey/Ramsey.lean
#   env: TPTP, LEAN, MATHLIB as for Tools/check_lean_model.sh
# Checks a Lean proof that a TPTP problem has no model: regenerates Statement.lean from the TPTP problem
# with Tools/tptp2lean.py, lints every Lean file (Tools/lint_model.py), compiles the libraries (in the order
# given) and the proof, and accepts only if
#     theorem unsat : ¬ TPTP.SatisfiableIn.{u}          (no model, in any universe)
# compiles and depends on no axioms beyond propext, Classical.choice and Quot.sound.  For a problem with a
# conjecture, the statement includes the negated conjecture, so this certifies Theorem.
set -u
HERE=$(cd "$(dirname "$0")" && pwd)
P=$1; PROOF=$(cd "$(dirname "$2")" && pwd)/$(basename "$2"); shift 2
export TPTP=${TPTP:-TPTP}; TPTP=$(cd "$TPTP" && pwd)
LEAN=${LEAN:-"lean +leanprover/lean4:v4.35.0"}
MATHLIB=$(cd "${MATHLIB:-$HERE/mathlib}" && pwd)
W=$(mktemp -d); trap 'rm -rf "$W"' EXIT
python3 "$HERE/tptp2lean.py" "$TPTP/Problems/${P:0:3}/$P.p" > "$W/Statement.lean" || { echo "REJECT: cannot translate problem"; exit 1; }
for f in "$@"; do cp "$f" "$W/"; done
cp "$PROOF" "$W/Proof.lean"
for f in "$W"/*.lean; do [ "$(basename "$f")" = Statement.lean ] || python3 "$HERE/lint_model.py" "$f" || exit 1; done
LP=.:$(cd "$MATHLIB" && lake env printenv LEAN_PATH)
cd "$W"
$LEAN -o Statement.olean Statement.lean || { echo "REJECT: statement does not compile"; exit 1; }
SH=$(sha256sum Statement.olean Statement.lean)   # must be unchanged after compiling the proof
for f in "$@"; do
  m=$(basename "$f" .lean)
  out=$(LEAN_PATH=$LP $LEAN -o "$m.olean" "$m.lean" 2>&1)
  echo "$out" | grep -q error && { echo "$out" | grep -A10 error | head -30; echo "REJECT: $m.lean does not compile"; exit 1; }
done
out=$(LEAN_PATH=$LP $LEAN -o Proof.olean Proof.lean 2>&1)
echo "$out" | grep -q error && { echo "$out" | grep -A10 error | head -30; echo "REJECT: proof does not compile"; exit 1; }
[ "$(sha256sum Statement.olean Statement.lean)" = "$SH" ] || { echo "REJECT: compiling the proof changed the statement"; exit 1; }
# kernel replay with leanchecker (shipped with the Lean toolchain; LEANCHECKER=none skips)
LEANCHECKER=${LEANCHECKER:-"leanchecker +leanprover/lean4:v4.35.0"}
KREPLAY="not run (LEANCHECKER=none)"
if [ "$LEANCHECKER" != none ]; then
  for m in Statement $(for f in "$@"; do basename "$f" .lean; done) Proof; do
    kout=$(LEAN_PATH=$LP $LEANCHECKER $m 2>&1) || { echo "$kout" | tail -5; echo "REJECT: kernel replay (leanchecker) failed for $m"; exit 1; }
  done
  KREPLAY="kernel replay OK"
fi
printf 'import Statement\nimport Proof\nexample : ¬ TPTP.SatisfiableIn.{0} ∧ ¬ TPTP.SatisfiableIn.{1} := ⟨unsat, unsat⟩\n#print axioms unsat\n' > check.lean
out=$(LEAN_PATH=$LP $LEAN check.lean 2>&1)
echo "$out" | grep -q error && { echo "$out" | head -20; echo "REJECT"; exit 1; }
ax=$(echo "$out" | grep "depends on axioms\|does not depend on any axioms")
bad=$(echo "$ax" | grep "depends on axioms" | sed 's/.*\[//; s/\].*//' | tr ',' '\n' | tr -d ' ' | grep -vxE 'propext|Classical.choice|Quot.sound|')
[ -n "$bad" ] && { echo "REJECT: non-standard axioms: $bad"; exit 1; }
[ -z "$ax" ] && { echo "REJECT: no axiom report"; echo "$out"; exit 1; }
echo "$P: no model (Unsatisfiable/Theorem) CERTIFIED in Lean ($ax; $KREPLAY)"
