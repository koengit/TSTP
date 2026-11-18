#!/bin/bash
# usage: Fixed/NUM004-0/check.sh PROBLEM      (PROBLEM = NUM289-1 or NUM219-1)
#   env: TPTP = root of TPTP v10.0.0 (default ./TPTP); LEAN, MATHLIB as for Tools/check_lean_model.sh
# Builds a temporary TPTP tree identical to $TPTP except that Axioms/NUM004-0.ax is the fixed version in
# this folder (rest_of4 also requires ~member(V,universal_class)), then checks the model with
# Tools/check_lean_model.sh against that tree.
HERE=$(cd "$(dirname "$0")" && pwd); KIT=$(cd "$HERE/../.." && pwd)
T=$(cd "${TPTP:-TPTP}" && pwd)
W=$(mktemp -d); trap 'rm -rf "$W"' EXIT
mkdir "$W/Axioms"; ln -s "$T/Problems" "$W/Problems"; ln -s "$T/Scripts" "$W/Scripts"
for a in "$T"/Axioms/*; do ln -s "$a" "$W/Axioms/"; done
rm "$W/Axioms/NUM004-0.ax"; cp "$HERE/NUM004-0.ax" "$W/Axioms/"
cd "$KIT" && TPTP="$W" Tools/check_lean_model.sh "$1" "$HERE/$1.SAT-Mod.s"
