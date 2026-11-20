%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : ANA001-1 : TPTP v10.0.0. Released v1.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0: `sat : TPTP.Satisfiable` (or Satisfiable1) compiles against a
%            Statement.lean generated mechanically from the TPTP file, and depends only on the axioms
%            propext, Classical.choice, Quot.sound
% Status   : SUGGESTED CHANGE: Unknown -> Satisfiable (TPTP v10.0.0 status is Unknown; this file
%            contains a Lean-checked model). PROBLEM FORMULATION: no clause says that f is continuous
%            (only that equal arguments give equal values), so the extreme value theorem cannot
%            follow; the Lean model (ℚ, [0,1], f x = 10 − x for x ≠ 1, f 1 = 10) has no minimum on
%            the interval, as M. Raskin's claim in the header says. SUGGESTED FIX: add a continuity
%            axiom for f (and completeness of the order).

% Comments : Model written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness, as a Lean
%            4 development. The model is infinite, so it cannot be given as a TPTP finite
%            interpretation. Model description: ANA001-1 countermodel (the problem is Satisfiable, as
%            M. Raskin claimed): ℚ with ≤, interval [0,1], extreme_point = 1/2, in_interval l x u :=
%            l ≤ x ≤ u, f x = 10 - x for x ≠ 1 and f 1 = 10 (f has no minimum on [0,1]: the infimum 9
%            is not attained), k x = (x+1)/2 (k 1 = 1/2) gives a point with a smaller value, h x = x
%            (h 1 = 0) is the least point whose value is ≤ f x, and q x = 0. Nothing in the problem
%            says f is continuous, which the extreme value theorem needs.
% Checking : Tools/check_lean_model.sh ANA001-1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for ANA001-1
% SZS output start Model for ANA001-1
% import Statement
% open TPTP
%
% /-- ANA001-1 countermodel (the problem is Satisfiable, as M. Raskin claimed): ℚ with ≤, interval [0,1],
% extreme_point = 1/2, in_interval l x u := l ≤ x ≤ u, f x = 10 - x for x ≠ 1 and f 1 = 10 (f has no minimum
% on [0,1]: the infimum 9 is not attained), k x = (x+1)/2 (k 1 = 1/2) gives a point with a smaller value,
% h x = x (h 1 = 0) is the least point whose value is ≤ f x, and q x = 0. Nothing in the problem says f is
% continuous, which the extreme value theorem needs. -/
% def fQ (x : Rat) : Rat := if x = 1 then 10 else 10 - x
% def kQ (x : Rat) : Rat := if x = 1 then 1/2 else (x + 1) / 2
% def hQ (x : Rat) : Rat := if x = 1 then 0 else x
%
% def I : Sig Rat where
%   c_extreme_point := 1/2
%   f_f := fQ
%   f_h := hQ
%   p_in_interval := fun l x u => l ≤ x ∧ x ≤ u
%   f_k := kQ
%   p_less_than_or_equal := (· ≤ ·)
%   c_lower_bound := 0
%   f_q := fun _ => 0
%   c_upper_bound := 1
%
% theorem sat : Satisfiable := by
%   refine ⟨Rat, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I, fQ, kQ, hQ]
%   repeat' apply And.intro
%   all_goals (try intros)
%   all_goals (first | trivial | (simp; done) | grind | (split <;> grind) | (split <;> split <;> grind))
% SZS output end Model for ANA001-1
%------------------------------------------------------------------------------
