%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SYO794+1 : TPTP v10.0.0. Released v7.4.0.
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
%            interpretation. Model description: SYO794+1: a model on Nat with f(a,b) := b = a + 1.
%            The proof was compiled from the formulas: explicit witnesses for the existential
%            quantifiers and omega on the quantifier-free parts.
% Checking : Tools/check_lean_model.sh SYO794+1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for SYO794+1
% SZS output start Model for SYO794+1
% import Statement
% open TPTP
%
% /-- SYO794+1: a model on Nat with f(a,b) := b = a + 1. The proof was compiled from the formulas: explicit
%     witnesses for the existential quantifiers and omega on the quantifier-free parts. -/
% def I : Sig Nat where
%   p_f := fun a b => b = a + 1
%
% theorem sat : Satisfiable := by
%   refine ⟨Nat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   exact ⟨(by intro VX1; omega),
%     (by refine ⟨0, ?_⟩; intro VX1; omega),
%     (by intro VX1; refine ⟨(VX1 + 1), ?_⟩; omega),
%     (by intro VX1 VX2; by_cases hs0 : (¬ (VX1 = VX2)); exact Or.inl (by intro VX3; omega); exact Or.inr (by intro VX3; omega)),
%     (by intro VX1 VX2; by_cases hs0 : (¬ (VX1 = VX2)); exact Or.inl (by intro VX3; omega); exact Or.inr (by intro VX3; omega)),
%     (by intro VX1; by_cases hs0 : (VX1 = 0); exact Or.inl (by intro VX2; by_cases hs1 : (VX2 = 0); exact Or.inl (by intro VX3; omega); exact Or.inr (by refine ⟨(VX2 - 1), ?_⟩; omega)); exact Or.inr (by refine ⟨(VX1 - 1), ?_⟩; omega))⟩
% SZS output end Model for SYO794+1
%------------------------------------------------------------------------------
