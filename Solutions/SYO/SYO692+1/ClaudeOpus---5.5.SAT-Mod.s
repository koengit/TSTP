%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SYO692+1 : TPTP v10.0.0. Released v7.4.0.
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
%            interpretation. Model description: SYO692+1: a model on Rat with f(a,b) := a < b. The
%            proof was compiled from the formulas: explicit witnesses for the existential quantifiers
%            and grind on the quantifier-free parts.
% Checking : Tools/check_lean_model.sh SYO692+1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for SYO692+1
% SZS output start Model for SYO692+1
% import Statement
% open TPTP
%
% /-- SYO692+1: a model on Rat with f(a,b) := a < b. The proof was compiled from the formulas: explicit
%     witnesses for the existential quantifiers and grind on the quantifier-free parts. -/
% def I : Sig Rat where
%   p_f := fun a b => a < b
%
% theorem sat : Satisfiable := by
%   refine ⟨Rat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   exact ⟨(by intro VX1; grind),
%     (by intro VX1; refine ⟨(VX1 + 1), ?_⟩; grind),
%     (by intro VX1; refine ⟨(VX1 - 1), ?_⟩; grind),
%     (by intro VX1 VX2 VX3; grind),
%     (by intro VX1 VX2; by_cases hq0 : (VX1 < VX2); exact Or.inl hq0; exact Or.inr (by intro VX3; grind)),
%     (by intro VX1 VX2; by_cases hq0 : (¬ (VX1 < VX2)); exact Or.inl hq0; exact Or.inr (by refine ⟨((VX1 + VX2) / 2), ?_⟩; grind))⟩
% SZS output end Model for SYO692+1
%------------------------------------------------------------------------------
