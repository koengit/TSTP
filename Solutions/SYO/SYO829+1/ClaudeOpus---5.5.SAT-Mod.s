%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SYO829+1 : TPTP v10.0.0. Released v7.4.0.
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
%            interpretation. Model description: SYO829+1: a model on Nat with f(a,b) := (a < b ∧ a %
%            2 = 0 ∧ b % 2 = 0) ∨ (a < b ∧ a % 2 = 1 ∧ b % 2 = 0). The proof was compiled from the
%            formulas: explicit witnesses for the existential quantifiers and omega on the
%            quantifier-free parts.
% Checking : Tools/check_lean_model.sh SYO829+1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for SYO829+1
% SZS output start Model for SYO829+1
% import Statement
% open TPTP
% set_option maxHeartbeats 4000000
%
% /-- SYO829+1: a model on Nat with f(a,b) := (a < b ∧ a % 2 = 0 ∧ b % 2 = 0) ∨ (a < b ∧ a % 2 = 1 ∧ b % 2 = 0). The proof was compiled from the formulas: explicit
%     witnesses for the existential quantifiers and omega on the quantifier-free parts. -/
% def I : Sig Nat where
%   p_f := fun a b => (a < b ∧ a % 2 = 0 ∧ b % 2 = 0) ∨ (a < b ∧ a % 2 = 1 ∧ b % 2 = 0)
%
% theorem sat : Satisfiable := by
%   refine ⟨Nat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   intro VX1; by_cases hp0 : (VX1 % 2 = 0); exact (by refine ⟨(VX1 + 2), ?_⟩; exact ⟨(by omega), (by omega), (by intro VX2; by_cases hq1 : ((¬ ((VX2 < VX1 ∧ VX2 % 2 = 0 ∧ VX1 % 2 = 0) ∨ (VX2 < VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 0))) ∨ ((VX2 < (VX1 + 2) ∧ VX2 % 2 = 0 ∧ (VX1 + 2) % 2 = 0) ∨ (VX2 < (VX1 + 2) ∧ VX2 % 2 = 1 ∧ (VX1 + 2) % 2 = 0))); exact Or.inr hq1; exact Or.inl (by intro VX3; omega))⟩); exact (by refine ⟨(VX1 + 1), ?_⟩; exact ⟨(by omega), (by omega), (by intro VX2; by_cases hq1 : ((¬ ((VX2 < VX1 ∧ VX2 % 2 = 0 ∧ VX1 % 2 = 0) ∨ (VX2 < VX1 ∧ VX2 % 2 = 1 ∧ VX1 % 2 = 0))) ∨ ((VX2 < (VX1 + 1) ∧ VX2 % 2 = 0 ∧ (VX1 + 1) % 2 = 0) ∨ (VX2 < (VX1 + 1) ∧ VX2 % 2 = 1 ∧ (VX1 + 1) % 2 = 0))); exact Or.inr hq1; exact Or.inl (by intro VX3; omega))⟩)
% SZS output end Model for SYO829+1
%------------------------------------------------------------------------------
