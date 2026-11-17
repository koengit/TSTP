%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : FLD102-1 : TPTP v10.0.0. Released v6.4.0.
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
%            4 development. The model is infinite, so it cannot be given as a TPTP finite
%            interpretation. Model description: FLD102-1 (the relational FLD002-0 ordered field
%            axioms alone): ℚ, sum/product = graphs of + and *.
% Checking : Tools/check_lean_model.sh FLD102-1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for FLD102-1
% SZS output start Model for FLD102-1
% import Statement
% open TPTP
%
% /-- FLD102-1 (the relational FLD002-0 ordered field axioms alone): ℚ, sum/product = graphs of + and *. -/
% def I : Sig Rat where
%   f_add := (· + ·)
%   f_multiply := (· * ·)
%   f_additive_inverse := (- ·)
%   f_multiplicative_inverse := (·⁻¹)
%   c_additive_identity := 0
%   c_multiplicative_identity := 1
%   p_defined := fun _ => True
%   p_sum := fun x y z => z = x + y
%   p_product := fun x y z => z = x * y
%   p_less_or_equal := (· ≤ ·)
%
% theorem sat : Satisfiable := by
%   refine ⟨Rat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I, not_true, or_false]
%   repeat' apply And.intro
%   all_goals first
%     | decide
%     | (intro x y z; by_cases h : z = x * y
%        · subst h; by_cases hx : 0 ≤ x <;> by_cases hy : 0 ≤ y <;> simp_all [Rat.mul_nonneg]
%        · simp_all)
%     | (intros; grind)
%     | (intro y z; by_cases hy : 0 ≤ y <;> by_cases hz : 0 ≤ z <;> simp_all [Rat.mul_nonneg])
% SZS output end Model for FLD102-1
%------------------------------------------------------------------------------
