# Curating the TPTP with an LLM: solutions and corrections

This repository is the output of an experiment in **curating the [TPTP problem library](https://tptp.org)**
with a large language model: finding mistakes in the library, settling problems whose status is
unknown, and adding solutions for problems that no automated theorem prover has solved. The LLM agent
(Claude Opus 5.5, Anthropic, working in the Claude Code harness) wrote every proof and model itself;
**nothing is trusted on the LLM's word**: every proof is checked step by step by an independent proof
checker, the TPTP World's derivation verifier [GDV](https://tptp.org/cgi-bin/SystemOnTSTP) (five very
large Ramsey proofs have so far been checked step by step with E only), and every model is checked in
the Lean 4 proof assistant.

**Findings in one sentence:** for 225 of the hardest TPTP problems (rating 1.00), 224 of which had no
solution in the TSTP, we give checked proofs or models, which settle 58 problems of status Unknown,
show that 30 further Unknown problems are non-theorems only because of a missing axiom or hypothesis,
and indicate that 10 recorded statuses are wrong (see [STATUS_CHANGES.md](STATUS_CHANGES.md)).

## What was investigated, and why

* **Problems with rating 1.00**: no system in the TPTP's own evaluation solved them within its time
  limit. These are the problems where a solution adds the most, and where mistakes in the library
  are most likely to go unnoticed.
* **Problems with status Unknown or Open**: nobody knows whether they are theorems. For these the
  agent tried both directions, a proof and a (typically infinite) model.
* **Problems without a solution in the [TSTP](https://tptp.org/TSTP)** (the TPTP's library of
  solutions). The files here use the TSTP's own layout, so they can be added to it directly.

## Why could no prover find these proofs?

Many of the proofs are small: of the 148 proofs other than the Ramsey proofs, 34 have at most 10
steps and the median is 28 steps (the Mizar proofs have a median of 10 steps). What made them hard
for automated provers is mostly the *encoding*, not the mathematics:

* **Large axiom sets.** The Mizar (MPTP) problems include hundreds or thousands of axioms; the proof
  needs a handful. Each step of our proofs cites only the axioms it uses, and then E proves it in
  milliseconds; with all axioms it times out.
* **Missing lemmas, and cuts.** Some problems need an intermediate lemma (or a new defined predicate)
  that a saturation prover will not invent. The Orevkov formulas ([SYN986+1.005](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/SYN/SYN986%2B1.005.p) and its variants) need a witness with
  2^65536 successor steps without such lemmas; with a hierarchy of defined predicates every step
  checks in 0.02 s.
* **Weak equality encodings.** The field problems (FLD) use a relation "equalish" instead of equality,
  without congruence axioms for some operations, so equational reasoning has to be rebuilt by hand.
* **Size.** The Ramsey problems need thousands of ground steps (up to 97,662 for r(4,4) = 18), which
  the agent generated with a small program.
* **Only infinite models.** Finite model finders cannot find a model when every model is infinite;
  here the model is given in Lean (e.g. the rationals, the integers, or a model of NBG set theory).

## Layout

The layout follows the TSTP solution library:

```
Solutions/<DOMAIN>/<PROBLEM>/ClaudeOpus---5.5.<RESULT>-<OUTPUT>.s
```

| Code | Meaning |
|---|---|
| `THM-Ref`, `UNS-Ref`, `UNS-CRf` | Theorem / Unsatisfiable, with a refutation (CRf: CNF only) in TSTP derivation format |
| `SAT-Mod`, `CSA-Mod` | Satisfiable / CounterSatisfiable, with a model given as a Lean 4 development |
| `SAT-FMo` | Satisfiable, with a finite model as a TPTP finite interpretation (printed by Lean from the Lean model) |

[STATUS_CHANGES.md](STATUS_CHANGES.md) lists every problem for which the verified result differs from
the status in TPTP v10.0.0: first the statuses that appear to be wrong, then the problems whose
formulation appears to be buggy, then the Unknown problems that are now settled.

## The files

Every file has a TSTP-style header: problem, result (`% SZS status`), how the solution was
verified, a suggested status change where applicable (`% Status`), a short account of how it was
found (`% Comments`), and how to check it (`% Checking`).

**Proofs** are derivations in the TPTP language. Each derived formula has the inference record
`inference(lemma,[status(thm)],[parents])`: it is a logical consequence of its parents (not an
instance of a fixed calculus rule). Definition steps (`role definition`, `introduced(definition,...)`)
introduce a fresh, non-recursive predicate symbol and are conservative. (They occur in only five
proofs: [SYN986+1.005](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/SYN/SYN986%2B1.005.p), [SYN986+1.006](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/SYN/SYN986%2B1.006.p), [SYN986-10.005](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/SYN/SYN986-10.005.p), [SYN986-10.006](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/SYN/SYN986-10.006.p) and [GRA175-1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRA/GRA175-1.p). Note that GDV checks that a defined symbol is
new, but in our tests it also accepted a circular definition such as `q <=> ~q`; our own checker rejects
those, and all 27 definitions here are non-circular.) Checking:

* every proof was checked step by step with E 3.2.5 (each step as an entailment problem from its
  parents), and
* every proof except the five very large Ramsey proofs ([GRA122-1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRA/GRA122-1.p), [GRA122+1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRA/GRA122%2B1.p), [GRA123-1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRA/GRA123-1.p), [GRA123+1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRA/GRA123%2B1.p),
  [GRA125-1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRA/GRA125-1.p)) was verified with [GDV](https://tptp.org/cgi-bin/SystemOnTSTP) (leaves against the
  problem, each inference with Vampire 5.1, or E 3.2.5 for a few steps). The header says which.

**Finite models** (three problems: [GRP738-1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRP/GRP738-1.p), [GRP739-1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRP/GRP739-1.p), [GRP740-1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRP/GRP740-1.p)) are also given as TPTP finite
interpretations (`SAT-FMo` files). These were not written by hand: Lean evaluated the operations of the
certified Lean model on every domain element and printed the tables, which were then checked again by
evaluating every clause of the problem over the domain.

**Models** in Lean are mostly infinite, so they cannot be written as finite TPTP interpretations. The Lean
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

## Checking the models: what you need

Everything specific to these models is in this repository; the model files import only
`Statement` (generated by the kit), Lean's own library, and Mathlib (34 NBG models).

Files in `Tools/`:

| File | Purpose |
|---|---|
| `check_lean_model.sh` | the checker: `Tools/check_lean_model.sh PROBLEM SOLUTION.s` |
| `extract_lean.sh` | prints the Lean source embedded in a solution file |
| `tptp2lean.py`, `tptp.py` | translate the TPTP problem into `Statement.lean` (TPTP parser included) |
| `mathlib/` | Lake project pinning Mathlib v4.35.0 (`lakefile.toml`, `lake-manifest.json`, `lean-toolchain`) |

External requirements:

* **Python 3** (standard library only).
* **TPTP v10.0.0**, with `$TPTP` pointing at it. `tptp2lean.py` runs `$TPTP/Scripts/tptp4X`
  (shipped with the TPTP distribution) to expand `include`s.
* **Lean 4.35.0**, e.g. through [elan](https://github.com/leanprover/elan); the checker calls
  `lean +leanprover/lean4:v4.35.0` (override with `LEAN=...`).
* **Mathlib v4.35.0**, only for models with `import Mathlib`: run `lake exe cache get` once in
  `Tools/mathlib` (downloads about 5 GB of prebuilt files), or set `MATHLIB` to an existing
  Lake project with that Mathlib version built.

All 71 models were checked with these tools. Most take seconds; the
largest, [GRP738-1](https://seetptp.tptp.org/file/TPTPWorld/TPTP/Problems/GRP/GRP738-1.p) (a 32-element loop checked by `decide`), takes about 2.5 minutes and 11 GB of memory.

## How the solutions were found

The model worked out each mathematical argument itself and wrote the proof as a chain of lemmas
(sometimes by writing a program that emits the proof, e.g. for the Ramsey and Towers of Hanoi
problems). E was used only as a step checker and as a lemma oracle with short time limits. Nothing
was trusted until it was checked as described above. Details are in the paper
"Curating the TPTP using an LLM" (K. Claessen, in preparation).

Contact: Koen Claessen, koen@chalmers.se
