%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : FLD095-2 : TPTP v10.0.0. Bugfixed v2.1.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0: `sat : TPTP.Satisfiable` (or Satisfiable1) compiles against a
%            Statement.lean generated mechanically from the TPTP file, and depends only on the axioms
%            propext, Classical.choice, Quot.sound
% Status   : SUGGESTED CHANGE: Unknown -> Satisfiable (TPTP v10.0.0 status is Unknown; this file
%            contains a Lean-checked model)

% Comments : Model written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness, as a Lean
%            4 development. The model is usually infinite, so it is not given as a TPTP finite
%            interpretation. Model description: FLD095-2 countermodel: the ordered field ℚ,
%            everything defined, a = 0, b = -2, c = 1, d = 1, so u = 0, v = 1, w = 1/(-1) = -1 and u
%            ≤ v but ¬ u ≤ w.
% Checking : Tools/check_lean_model.sh FLD095-2 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for FLD095-2
% SZS output start Model for FLD095-2
% import Statement
% open TPTP
%
% /-- FLD095-2 countermodel: the ordered field ℚ, everything defined,
%     a = 0, b = -2, c = 1, d = 1, so u = 0, v = 1, w = 1/(-1) = -1 and u ≤ v but ¬ u ≤ w. -/
% def I : Sig Rat where
%   c_a := 0
%   c_b := -2
%   c_c := 1
%   c_d := 1
%   c_s := 1
%   c_t := -1
%   c_u := 0
%   c_v := 1
%   c_w := -1
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
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   all_goals first
%     | decide
%     | (intros; grind)
%     | (intro y z; by_cases hy : 0 ≤ y <;> by_cases hz : 0 ≤ z <;> simp_all [Rat.mul_nonneg])
%
% SZS output end Model for FLD095-2
%------------------------------------------------------------------------------
