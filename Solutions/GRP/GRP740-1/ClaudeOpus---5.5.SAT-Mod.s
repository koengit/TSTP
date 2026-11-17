%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GRP740-1 : TPTP v10.0.0. Released v4.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0: `sat : TPTP.Satisfiable` (or Satisfiable1) compiles against a
%            Statement.lean generated mechanically from the TPTP file, and depends only on the axioms
%            propext, Classical.choice, Quot.sound
% Status   : SUGGESTED CHANGE: Unsatisfiable -> Satisfiable (TPTP v10.0.0 status is Unsatisfiable;
%            this file contains a Lean-checked model)

% Comments : Model written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness, as a Lean
%            4 development. The model is finite (81 elements); it is given in Lean, with every clause
%            checked by `decide`, rather than as a TPTP finite interpretation. Model description:
%            Elements of Z_3^4.
% Checking : Tools/check_lean_model.sh GRP740-1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for GRP740-1
% SZS output start Model for GRP740-1
% import Statement
% open TPTP
%
% /-- Elements of Z_3^4. -/
% structure V where
%   x1 : Fin 3
%   x2 : Fin 3
%   x3 : Fin 3
%   x4 : Fin 3
% deriving DecidableEq
%
% /-- The standard nonassociative commutative Moufang loop of order 81:
%     x*y = x + y + (x3-y3)(x1*y2 - x2*y1) e4 (mod 3). -/
% def mul (x y : V) : V :=
%   ⟨x.x1 + y.x1, x.x2 + y.x2, x.x3 + y.x3, x.x4 + y.x4 + (x.x3 - y.x3) * (x.x1 * y.x2 - x.x2 * y.x1)⟩
% /-- left division: ld a b is the x with a*x = b. -/
% def ld (a b : V) : V :=
%   let x1 := b.x1 - a.x1; let x2 := b.x2 - a.x2; let x3 := b.x3 - a.x3
%   ⟨x1, x2, x3, b.x4 - a.x4 - (a.x3 - x3) * (a.x1 * x2 - a.x2 * x1)⟩
% def rd (a b : V) : V := ld b a
%
% def I : Sig V where
%   f_mult := mul
%   f_ld := ld
%   f_rd := rd
%   c_unit := ⟨0, 0, 0, 0⟩
%   c_a := ⟨2, 2, 2, 2⟩
%   c_b := ⟨2, 2, 1, 2⟩
%   c_c := ⟨2, 1, 2, 2⟩
%
% theorem V.ext' {a b : V} (h1 : a.x1 = b.x1) (h2 : a.x2 = b.x2) (h3 : a.x3 = b.x3) (h4 : a.x4 = b.x4) :
%     a = b := by cases a; cases b; simp_all
%
% theorem sat : Satisfiable := by
%   refine ⟨V, I, ⟨⟨0, 0, 0, 0⟩⟩, ?_⟩
%   simp only [Holds, I]
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   all_goals first
%     | decide
%     | (intros; apply V.ext' <;> simp [mul, ld, rd] <;> grind)
%
% SZS output end Model for GRP740-1
%------------------------------------------------------------------------------
