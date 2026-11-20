%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUN063+1 : TPTP v10.0.0. Released v7.3.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : CounterSatisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0 with Mathlib v4.35.0: `sat : TPTP.Satisfiable` (or Satisfiable1) compiles
%            against a Statement.lean generated mechanically from the TPTP file, and depends only on
%            the axioms propext, Classical.choice, Quot.sound
% Status   : SUGGESTED CHANGE: Unknown -> CounterSatisfiable (TPTP v10.0.0 status is Unknown; this
%            file contains a Lean-checked model)

% Comments : Model written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness, as a Lean
%            4 development. The model is infinite, so it cannot be given as a TPTP finite
%            interpretation. Model description: NUN063+1 countermodel: a model of Robinson arithmetic
%            Q (relational, `id` = equality) with a prime that has no larger prime. Carrier: the
%            naturals `nat n`, one ℤ-chain `ch k` (think a + k) and an absorbing `inf`. Addition: n +
%            a = a + n, (a+i) + a = inf, inf + a = inf, x + inf = inf, and the recursion equations.
%            Multiplication: m · (a+j) = a + (c m + j·m) for m ≥ 1, where c (2^(e+1)) = 2^e and c m =
%            1 otherwise; 0 · (a+j) = 0; products of two non-standard elements are inf. Then a = ch 0
%            is prime (m never divides c m, so no m ≥ 2 has m · (a+j) = a), while every element above
%            a is composite: a + k = 2^(e+1) · (a + t) for k = 2^e·(2t+1), and inf = 2 · inf. So
%            "every x is 0, composite, or below a prime" fails at x = a. Q has no induction, so this
%            is allowed.
% Checking : Tools/check_lean_model.sh NUN063+1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status CounterSatisfiable for NUN063+1
% SZS output start Model for NUN063+1
% import Mathlib
% import Statement
% open TPTP
%
% /-! NUN063+1 countermodel: a model of Robinson arithmetic Q (relational, `id` = equality) with a prime that
% has no larger prime. Carrier: the naturals `nat n`, one ℤ-chain `ch k` (think a + k) and an absorbing `inf`.
% Addition: n + a = a + n, (a+i) + a = inf, inf + a = inf, x + inf = inf, and the recursion equations. Multiplication:
% m · (a+j) = a + (c m + j·m) for m ≥ 1, where c (2^(e+1)) = 2^e and c m = 1 otherwise; 0 · (a+j) = 0; products of
% two non-standard elements are inf. Then a = ch 0 is prime (m never divides c m, so no m ≥ 2 has m · (a+j) = a),
% while every element above a is composite: a + k = 2^(e+1) · (a + t) for k = 2^e·(2t+1), and inf = 2 · inf.
% So "every x is 0, composite, or below a prime" fails at x = a. Q has no induction, so this is allowed. -/
%
% inductive N | nat (n : ℕ) | ch (k : ℤ) | inf
%   deriving DecidableEq
%
% open N Classical
%
% def S : N → N
%   | nat n => nat (n + 1)
%   | ch k => ch (k + 1)
%   | inf => inf
%
% noncomputable def cc (m : ℕ) : ℤ := if ∃ e : ℕ, m = 2 ^ (e + 1) then ((m / 2 : ℕ) : ℤ) else 1
%
% def addn : N → ℕ → N
%   | nat a, n => nat (a + n)
%   | ch k, n => ch (k + n)
%   | inf, _ => inf
%
% def add : N → N → N
%   | x, nat n => addn x n
%   | nat n, ch j => ch (n + j)
%   | ch _, ch _ => inf
%   | inf, ch _ => inf
%   | _, inf => inf
%
% noncomputable def mul : N → N → N
%   | nat a, nat n => nat (a * n)
%   | ch k, nat n => if n = 0 then nat 0 else if n = 1 then ch k else inf
%   | inf, nat n => if n = 0 then nat 0 else inf
%   | nat 0, ch _ => nat 0
%   | nat (m + 1), ch j => ch (cc (m + 1) + j * (m + 1))
%   | ch _, ch _ => inf
%   | inf, ch _ => inf
%   | nat 0, inf => nat 0
%   | nat (_ + 1), inf => inf
%   | ch _, inf => inf
%   | inf, inf => inf
%
% lemma add_S (x y : N) : add x (S y) = S (add x y) := by
%   cases x <;> cases y <;> simp [add, addn, S] <;> omega
%
% lemma add_inf_left (x : N) : add inf x = inf := by cases x <;> simp [add, addn]
%
% lemma mul_S (x y : N) : mul x (S y) = add (mul x y) x := by
%   rcases x with a | k | _ <;> rcases y with n | j | _
%   · simp [mul, S, add, addn]; ring
%   · rcases a with _ | m
%     · simp [mul, S, add, addn]
%     · simp [mul, S, add, addn]; ring
%   · rcases a with _ | m <;> simp [mul, S, add, addn]
%   · rcases n with _ | _ | n <;> simp [mul, S, add, addn]
%   · simp [mul, S, add]
%   · simp [mul, S, add]
%   · rcases n with _ | n <;> simp [mul, S, add, addn]
%   · simp [mul, S, add]
%   · simp [mul, S, add]
%
% lemma two_le_not_dvd (m : ℕ) (hm : 2 ≤ m) : ¬ ((m : ℤ) ∣ cc m) := by
%   unfold cc
%   split_ifs with h
%   · obtain ⟨e, rfl⟩ := h
%     intro hd
%     have h1 : (0 : ℤ) < ((2 ^ (e + 1) / 2 : ℕ) : ℤ) := by
%       have : 2 ^ (e + 1) / 2 = 2 ^ e := by rw [pow_succ]; simp
%       rw [this]; exact_mod_cast Nat.two_pow_pos e
%     have h2 : ((2 ^ (e + 1) / 2 : ℕ) : ℤ) < ((2 ^ (e + 1) : ℕ) : ℤ) := by
%       exact_mod_cast Nat.div_lt_self (Nat.two_pow_pos _) (by norm_num)
%     exact absurd (Int.le_of_dvd h1 hd) (not_le.mpr h2)
%   · intro hd
%     have := Int.le_of_dvd (by norm_num) hd
%     omega
%
% lemma cc_pow (e : ℕ) : cc (2 ^ (e + 1)) = 2 ^ e := by
%   unfold cc
%   rw [if_pos (show ∃ e' : ℕ, 2 ^ (e + 1) = 2 ^ (e' + 1) from ⟨e, rfl⟩)]
%   have : 2 ^ (e + 1) / 2 = 2 ^ e := by rw [pow_succ]; simp
%   rw [this]; push_cast; ring
%
% lemma mul_nat_ch (m : ℕ) (hm : 1 ≤ m) (j : ℤ) : mul (nat m) (ch j) = ch (cc m + j * m) := by
%   obtain ⟨m', rfl⟩ : ∃ m', m = m' + 1 := ⟨m - 1, by omega⟩
%   simp [mul]
%
% /-- a = ch 0 is not a product of two elements different from 1 -/
% lemma not_comp (x y : N) (h : mul x y = ch 0) : x = nat 1 ∨ y = nat 1 := by
%   cases x with
%   | nat a =>
%     cases y with
%     | nat n => simp [mul] at h
%     | ch j =>
%       cases a with
%       | zero => simp [mul] at h
%       | succ m =>
%         rw [mul_nat_ch _ (by omega)] at h
%         simp only [ch.injEq] at h
%         by_cases hm : m = 0
%         · left; simp [hm]
%         · exfalso
%           apply two_le_not_dvd (m + 1) (by omega)
%           exact ⟨-j, by push_cast at h ⊢; linarith⟩
%     | inf => cases a <;> simp [mul] at h
%   | ch k =>
%     cases y with
%     | nat n => rcases n with _ | _ | n <;> simp_all [mul]
%     | ch j => simp [mul] at h
%     | inf => simp [mul] at h
%   | inf =>
%     cases y with
%     | nat n => rcases n with _ | n <;> simp [mul] at h
%     | ch j => simp [mul] at h
%     | inf => simp [mul] at h
%
% /-- every element above a is composite, with both factors ≤ it -/
% lemma above_comp (k : ℕ) (hk : 1 ≤ k) : ∃ x y : N, x ≠ nat 1 ∧ y ≠ nat 1 ∧ mul x y = ch k ∧
%     (∃ u, add x u = ch k) ∧ (∃ v, add y v = ch k) := by
%   obtain ⟨e, t, ht, rfl⟩ := Nat.exists_eq_two_pow_mul_odd (n := k) (by omega)
%   obtain ⟨s, rfl⟩ := ht
%   refine ⟨nat (2 ^ (e + 1)), ch s, ?_, by simp, ?_, ⟨ch (((2 ^ e * (2 * s + 1) : ℕ) : ℤ) - 2 ^ (e + 1)), ?_⟩,
%     ⟨nat (2 ^ e * (2 * s + 1) - s), ?_⟩⟩
%   · simp only [ne_eq, nat.injEq]
%     have : 2 ≤ 2 ^ (e + 1) := by
%       calc 2 = 2 ^ 1 := by norm_num
%         _ ≤ 2 ^ (e + 1) := Nat.pow_le_pow_right (by norm_num) (by omega)
%     omega
%   · rw [mul_nat_ch _ (Nat.one_le_two_pow), cc_pow]
%     push_cast; ring_nf
%   · simp [add]
%   · have : s ≤ 2 ^ e * (2 * s + 1) := by
%       have := Nat.one_le_two_pow (n := e)
%       nlinarith
%     simp only [add, addn, ch.injEq]; push_cast [this]; ring
%
% /-- every element above a = ch 0 (that is, ch 0 + x with x ≠ 0) is composite, with factors below it -/
% lemma above_any (x : N) (hx : x ≠ nat 0) : ∃ X5 X7 : N, X5 ≠ S (nat 0) ∧ X7 ≠ S (nat 0) ∧
%     mul X5 X7 = add (ch 0) x ∧ (∃ u, add X5 u = add (ch 0) x) ∧ (∃ v, add X7 v = add (ch 0) x) := by
%   rcases x with n | j | _
%   · obtain ⟨X5, X7, h5, h7, hm, hu, hv⟩ := above_comp n (by rcases n with _ | n; exact absurd rfl hx; omega)
%     have e : add (ch 0) (nat n) = ch n := by simp [add, addn]
%     rw [e]; exact ⟨X5, X7, h5, h7, hm, hu, hv⟩
%   · refine ⟨nat 2, inf, by simp [S], by simp [S], by simp [mul, add], ⟨inf, by simp [add]⟩, ⟨nat 0, by simp [add, addn]⟩⟩
%   · refine ⟨nat 2, inf, by simp [S], by simp [S], by simp [mul, add], ⟨inf, by simp [add]⟩, ⟨nat 0, by simp [add, addn]⟩⟩
%
% lemma pred_ex (x : N) (h : x ≠ nat 0) : ∃ y, S y = x := by
%   rcases x with n | k | _
%   · rcases n with _ | n
%     · exact absurd rfl h
%     · exact ⟨nat n, rfl⟩
%   · exact ⟨ch (k - 1), by simp [S]⟩
%   · exact ⟨inf, rfl⟩
%
% lemma S_inj (x y : N) (h : S x = S y) : x = y := by
%   cases x <;> cases y <;> simp_all [S]
%
% lemma S_ne_zero (x : N) : S x ≠ nat 0 := by cases x <;> simp [S]
%
% noncomputable def I : Sig N where
%   p_id := (· = ·)
%   p_r1 := fun x => x = nat 0
%   p_r2 := fun x y => y = S x
%   p_r3 := fun x y z => z = add x y
%   p_r4 := fun x y z => z = mul x y
%
% theorem sat : Satisfiable := by
%   refine ⟨N, I, ⟨nat 0⟩, ?_⟩
%   simp only [Holds, I]
%   refine ⟨⟨nat 0, fun z => by by_cases h : z = nat 0 <;> simp [h]⟩,
%     fun x => ⟨S x, fun z => by by_cases h : z = S x <;> simp [h]⟩,
%     fun x y => ⟨add x y, fun z => by by_cases h : z = add x y <;> simp [h]⟩,
%     fun x y => ⟨mul x y, fun z => by by_cases h : z = mul x y <;> simp [h]⟩,
%     fun _ => by simp, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   · intro x y; by_cases h : x = y <;> simp [h]
%   · intro x y z; by_cases h : x = y <;> simp_all <;> tauto
%   · intro x y; by_cases h : x = y <;> simp_all <;> tauto
%   · intro a b c d; by_cases h : a = c <;> by_cases h' : b = d <;> simp_all <;> tauto
%   · intro a b c d e f; by_cases h : a = d <;> by_cases h' : b = e <;> by_cases h'' : c = f <;> simp_all <;> tauto
%   · intro a b c d e f; by_cases h : a = d <;> by_cases h' : b = e <;> by_cases h'' : c = f <;> simp_all <;> tauto
%   · intro x y; exact ⟨S (add x y), by simp [add_S]⟩
%   · intro x y; exact ⟨add (mul x y) x, by simp [mul_S]⟩
%   · intro x y
%     by_cases h : x = y
%     · exact Or.inr h
%     · left; intro b
%       by_cases hb : b = S y
%       · left; intro c
%         by_cases hc : c = b
%         · right; intro e; exact h (S_inj x y (e.symm.trans (hc.trans hb)))
%         · left; exact hc
%       · right; exact hb
%   · intro x; cases x <;> simp [add, addn]
%   · intro x; rcases x with a | k | _ <;> simp [mul]
%   · intro x; by_cases h : x = nat 0
%     · left; exact ⟨_, h, rfl⟩
%     · right; obtain ⟨y, hy⟩ := pred_ex x h; exact ⟨y, x, rfl, hy.symm⟩
%   · intro x y
%     by_cases hy : y = S x
%     · left; intro z
%       by_cases hz : z = y
%       · right; rw [hz, hy]; exact S_ne_zero x
%       · left; exact hz
%     · right; exact hy
%   · simp
%     intro _ _ _
%     refine ⟨ch 0, ?_, by simp, ?_⟩
%     · intro x1 h1 x2 h2 hm _ _ _ _
%       rcases not_comp _ _ hm.symm with rfl | rfl
%       · rcases h1 (nat 1) with h | h
%         · rcases h (nat 0) with h | h <;> exact h rfl
%         · exact h rfl
%       · rcases h2 (nat 1) with h | h
%         · rcases h (nat 0) with h | h <;> exact h rfl
%         · exact h rfl
%     · intro x1 hprime _
%       by_contra hx
%       obtain ⟨X5, X7, h5, h7, hm, ⟨u, hu⟩, ⟨v, hv⟩⟩ := above_any x1 hx
%       rcases hprime X5 X7 with h | h | h | h | h
%       · rcases h _ with h | h
%         · exact h rfl
%         · exact h hm.symm
%       · rcases h u _ with h | h
%         · exact h rfl
%         · exact h hu.symm
%       · rcases h v _ with h | h
%         · exact h rfl
%         · exact h hv.symm
%       · exact h5 h
%       · exact h7 h
% SZS output end Model for NUN063+1
%------------------------------------------------------------------------------
