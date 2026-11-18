%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SYO700+1 : TPTP v10.0.0. Released v7.4.0.
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
%            interpretation. Model description: SYO700+1: a model on Int with f(a,b) := (a < b ∧ a %
%            2 = 1 ∧ b % 2 = 0) ∨ (a < b ∧ a % 2 = 1 ∧ b % 2 = 1) ∨ (a = b ∧ a % 2 = 1 ∧ b % 2 = 0) ∨
%            (a = b ∧ a % 2 = 1 ∧ b % 2 = 1) ∨ (b < a ∧ a % 2 = 0 ∧ b % 2 = 0) ∨ (b < a ∧ a % 2 = 1 ∧
%            b % 2 = 0) ∨ (b < a ∧ a % 2 = 1 ∧ b % 2 = 1). The proof was compiled from the formulas:
%            explicit witnesses for the existential quantifiers and omega on the quantifier-free
%            parts.
% Checking : Tools/check_lean_model.sh SYO700+1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for SYO700+1
% SZS output start Model for SYO700+1
% import Statement
% open TPTP
% set_option maxHeartbeats 4000000
%
% /-- SYO700+1: a model on Int with f(a,b) := (a < b ∧ a % 2 = 1 ∧ b % 2 = 0) ∨ (a < b ∧ a % 2 = 1 ∧ b % 2 = 1) ∨ (a = b ∧ a % 2 = 1 ∧ b % 2 = 0) ∨ (a = b ∧ a % 2 = 1 ∧ b % 2 = 1) ∨ (b < a ∧ a % 2 = 0 ∧ b % 2 = 0) ∨ (b < a ∧ a % 2 = 1 ∧ b % 2 = 0) ∨ (b < a ∧ a % 2 = 1 ∧ b % 2 = 1). The proof was compiled from the formulas: explicit
%     witnesses for the existential quantifiers and omega on the quantifier-free parts. -/
% def I : Sig Int where
%   p_f := fun a b => (a < b ∧ a % 2 = 1 ∧ b % 2 = 0) ∨ (a < b ∧ a % 2 = 1 ∧ b % 2 = 1) ∨ (a = b ∧ a % 2 = 1 ∧ b % 2 = 0) ∨ (a = b ∧ a % 2 = 1 ∧ b % 2 = 1) ∨ (b < a ∧ a % 2 = 0 ∧ b % 2 = 0) ∨ (b < a ∧ a % 2 = 1 ∧ b % 2 = 0) ∨ (b < a ∧ a % 2 = 1 ∧ b % 2 = 1)
%
% theorem sat : Satisfiable := by
%   refine ⟨Int, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   exact ⟨(by refine ⟨2, ?_⟩; exact ⟨(by refine ⟨4, ?_⟩; exact ⟨(by omega), (by refine ⟨4, ?_⟩; exact ⟨(by refine ⟨1, ?_⟩; omega), (by omega)⟩)⟩), (by intro VX1; by_cases hq0 : ((¬ ((VX1 < 2 ∧ VX1 % 2 = 1 ∧ 2 % 2 = 0) ∨ (VX1 < 2 ∧ VX1 % 2 = 1 ∧ 2 % 2 = 1) ∨ (VX1 = 2 ∧ VX1 % 2 = 1 ∧ 2 % 2 = 0) ∨ (VX1 = 2 ∧ VX1 % 2 = 1 ∧ 2 % 2 = 1) ∨ (2 < VX1 ∧ VX1 % 2 = 0 ∧ 2 % 2 = 0) ∨ (2 < VX1 ∧ VX1 % 2 = 1 ∧ 2 % 2 = 0) ∨ (2 < VX1 ∧ VX1 % 2 = 1 ∧ 2 % 2 = 1))) ∨ ((VX1 < VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 < VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX1 = VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 = VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX1 < VX1 ∧ VX1 % 2 = 0 ∧ VX1 % 2 = 0) ∨ (VX1 < VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 < VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 1))); exact Or.inr hq0; exact Or.inl (by intro VX2; by_cases hq1 : (¬ ((VX2 < VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX2 < VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX2 = VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX2 = VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX1 < VX2 ∧ VX2 % 2 = 0 ∧ VX1 % 2 = 0) ∨ (VX1 < VX2 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 < VX2 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 1))); exact Or.inr hq1; exact Or.inl (by intro VX3; omega)))⟩),
%     (by refine ⟨1, ?_⟩; intro VX1; by_cases hq0 : (¬ ((VX1 < 1 ∧ VX1 % 2 = 1 ∧ 1 % 2 = 0) ∨ (VX1 < 1 ∧ VX1 % 2 = 1 ∧ 1 % 2 = 1) ∨ (VX1 = 1 ∧ VX1 % 2 = 1 ∧ 1 % 2 = 0) ∨ (VX1 = 1 ∧ VX1 % 2 = 1 ∧ 1 % 2 = 1) ∨ (1 < VX1 ∧ VX1 % 2 = 0 ∧ 1 % 2 = 0) ∨ (1 < VX1 ∧ VX1 % 2 = 1 ∧ 1 % 2 = 0) ∨ (1 < VX1 ∧ VX1 % 2 = 1 ∧ 1 % 2 = 1))); exact Or.inl hq0; exact Or.inr (by intro VX2; omega)),
%     (by intro VX1; refine ⟨(VX1 - 1 - ((VX1 - 1 - 0) % 2)), ?_⟩; exact ⟨(by omega), (by omega), (by intro VX2; omega)⟩),
%     (by intro VX1; refine ⟨1, ?_⟩; omega),
%     (by intro VX1 VX2 VX3; omega),
%     (by intro VX1 VX2; by_cases hq0 : ((VX2 < VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX2 < VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX2 = VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX2 = VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX1 < VX2 ∧ VX2 % 2 = 0 ∧ VX1 % 2 = 0) ∨ (VX1 < VX2 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 < VX2 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 1)); exact Or.inl hq0; exact Or.inr (by intro VX3; omega)),
%     (by intro VX1; by_cases hs0 : (VX1 % 2 = 0); exact Or.inl (by intro VX2; omega); exact Or.inr (by by_cases hq1 : ((VX1 < VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 < VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX1 = VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 = VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX1 < VX1 ∧ VX1 % 2 = 0 ∧ VX1 % 2 = 0) ∨ (VX1 < VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 < VX1 ∧ VX1 % 2 = 1 ∧ VX1 % 2 = 1)); exact Or.inr hq1; exact Or.inl (by intro VX3; by_cases hq2 : (¬ ((VX3 < VX1 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX3 < VX1 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX3 = VX1 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX3 = VX1 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX1 < VX3 ∧ VX3 % 2 = 0 ∧ VX1 % 2 = 0) ∨ (VX1 < VX3 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 < VX3 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 1))); exact Or.inr hq2; exact Or.inl (by intro VX4; omega)))),
%     (by intro VX1; by_cases hs0 : (VX1 % 2 = 0); exact Or.inl (by intro VX2; omega); exact Or.inr (by by_cases hs1 : (VX1 = 0); exact Or.inl (by intro VX3; by_cases hq2 : (¬ ((VX3 < VX1 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX3 < VX1 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX3 = VX1 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX3 = VX1 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 1) ∨ (VX1 < VX3 ∧ VX3 % 2 = 0 ∧ VX1 % 2 = 0) ∨ (VX1 < VX3 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 0) ∨ (VX1 < VX3 ∧ VX3 % 2 = 1 ∧ VX1 % 2 = 1))); exact Or.inr hq2; exact Or.inl (by intro VX5; omega)); exact Or.inr (by intro VX4; omega)))⟩
% SZS output end Model for SYO700+1
%------------------------------------------------------------------------------
