import Statement
import Ramsey
open Ramsey

set_option maxHeartbeats 4000000

theorem unsat : ¬ TPTP.SatisfiableIn.{u} := by
  rintro ⟨M, I, -, h⟩
  obtain ⟨rsym, ncl, nacl, d0_1, d0_2, d1_2, d0_3, d1_3, d2_3, d0_4, d1_4, d2_4, d3_4, d0_5, d1_5, d2_5, d3_5, d4_5, d0_6, d1_6, d2_6, d3_6, d4_6, d5_6, d0_7, d1_7, d2_7, d3_7, d4_7, d5_7, d6_7, d0_8, d1_8, d2_8, d3_8, d4_8, d5_8, d6_8, d7_8, d0_9, d1_9, d2_9, d3_9, d4_9, d5_9, d6_9, d7_9, d8_9, d0_10, d1_10, d2_10, d3_10, d4_10, d5_10, d6_10, d7_10, d8_10, d9_10, d0_11, d1_11, d2_11, d3_11, d4_11, d5_11, d6_11, d7_11, d8_11, d9_11, d10_11, d0_12, d1_12, d2_12, d3_12, d4_12, d5_12, d6_12, d7_12, d8_12, d9_12, d10_12, d11_12, d0_13, d1_13, d2_13, d3_13, d4_13, d5_13, d6_13, d7_13, d8_13, d9_13, d10_13, d11_13, d12_13, d0_14, d1_14, d2_14, d3_14, d4_14, d5_14, d6_14, d7_14, d8_14, d9_14, d10_14, d11_14, d12_14, d13_14, d0_15, d1_15, d2_15, d3_15, d4_15, d5_15, d6_15, d7_15, d8_15, d9_15, d10_15, d11_15, d12_15, d13_15, d14_15, d0_16, d1_16, d2_16, d3_16, d4_16, d5_16, d6_16, d7_16, d8_16, d9_16, d10_16, d11_16, d12_16, d13_16, d14_16, d15_16, d0_17, d1_17, d2_17, d3_17, d4_17, d5_17, d6_17, d7_17, d8_17, d9_17, d10_17, d11_17, d12_17, d13_17, d14_17, d15_17, d16_17⟩ := h
  classical
  let f : Fin 18 → M := ![I.c_v0, I.c_v1, I.c_v2, I.c_v3, I.c_v4, I.c_v5, I.c_v6, I.c_v7, I.c_v8, I.c_v9, I.c_v10, I.c_v11, I.c_v12, I.c_v13, I.c_v14, I.c_v15, I.c_v16, I.c_v17]
  have finj : Function.Injective f := inj_of_lt (by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first | exact absurd hij (by decide) | (simp [f]; assumption))
  have hs : ∀ x y, I.p_r x y → I.p_r y x := fun x y hxy => (rsym x y).resolve_left (not_not.2 hxy)
  let G := pull I.p_r hs f
  rcases sorted G (r44 G) with ⟨e, -, hadj⟩ | ⟨e, -, hadj⟩
  · have hc := clique_ne hadj
    have hn : ∀ i j, i ≠ j → f (e i) ≠ f (e j) := fun i j h h' => (pull_adj.1 (hc i j h)).1 (finj h')
    have ha : ∀ i j, i ≠ j → I.p_r (f (e i)) (f (e j)) := fun i j h => (pull_adj.1 (hc i j h)).2
    rcases ncl (f (e 0)) (f (e 1)) (f (e 2)) (f (e 3)) with h|h|h|h|h|h|h|h|h|h|h|h <;>
      first | exact hn _ _ (by decide) h | exact h (ha _ _ (by decide))
  · have hc := clique_ne hadj
    have hn : ∀ i j, i ≠ j → f (e i) ≠ f (e j) := fun i j h h' =>
      ((SimpleGraph.compl_adj _ _ _).1 (hc i j h)).1 (finj h')
    have ha : ∀ i j, i ≠ j → ¬ I.p_r (f (e i)) (f (e j)) := fun i j h hr =>
      ((SimpleGraph.compl_adj _ _ _).1 (hc i j h)).2 (pull_adj.2 ⟨((SimpleGraph.compl_adj _ _ _).1 (hc i j h)).1, hr⟩)
    rcases nacl (f (e 0)) (f (e 1)) (f (e 2)) (f (e 3)) with h|h|h|h|h|h|h|h|h|h|h|h <;>
      first | exact hn _ _ (by decide) h | exact ha _ _ (by decide) h
