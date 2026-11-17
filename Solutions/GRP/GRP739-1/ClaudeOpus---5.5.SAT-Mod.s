%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GRP739-1 : TPTP v10.0.0. Released v4.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0: `sat : TPTP.Satisfiable` (or Satisfiable1) compiles against a
%            Statement.lean generated mechanically from the TPTP file, and depends only on the axioms
%            propext, Classical.choice, Quot.sound
% Status   : agrees with TPTP v10.0.0 (Satisfiable)

% Comments : Model written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness, as a Lean
%            4 development. The model is finite (15 elements); it is given in Lean, with every clause
%            checked by `decide`, rather than as a TPTP finite interpretation. Model description:
%            GRP739-1 (proper commutative A-loop of odd order): a nonassociative commutative
%            automorphic loop of order 15 on Z_3 × Z_5, element i ↔ (i / 5, i % 5): (a,x)(b,y) =
%            (a+b, α(a,b) x + α(b,a) y), α(a,b) = 1 if a = 0 or b = 0, 2 if a = b ≠ 0, 4 otherwise
%            (all mod 3 resp. mod 5). Every clause is checked by `decide` over the 15 elements.
% Checking : Tools/check_lean_model.sh GRP739-1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for GRP739-1
% SZS output start Model for GRP739-1
% import Statement
% open TPTP
% set_option maxRecDepth 100000
% set_option maxHeartbeats 0
%
% /-! GRP739-1 (proper commutative A-loop of odd order): a nonassociative commutative
% automorphic loop of order 15 on Z_3 × Z_5, element i ↔ (i / 5, i % 5):
%   (a,x)(b,y) = (a+b, α(a,b) x + α(b,a) y),
%   α(a,b) = 1 if a = 0 or b = 0, 2 if a = b ≠ 0, 4 otherwise  (all mod 3 resp. mod 5).
% Every clause is checked by `decide` over the 15 elements. -/
%
% abbrev M := Fin 15
% def al (a b : Nat) : Nat := if a = 0 ∨ b = 0 then 1 else if a = b then 2 else 4
% def mk (a x : Nat) : M := ⟨(a % 3) * 5 + x % 5, by omega⟩
% def mul (p q : M) : M :=
%   let a := p.val / 5; let x := p.val % 5; let b := q.val / 5; let y := q.val % 5
%   mk (a + b) (al a b * x + al b a * y)
% /-- the inverse of a unit mod 5 -/
% def inv5 (u : Nat) : Nat := if u = 2 then 3 else if u = 3 then 2 else u
% /-- left division: ld p r is the q with p*q = r -/
% def ld (p r : M) : M :=
%   let a := p.val / 5; let x := p.val % 5; let c := r.val / 5; let z := r.val % 5
%   let b := (c + 3 - a) % 3
%   mk b ((z + 5 * 4 - al a b * x) * inv5 (al b a))
% /-- the square root (squaring is a bijection in a loop of odd order) -/
% def sq (p : M) : M :=
%   let b := (2 * (p.val / 5)) % 3; let x := p.val % 5
%   mk b (if b = 0 then 3 * x else 4 * x)
%
% def I : Sig M where
%   f_mult := mul
%   f_ld := ld
%   f_s := sq
%   c_unit := 0
%   c_a := mk 0 1
%   c_b := mk 1 0
%   c_c := mk 1 0
%
% theorem sat : Satisfiable := by
%   refine ⟨M, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   all_goals decide
% SZS output end Model for GRP739-1
%------------------------------------------------------------------------------
