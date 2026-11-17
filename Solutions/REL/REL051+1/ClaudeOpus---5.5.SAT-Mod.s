%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : REL051+1 : TPTP v10.0.0. Released v4.0.0.
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
%            interpretation. Model description: REL051+1: the dense linear order (ℚ, ≤); f(a,b) is
%            the midpoint for a ≠ b and a + 1 for a = b (f(a,a) ≠ a is required).
% Checking : Tools/check_lean_model.sh REL051+1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for REL051+1
% SZS output start Model for REL051+1
% import Statement
% open TPTP
%
% /-- REL051+1: the dense linear order (ℚ, ≤); f(a,b) is the midpoint for a ≠ b and a + 1 for a = b (f(a,a) ≠ a is required). -/
% def I : Sig Rat where
%   f_f := fun a b => if a = b then a + 1 else (a + b) / 2
%   p_o := (· ≤ ·)
%
% theorem sat : Satisfiable := by
%   refine ⟨Rat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
%   all_goals first
%     | (intros; grind)
%     | (intro a b; by_cases h : a ≤ b <;> simp_all <;> grind)
%     | (intro a b; by_cases h : a = b <;> simp_all <;> grind)
%     | (refine ⟨0, 1, ?_, ?_⟩ <;> decide)
% SZS output end Model for REL051+1
%------------------------------------------------------------------------------
