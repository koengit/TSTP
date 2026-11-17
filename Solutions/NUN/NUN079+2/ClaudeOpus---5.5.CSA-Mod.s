%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUN079+2 : TPTP v10.0.0. Released v7.3.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : CounterSatisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0: `sat : TPTP.Satisfiable` (or Satisfiable1) compiles against a
%            Statement.lean generated mechanically from the TPTP file, and depends only on the axioms
%            propext, Classical.choice, Quot.sound
% Status   : agrees with TPTP v10.0.0 (CounterSatisfiable)

% Comments : Model written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness, as a Lean
%            4 development. The model is infinite, so it cannot be given as a TPTP finite
%            interpretation. Model description: NUN079+2 (Robinson arithmetic, relational, with
%            equality): the standard model ℕ. r1 = zero, r2 = successor graph, r3 = addition graph,
%            r4 = multiplication graph. The conjecture "∃ x, x + 2 = 1" is false in ℕ.
% Checking : Tools/check_lean_model.sh NUN079+2 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status CounterSatisfiable for NUN079+2
% SZS output start Model for NUN079+2
% import Statement
% open TPTP
%
% /-- NUN079+2 (Robinson arithmetic, relational, with equality): the standard model ℕ.
%     r1 = zero, r2 = successor graph, r3 = addition graph, r4 = multiplication graph.
%     The conjecture "∃ x, x + 2 = 1" is false in ℕ. -/
% def I : Sig Nat where
%   p_r1 := (· = 0)
%   p_r2 := fun x y => y = x + 1
%   p_r3 := fun x y z => z = x + y
%   p_r4 := fun x y z => z = x * y
%
% theorem sat : Satisfiable := by
%   refine ⟨Nat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   -- axioms 1-4: the relations are functional (witness: the value)
%   · exact ⟨0, fun x => by by_cases h : x = 0 <;> simp [h]⟩
%   · exact fun a => ⟨a + 1, fun x => by by_cases h : x = a + 1 <;> simp [h]⟩
%   · exact fun a b => ⟨a + b, fun x => by by_cases h : x = a + b <;> simp [h]⟩
%   · exact fun a b => ⟨a * b, fun x => by by_cases h : x = a * b <;> simp [h]⟩
%   -- 1a: x + S y = S (x + y)
%   · intro a b; exact ⟨a + (b + 1), ⟨_, ⟨b + 1, rfl, rfl⟩, rfl⟩, a + b, by omega, rfl⟩
%   -- 2a: x * S y = x * y + x
%   · intro a b; exact ⟨a * (b + 1), ⟨_, ⟨b + 1, rfl, rfl⟩, rfl⟩, a * b, by rw [Nat.mul_succ], rfl⟩
%   -- 3a: S injective
%   · intro a b; grind
%   -- 4a: x + 0 = x
%   · intro a; exact ⟨a, ⟨0, rfl, by simp⟩, rfl⟩
%   -- 5a: x * 0 = 0
%   · intro a; exact ⟨0, ⟨0, rfl, by simp⟩, 0, rfl, rfl⟩
%   -- 6a: every x is 0 or a successor
%   · intro a; cases a with
%     | zero => exact Or.inl ⟨0, rfl, rfl⟩
%     | succ n => exact Or.inr ⟨n, n + 1, rfl, rfl⟩
%   -- 7a: 0 is not a successor
%   · intro a b; grind
%   -- negated conjecture: no x with x + 2 = 1
%   · simp
% SZS output end Model for NUN079+2
%------------------------------------------------------------------------------
