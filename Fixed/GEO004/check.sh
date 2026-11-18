#!/bin/bash
# usage: Fixed/GEO004/check.sh [PROBLEM]   (default GEOFIX-ALL, the axioms alone; or e.g. GEO158+1)
#   env: TPTP = root of TPTP v10.0.0 (default ./TPTP); LEAN, MATHLIB as for Tools/check_lean_model.sh
# Builds a temporary TPTP tree identical to $TPTP except that Axioms/GEO004+0.ax and GEO004-0.ax are the fixed
# versions in this folder (sum_defn guarded by ? [P] : meet(P,C1,C2)) and Problems/GEO/GEOFIX-ALL.p is the
# axioms-only problem of this folder, then checks the Lean model with Tools/check_lean_model.sh.
HERE=$(cd "$(dirname "$0")" && pwd); KIT=$(cd "$HERE/../.." && pwd)
T=$(cd "${TPTP:-TPTP}" && pwd)
W=$(mktemp -d); trap 'rm -rf "$W"' EXIT
mkdir -p "$W/Axioms" "$W/Problems/GEO"; ln -s "$T/Scripts" "$W/Scripts"
for a in "$T"/Axioms/*; do ln -s "$a" "$W/Axioms/"; done
for a in GEO004+0.ax GEO004-0.ax; do rm "$W/Axioms/$a"; cp "$HERE/$a" "$W/Axioms/"; done
for f in "$T"/Problems/GEO/*.p; do ln -s "$f" "$W/Problems/GEO/"; done
cp "$HERE/GEOFIX-ALL.p" "$W/Problems/GEO/"
P=${1:-GEOFIX-ALL}
cd "$KIT" && TPTP="$W" Tools/check_lean_model.sh "$P" "$HERE/$P.SAT-Mod.s"
