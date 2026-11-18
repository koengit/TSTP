%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : PUZ053-1 : TPTP v10.0.0. Released v2.7.0.
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
%            interpretation. Model description: PUZ053-1 (Rubik's cube unreachability): a model with
%            domain ℕ, b = 1 and every other colour 0; state holds iff all arguments are 0 or 1 and
%            every corner cubie (position triples {1,10,21}, {3,18,19}, {7,12,13}, {9,15,16},
%            {34,45,52}, {36,37,46}, {39,40,48}, {42,43,54}) carries at most one b (the moves permute
%            the corner triples). The start state satisfies this, the target does not, and every move
%            clause preserves it, for all tuples.
% Checking : Tools/check_lean_model.sh PUZ053-1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for PUZ053-1
% SZS output start Model for PUZ053-1
% import Statement
% open TPTP
%
% /-- PUZ053-1 (Rubik's cube unreachability): a model with domain ℕ, b = 1 and every other colour 0; state holds iff
% all arguments are 0 or 1 and every corner cubie (position triples {1,10,21}, {3,18,19}, {7,12,13}, {9,15,16}, {34,45,52}, {36,37,46}, {39,40,48}, {42,43,54}) carries at most one b (the moves permute the corner triples). The start state satisfies this, the target does not, and every move
% clause preserves it, for all tuples. -/
% def I : Sig Nat where
%   c_b := 1
%   c_g := 0
%   c_o := 0
%   c_r := 0
%   c_w := 0
%   c_y := 0
%   p_state := fun x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 x32 x33 x34 x35 x36 x37 x38 x39 x40 x41 x42 x43 x44 x45 x46 x47 x48 x49 x50 x51 x52 x53 x54 => x1 ≤ 1 ∧ x2 ≤ 1 ∧ x3 ≤ 1 ∧ x4 ≤ 1 ∧ x5 ≤ 1 ∧ x6 ≤ 1 ∧ x7 ≤ 1 ∧ x8 ≤ 1 ∧ x9 ≤ 1 ∧ x10 ≤ 1 ∧ x11 ≤ 1 ∧ x12 ≤ 1 ∧ x13 ≤ 1 ∧ x14 ≤ 1 ∧ x15 ≤ 1 ∧ x16 ≤ 1 ∧ x17 ≤ 1 ∧ x18 ≤ 1 ∧ x19 ≤ 1 ∧ x20 ≤ 1 ∧ x21 ≤ 1 ∧ x22 ≤ 1 ∧ x23 ≤ 1 ∧ x24 ≤ 1 ∧ x25 ≤ 1 ∧ x26 ≤ 1 ∧ x27 ≤ 1 ∧ x28 ≤ 1 ∧ x29 ≤ 1 ∧ x30 ≤ 1 ∧ x31 ≤ 1 ∧ x32 ≤ 1 ∧ x33 ≤ 1 ∧ x34 ≤ 1 ∧ x35 ≤ 1 ∧ x36 ≤ 1 ∧ x37 ≤ 1 ∧ x38 ≤ 1 ∧ x39 ≤ 1 ∧ x40 ≤ 1 ∧ x41 ≤ 1 ∧ x42 ≤ 1 ∧ x43 ≤ 1 ∧ x44 ≤ 1 ∧ x45 ≤ 1 ∧ x46 ≤ 1 ∧ x47 ≤ 1 ∧ x48 ≤ 1 ∧ x49 ≤ 1 ∧ x50 ≤ 1 ∧ x51 ≤ 1 ∧ x52 ≤ 1 ∧ x53 ≤ 1 ∧ x54 ≤ 1 ∧ (x1 + x10 + x21 ≤ 1) ∧ (x3 + x18 + x19 ≤ 1) ∧ (x7 + x12 + x13 ≤ 1) ∧ (x9 + x15 + x16 ≤ 1) ∧ (x34 + x45 + x52 ≤ 1) ∧ (x36 + x37 + x46 ≤ 1) ∧ (x39 + x40 + x48 ≤ 1) ∧ (x42 + x43 + x54 ≤ 1)
%
% set_option maxRecDepth 100000 in
% set_option maxHeartbeats 0 in
% theorem sat : Satisfiable := by
%   refine ⟨Nat, I, ⟨0⟩, ?_⟩
%   dsimp only [Holds, I]
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   all_goals first | omega | (intros; omega)
% SZS output end Model for PUZ053-1
%------------------------------------------------------------------------------
