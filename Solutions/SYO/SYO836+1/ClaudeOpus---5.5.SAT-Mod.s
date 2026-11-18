%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SYO836+1 : TPTP v10.0.0. Released v7.4.0.
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
%            interpretation. Model description: SYO836+1: a model on Nat with f(a,b) := b ≤ a ∨ (a <
%            b ∧ a and b have the same parity). Axiom 4: if ¬f(x2,x3) and ¬f(x3,x1) then x2 < x3 < x1
%            with x2, x1 of the same parity, and any x4 with ¬f(x1,x4) (x1 < x4, other parity) also
%            has ¬f(x2,x4).
% Checking : Tools/check_lean_model.sh SYO836+1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for SYO836+1
% SZS output start Model for SYO836+1
% import Statement
% open TPTP
%
% /-- SYO836+1: a model on Nat with f(a,b) := b ≤ a ∨ (a < b ∧ a and b have the same parity).
% Axiom 4: if ¬f(x2,x3) and ¬f(x3,x1) then x2 < x3 < x1 with x2, x1 of the same parity, and any x4 with
% ¬f(x1,x4) (x1 < x4, other parity) also has ¬f(x2,x4). -/
% def I : Sig Nat where
%   p_f := fun a b => b ≤ a ∨ (a < b ∧ a % 2 = b % 2)
%
% theorem sat : Satisfiable := by
%   refine ⟨Nat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   refine ⟨fun x => ⟨x + 1, by omega⟩, fun x y => by omega, ⟨1, 0, 2, by omega⟩, ?_⟩
%   intro x1 x2 x3
%   by_cases h1 : x3 ≤ x2 ∨ (x2 < x3 ∧ x2 % 2 = x3 % 2)
%   · exact Or.inl h1
%   by_cases h2 : x1 ≤ x3 ∨ (x3 < x1 ∧ x3 % 2 = x1 % 2)
%   · exact Or.inr (Or.inl h2)
%   exact Or.inr (Or.inr fun x4 => by omega)
% SZS output end Model for SYO836+1
%------------------------------------------------------------------------------
