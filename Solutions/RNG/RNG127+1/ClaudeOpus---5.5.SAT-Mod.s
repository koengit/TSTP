%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : RNG127+1 : TPTP v10.0.0. Released v4.0.0.
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
%            interpretation. Model description: RNG127+1: the integral domain ℤ; 2 is a nonzero non-
%            unit (2·b ≠ 1).
% Checking : Tools/check_lean_model.sh RNG127+1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for RNG127+1
% SZS output start Model for RNG127+1
% import Statement
% open TPTP
%
% /-- RNG127+1: the integral domain ℤ; 2 is a nonzero non-unit (2·b ≠ 1). -/
% def I : Sig Int where
%   f_add := (· + ·)
%   c_e := 1
%   f_m := fun x => -x
%   f_mult := (· * ·)
%   c_n := 0
%
% theorem sat : Satisfiable := by
%   refine ⟨Int, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   all_goals first
%     | (intros; omega)
%     | (intros; grind)
%     | (intro a b h; exact Int.mul_eq_zero.mp h)
%     | (refine ⟨2, fun b => ⟨by decide, by omega⟩⟩)
% SZS output end Model for RNG127+1
%------------------------------------------------------------------------------
