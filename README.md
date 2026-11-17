# TSTP solutions by Claude Opus 5.5

Solutions to problems of the [TPTP problem library](https://tptp.org) (v10.0.0), produced by the
LLM agent Claude Opus 5.5 (Anthropic) working in the Claude Code harness, and independently
checked. The layout follows the [TSTP solution library](https://tptp.org/TSTP), so that the files
can be imported there directly:

```
Solutions/<DOMAIN>/<PROBLEM>/ClaudeOpus---5.5.<RESULT>-<OUTPUT>.s
```

| Code | Meaning |
|---|---|
| `THM-Ref`, `UNS-Ref`, `UNS-CRf` | Theorem / Unsatisfiable, with a refutation (CRf: CNF only) in TSTP derivation format |
| `SAT-Mod`, `CSA-Mod` | Satisfiable / CounterSatisfiable, with a model given as a Lean 4 development |

All problems here had rating 1.00 (no system solved them in the TPTP evaluation), and almost
none had a solution in the TSTP. [STATUS_CHANGES.md](STATUS_CHANGES.md) lists the problems for
which our verified result differs from the status in TPTP v10.0.0 (mostly Unknown problems that are
now settled; a few where the recorded status appears to be wrong).

## The files

Every file has a TSTP-style header: problem, result (`% SZS status`), how the solution was
verified, a suggested status change where applicable (`% Status`), a short account of how it was
found (`% Comments`), and how to check it (`% Checking`).

**Proofs** are derivations in the TPTP language. Each derived formula has the inference record
`inference(lemma,[status(thm)],[parents])`: it is a logical consequence of its parents (not an
instance of a fixed calculus rule). Definition steps (`role definition`, `introduced(definition,...)`)
introduce a fresh, non-recursive predicate symbol and are conservative. Checking:

* every proof was checked step by step with E 3.2.5 (each step as an entailment problem from its
  parents), and
* every proof except the five very large Ramsey proofs (GRA122-1, GRA122+1, GRA123-1, GRA123+1,
  GRA125-1) was verified with [GDV](https://tptp.org/cgi-bin/SystemOnTSTP) (leaves against the
  problem, each inference with Vampire 5.1, or E 3.2.5 for a few steps). The header says which.

**Models** are mostly infinite, so they cannot be written as finite TPTP interpretations. The Lean
source is embedded between the `% SZS output start Model` and `% SZS output end Model` lines, each
line prefixed with `% ` (so the file is still valid TPTP). A model is checked against a Lean
statement that is generated mechanically from the TPTP problem, never trusted from the file:

```
export TPTP=/path/to/TPTP-v10.0.0          # needs $TPTP/Scripts/tptp4X
Tools/check_lean_model.sh SET086-6 Solutions/SET/SET086-6/ClaudeOpus---5.5.SAT-Mod.s
```

The script extracts the model (`Tools/extract_lean.sh`), translates the problem into
`Statement.lean` (`Tools/tptp2lean.py`: a structure over an arbitrary type with the problem's
symbols, and `Satisfiable` = there is such a structure satisfying all clauses/formulae, including the
negated conjecture), rejects `sorry`, `axiom`, `opaque`, `native_decide`, `extern` and
`implemented_by`, compiles both with Lean 4.35.0, and prints the axioms that `sat` depends on (only
`propext`, `Classical.choice` and `Quot.sound` are accepted). Models that import Mathlib need
Mathlib v4.35.0: run `lake exe cache get` once in `Tools/mathlib` (or point `MATHLIB` at a built
Mathlib project).

## How the solutions were found

The model worked out each mathematical argument itself and wrote the proof as a chain of lemmas
(sometimes by writing a program that emits the proof, e.g. for the Ramsey and Towers of Hanoi
problems). E was used only as a step checker and as a lemma oracle with short time limits. Nothing
was trusted until it was checked as described above. Details are in the paper
"Curating the TPTP using an LLM" (K. Claessen, in preparation).

Contact: Koen Claessen, koen@chalmers.se
