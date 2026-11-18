/-
Finite Ramsey bounds R(4,4) ≤ 18 and R(3,5) ≤ 14, by the textbook argument:
  R(s+1,t+1) ≤ R(s,t+1) + R(s+1,t), with one less when both summands are even (parity),
starting from R(1,t) = R(s,1) = 1.  Everything is stated for subsets `S` of an arbitrary vertex
type, so that the recursion can pass to the neighbourhood of a vertex.
-/
import Mathlib

open Finset

namespace Ramsey

set_option linter.unusedSectionVars false

variable {V : Type*} [DecidableEq V]

/-- `S` contains an `s`-clique of `G` or a `t`-clique of the complement (a `t`-anticlique). -/
def Good (G : SimpleGraph V) (s t : ℕ) (S : Finset V) : Prop :=
  (∃ T ⊆ S, G.IsNClique s T) ∨ (∃ T ⊆ S, Gᶜ.IsNClique t T)

/-- Every set of at least `n` vertices is `Good`: the Ramsey number R(s,t) is at most `n` for `G`. -/
def Ram (G : SimpleGraph V) (s t n : ℕ) : Prop := ∀ S : Finset V, n ≤ #S → Good G s t S

lemma good_symm {G : SimpleGraph V} {s t : ℕ} {S : Finset V} (h : Good G s t S) : Good Gᶜ t s S := by
  rcases h with h | h
  · right; simpa only [compl_compl] using h
  · left; exact h

lemma ram_symm {G : SimpleGraph V} {s t n : ℕ} (h : Ram G s t n) : Ram Gᶜ t s n :=
  fun S hS => good_symm (h S hS)

lemma ram_one_left (G : SimpleGraph V) (t : ℕ) : Ram G 1 t 1 := by
  intro S hS
  obtain ⟨a, ha⟩ : S.Nonempty := card_pos.1 (by omega)
  exact Or.inl ⟨{a}, singleton_subset_iff.2 ha, SimpleGraph.isNClique_singleton.2 rfl⟩

lemma ram_one_right (G : SimpleGraph V) (s : ℕ) : Ram G s 1 1 := by
  have := ram_symm (ram_one_left Gᶜ s)
  simpa only [compl_compl] using this

/-- Half of the recursion step: if the neighbourhood of `v` in `S` is large, `S` is good. -/
lemma half {G : SimpleGraph V} [DecidableRel G.Adj] {s t a : ℕ} (h : Ram G s (t + 1) a)
    {S : Finset V} {v : V} (hv : v ∈ S) (hN : a ≤ #((S.erase v).filter (G.Adj v))) :
    Good G (s + 1) (t + 1) S := by
  rcases h _ hN with ⟨T, hT, hc⟩ | ⟨T, hT, hc⟩
  · left
    refine ⟨insert v T, ?_, hc.insert fun b hb => (mem_filter.1 (hT hb)).2⟩
    intro x hx
    rcases mem_insert.1 hx with rfl | hx
    · exact hv
    · exact (mem_erase.1 (mem_filter.1 (hT hx)).1).2
  · right
    exact ⟨T, hT.trans ((filter_subset _ _).trans (erase_subset _ _)), hc⟩

/-- Neighbours and non-neighbours of `v` partition the rest of `S`. -/
lemma split (G : SimpleGraph V) [DecidableRel G.Adj] {S : Finset V} {v : V} (hv : v ∈ S) :
    #((S.erase v).filter (G.Adj v)) + #((S.erase v).filter (Gᶜ.Adj v)) + 1 = #S := by
  have e : (S.erase v).filter (Gᶜ.Adj v) = (S.erase v).filter (fun w => ¬ G.Adj v w) := by
    apply filter_congr
    intro w hw
    simp [SimpleGraph.compl_adj, (ne_of_mem_erase hw).symm]
  rw [e, card_filter_add_card_filter_not, card_erase_of_mem hv]
  have := card_pos.2 ⟨v, hv⟩
  omega

/-- If `S` is not good, every vertex has fewer than `a` neighbours and fewer than `b`
non-neighbours in `S`. -/
lemma degrees {G : SimpleGraph V} [DecidableRel G.Adj] {s t a b : ℕ}
    (h1 : Ram G s (t + 1) a) (h2 : Ram G (s + 1) t b) {S : Finset V}
    (hS : ¬ Good G (s + 1) (t + 1) S) {v : V} (hv : v ∈ S) :
    #((S.erase v).filter (G.Adj v)) < a ∧ #((S.erase v).filter (Gᶜ.Adj v)) < b := by
  refine ⟨Nat.lt_of_not_le fun hN => hS (half h1 hv hN), Nat.lt_of_not_le fun hM => hS ?_⟩
  have := good_symm (half (G := Gᶜ) (ram_symm h2) hv hM)
  simpa only [compl_compl] using this

theorem step {G : SimpleGraph V} [DecidableRel G.Adj] {s t a b : ℕ}
    (h1 : Ram G s (t + 1) a) (h2 : Ram G (s + 1) t b) (ha : 0 < a) :
    Ram G (s + 1) (t + 1) (a + b) := by
  intro S hS
  by_contra hg
  obtain ⟨v, hv⟩ : S.Nonempty := card_pos.1 (by omega)
  have := degrees h1 h2 hg hv
  have := split G hv
  omega

/-- Handshake lemma for a finite set of vertices: the degrees inside `S` sum to an even number. -/
lemma even_sum_degrees (G : SimpleGraph V) [DecidableRel G.Adj] (S : Finset V) :
    Even (∑ v ∈ S, #((S.erase v).filter (G.Adj v))) := by
  have e1 : ∀ v ∈ S, #((S.erase v).filter (G.Adj v)) = ∑ w ∈ S, if G.Adj v w then 1 else 0 := by
    intro v _
    rw [← card_filter, filter_erase, erase_eq_of_notMem (by simp)]
  rw [sum_congr rfl e1, ← sum_product' (f := fun v w => if G.Adj v w then 1 else 0)]
  rw [← ZMod.natCast_eq_zero_iff_even]
  push_cast
  refine sum_involution (fun p _ => p.swap) ?_ ?_ ?_ ?_
  · intro p _
    by_cases h : G.Adj p.1 p.2
    · simp [h, G.adj_symm h]; decide
    · have : ¬ G.Adj p.2 p.1 := fun h' => h (G.adj_symm h')
      simp [h, this]
  · intro p _ hp heq
    have hadj : G.Adj p.1 p.2 := by by_contra h; simp [h] at hp
    have h12 : p.1 = p.2 := by
      have := congrArg Prod.fst heq; simpa using this.symm
    exact G.irrefl (h12 ▸ hadj)
  · intro p hp; simpa [mem_product, and_comm] using hp
  · intro p _; rfl

/-- The parity refinement: one less when both bounds are even. -/
theorem step_even {G : SimpleGraph V} [DecidableRel G.Adj] {s t a b : ℕ}
    (h1 : Ram G s (t + 1) a) (h2 : Ram G (s + 1) t b) (ha : 0 < a) (hea : Even a) (heb : Even b) :
    Ram G (s + 1) (t + 1) (a + b - 1) := by
  intro S hS
  by_cases hbig : a + b ≤ #S
  · exact step h1 h2 ha S hbig
  by_contra hg
  -- every vertex has exactly a-1 neighbours in S
  have hd : ∀ v ∈ S, #((S.erase v).filter (G.Adj v)) = a - 1 := by
    intro v hv
    have := degrees h1 h2 hg hv
    have := split G hv
    omega
  have hsum := even_sum_degrees G S
  rw [sum_congr rfl hd, sum_const, smul_eq_mul] at hsum
  rw [Nat.even_mul, Nat.even_iff, Nat.even_iff] at hsum
  rw [Nat.even_iff] at hea heb
  omega

lemma ram_mono {G : SimpleGraph V} {s t n m : ℕ} (h : Ram G s t n) (hnm : n ≤ m) : Ram G s t m :=
  fun S hS => h S (le_trans hnm hS)

section numbers
variable (G : SimpleGraph V) [DecidableRel G.Adj]

theorem r22 : Ram G 2 2 2 := step (ram_one_left G 2) (ram_one_right G 2) one_pos
theorem r23 : Ram G 2 3 3 := step (ram_one_left G 3) (r22 G) one_pos
theorem r24 : Ram G 2 4 4 := step (ram_one_left G 4) (r23 G) one_pos
theorem r25 : Ram G 2 5 5 := step (ram_one_left G 5) (r24 G) one_pos
theorem r32 : Ram G 3 2 3 := step (r22 G) (ram_one_right G 3) two_pos
theorem r42 : Ram G 4 2 4 := step (r32 G) (ram_one_right G 4) three_pos
theorem r33 : Ram G 3 3 6 := step (r23 G) (r32 G) three_pos
theorem r34 : Ram G 3 4 9 := step_even (r24 G) (r33 G) four_pos (by decide) (by decide)
theorem r43 : Ram G 4 3 9 := step_even (r33 G) (r42 G) (by norm_num) (by decide) (by decide)
/-- R(4,4) ≤ 18. -/
theorem r44 : Ram G 4 4 18 := step (r34 G) (r43 G) (by norm_num)
/-- R(3,5) ≤ 14. -/
theorem r35 : Ram G 3 5 14 := step (r25 G) (r34 G) (by norm_num)

end numbers

/-- A clique of size `k` in a graph on `Fin n`, listed in increasing order. -/
lemma sorted_clique {n k : ℕ} {G : SimpleGraph (Fin n)} {T : Finset (Fin n)} (hc : G.IsNClique k T) :
    ∃ e : Fin k → Fin n, StrictMono e ∧ ∀ i j, i < j → G.Adj (e i) (e j) := by
  refine ⟨T.orderEmbOfFin hc.2, (T.orderEmbOfFin hc.2).strictMono, fun i j hij => ?_⟩
  exact hc.1 (by simp) (by simp) ((T.orderEmbOfFin hc.2).strictMono hij).ne

/-- Ramsey for a graph on `Fin n`, with the clique or anticlique listed in increasing order. -/
lemma sorted {n s t : ℕ} (G : SimpleGraph (Fin n)) (h : Ram G s t n) :
    (∃ e : Fin s → Fin n, StrictMono e ∧ ∀ i j, i < j → G.Adj (e i) (e j)) ∨
    (∃ e : Fin t → Fin n, StrictMono e ∧ ∀ i j, i < j → Gᶜ.Adj (e i) (e j)) := by
  rcases h univ (by simp) with ⟨T, -, hc⟩ | ⟨T, -, hc⟩
  · exact Or.inl (sorted_clique hc)
  · exact Or.inr (sorted_clique hc)

/-- The graph on `Fin n` pulled back along `f` from a symmetric relation. -/
def pull {M : Type*} {n : ℕ} (r : M → M → Prop) (hs : ∀ x y, r x y → r y x) (f : Fin n → M) :
    SimpleGraph (Fin n) where
  Adj i j := i ≠ j ∧ r (f i) (f j)
  symm := ⟨fun _ _ h => ⟨h.1.symm, hs _ _ h.2⟩⟩
  loopless := ⟨fun _ h => h.1 rfl⟩

lemma inj_of_lt {M : Type*} {n : ℕ} {f : Fin n → M} (h : ∀ i j, i < j → f i ≠ f j) :
    Function.Injective f := by
  intro i j hij
  rcases lt_trichotomy i j with hl | rfl | hl
  · exact absurd hij (h _ _ hl)
  · rfl
  · exact absurd hij.symm (h _ _ hl)

@[simp] lemma pull_adj {M : Type*} {n : ℕ} {r : M → M → Prop} {hs : ∀ x y, r x y → r y x}
    {f : Fin n → M} {i j : Fin n} : (pull r hs f).Adj i j ↔ i ≠ j ∧ r (f i) (f j) := Iff.rfl

/-- A sorted clique is a clique: adjacency for all pairs of distinct indices. -/
lemma clique_ne {n k : ℕ} {H : SimpleGraph (Fin n)} {e : Fin k → Fin n}
    (hadj : ∀ i j, i < j → H.Adj (e i) (e j)) : ∀ i j, i ≠ j → H.Adj (e i) (e j) := by
  intro i j h
  rcases lt_or_gt_of_ne h with h | h
  · exact hadj i j h
  · exact H.adj_symm (hadj j i h)

/-- `c, f c, f (f c), ...` are pairwise distinct when `f` is injective and misses `c`. -/
lemma iterate_ne {M : Type*} {f : M → M} {c : M} (hc : ∀ x, f x ≠ c) (hi : Function.Injective f) :
    ∀ i j : ℕ, i < j → f^[i] c ≠ f^[j] c := by
  intro i
  induction i with
  | zero =>
    intro j hj h
    obtain ⟨k, rfl⟩ : ∃ k, j = k + 1 := ⟨j - 1, by omega⟩
    rw [Function.iterate_succ_apply'] at h
    exact hc _ h.symm
  | succ i ih =>
    intro j hj h
    obtain ⟨k, rfl⟩ : ∃ k, j = k + 1 := ⟨j - 1, by omega⟩
    rw [Function.iterate_succ_apply', Function.iterate_succ_apply'] at h
    exact ih k (by omega) (hi h)

/-- A transitive relation along a chain `f 0, f 1, ..., f n` relates every earlier to every later element. -/
lemma lt_chain {M : Type*} (R : M → M → Prop) (tr : ∀ a b c, R a b ∧ R b c → R a c) {n : ℕ}
    (f : Fin (n + 1) → M) (h : ∀ k : Fin n, R (f k.castSucc) (f k.succ)) :
    ∀ i j : Fin (n + 1), i < j → R (f i) (f j) := by
  have key : ∀ d (i : ℕ) (hj : i + d + 1 < n + 1), R (f ⟨i, by omega⟩) (f ⟨i + d + 1, hj⟩) := by
    intro d
    induction d with
    | zero => intro i hj; exact h ⟨i, by omega⟩
    | succ d ih =>
      intro i hj
      exact tr _ _ _ ⟨ih i (by omega), h ⟨i + d + 1, by omega⟩⟩
  intro i j hij
  have := key (j.val - i.val - 1) i.val (by omega)
  have e : i.val + (j.val - i.val - 1) + 1 = j.val := by have : i.val < j.val := hij; omega
  simp only [e] at this
  exact this

end Ramsey
