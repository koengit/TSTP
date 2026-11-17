%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : FLD095-1 : TPTP v10.0.0. Bugfixed v2.1.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0: `sat : TPTP.Satisfiable` (or Satisfiable1) compiles against a
%            Statement.lean generated mechanically from the TPTP file, and depends only on the axioms
%            propext, Classical.choice, Quot.sound
% Status   : PROBLEM FORMULATION: with u=a/b, v=c/d, w=(a+c)/(b+d), the hypotheses only give b<0<d,
%            and u<=v does not imply u<=w when b+d<0 (a=0, b=-2, c=d=1: u=0, v=1, w=-1). SUGGESTED
%            FIX: add the missing sign hypothesis on b+d (or on b), as in the intended 'difficult
%            inequality'.

% Comments : Model written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness, as a Lean
%            4 development. The model is usually infinite, so it is not given as a TPTP finite
%            interpretation. Model description: FLD095-1 countermodel: ℚ, a = 0, b = -2, c = 1, d =
%            1: a/b = 0 ≤ 1 = c/d but (a+c)/(b+d) = -1.
% Checking : Tools/check_lean_model.sh FLD095-1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for FLD095-1
% SZS output start Model for FLD095-1
% import Statement
% open TPTP
%
% /-- FLD095-1 countermodel: ℚ, a = 0, b = -2, c = 1, d = 1: a/b = 0 ≤ 1 = c/d but (a+c)/(b+d) = -1. -/
% def I : Sig Rat where
%   c_a := 0
%   c_b := -2
%   c_c := 1
%   c_d := 1
%   f_add := (· + ·)
%   f_multiply := (· * ·)
%   f_additive_inverse := (- ·)
%   f_multiplicative_inverse := (·⁻¹)
%   c_additive_identity := 0
%   c_multiplicative_identity := 1
%   p_defined := fun _ => True
%   p_equalish := (· = ·)
%   p_less_or_equal := (· ≤ ·)
%
% theorem sat : Satisfiable := by
%   refine ⟨Rat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I, not_true, or_false]
%   repeat' apply And.intro
%   all_goals first
%     | decide
%     | (intros; grind)
%     | (intro y z; by_cases hy : 0 ≤ y <;> by_cases hz : 0 ≤ z <;> simp_all [Rat.mul_nonneg])
% SZS output end Model for FLD095-1
%------------------------------------------------------------------------------
