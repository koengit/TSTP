%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GRP763+1 : TPTP v10.0.0. Released v4.0.0.
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
%            interpretation. Model description: GRP763+1: the lattice-ordered group (ℤ, +, min, max)
%            with a = 1.
% Checking : Tools/check_lean_model.sh GRP763+1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for GRP763+1
% SZS output start Model for GRP763+1
% import Statement
% open TPTP
%
% /-- GRP763+1: the lattice-ordered group (ℤ, +, min, max) with a = 1. -/
% def I : Sig Int where
%   c_a := 1
%   c_e := 0
%   f_i := fun x => -x
%   f_j := max
%   f_m := min
%   f_mult := (· + ·)
%
% theorem sat : Satisfiable := by
%   refine ⟨Int, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   all_goals first
%     | (intros; omega)
%     | omega
%     | (refine ⟨1, ?_⟩; omega)
%     | (intros; simp_all)
% SZS output end Model for GRP763+1
%------------------------------------------------------------------------------
