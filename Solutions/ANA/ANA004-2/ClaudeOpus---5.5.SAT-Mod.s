%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : ANA004-2 : TPTP v10.0.0. Released v1.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0: `sat : TPTP.Satisfiable` (or Satisfiable1) compiles against a
%            Statement.lean generated mechanically from the TPTP file, and depends only on the axioms
%            propext, Classical.choice, Quot.sound
% Status   : SUGGESTED CHANGE: Unknown -> Satisfiable (TPTP v10.0.0 status is Unknown; this file
%            contains a Lean-checked model). PROBLEM FORMULATION: the clauses contain no triangle
%            inequality for absolute, and equalish has no substitution axioms, so the sum of the two
%            limits cannot be related to the two limits; the Lean model (ℚ) interprets add as +
%            except add(0,0) = −1. SUGGESTED FIX: add the triangle inequality and the substitution
%            axioms (as in ANA005-5, which is a theorem).

% Comments : Model written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness, as a Lean
%            4 development. The model is infinite, so it cannot be given as a TPTP finite
%            interpretation. Model description: ANA004-2 countermodel: ℚ with <, half x = x/2,
%            minimum x y = min x y / 2, equalish always true, absolute = |·|, a = b = l1 = l2 = 1, f
%            = g = 1, fp31 x = fp32 x = x, fp33 x = a, minus x = -x, and add = + except add 0 0 = -1
%            (allowed: axiom_3 only forces add 0 0 < x for x > 0). The problem lacks the triangle
%            inequality, so c_16's |add(add(f-l1),(g-l1))| = |add 0 0| = 1 is not < b.
% Checking : Tools/check_lean_model.sh ANA004-2 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for ANA004-2
% SZS output start Model for ANA004-2
% import Statement
% open TPTP
%
% /-- ANA004-2 countermodel: ℚ with <, half x = x/2, minimum x y = min x y / 2, equalish always true, absolute = |·|,
% a = b = l1 = l2 = 1, f = g = 1, fp31 x = fp32 x = x, fp33 x = a, minus x = -x, and add = + except
% add 0 0 = -1 (allowed: axiom_3 only forces add 0 0 < x for x > 0). The problem lacks the triangle
% inequality, so c_16's |add(add(f-l1),(g-l1))| = |add 0 0| = 1 is not < b. -/
% def addQ (x y : Rat) : Rat := if x = 0 ∧ y = 0 then -1 else x + y
%
% def I : Sig Rat where
%   c_a := 1
%   f_absolute := fun x => if x < 0 then -x else x
%   f_add := addQ
%   c_b := 1
%   p_equalish := fun _ _ => True
%   f_f := fun _ => 1
%   f_fp31 := id
%   f_fp32 := id
%   f_fp33 := fun _ => 1
%   f_g := fun _ => 1
%   f_half := fun x => x / 2
%   c_l1 := 1
%   c_l2 := 1
%   p_less_than := (· < ·)
%   f_minimum := fun x y => (if x ≤ y then x else y) / 2
%   f_minus := (- ·)
%   c_n0 := 0
%
% theorem sat : Satisfiable := by
%   refine ⟨Rat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I, addQ]
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   all_goals (try intros)
%   all_goals (first | trivial | (simp; done) | grind | (split <;> grind))
% SZS output end Model for ANA004-2
%------------------------------------------------------------------------------
