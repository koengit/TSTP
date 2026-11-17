#!/bin/bash
# usage: Tools/extract_lean.sh SOLUTION.s > Model.lean
# Prints the Lean source embedded between the SZS output markers (lines prefixed with "% ").
sed -n '/^% SZS output start Model/,/^% SZS output end Model/{/^% SZS output/d;s/^% \{0,1\}//;p}' "$1"
