import Statement
import Ramsey
open Ramsey

set_option maxHeartbeats 4000000

theorem unsat : ¬ TPTP.SatisfiableIn.{u} := by
  rintro ⟨M, I, -, h⟩
  obtain ⟨⟨o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15, o16, o17⟩, redc, greenc, tr, part, ngoal⟩ := h
  classical
  let n : Fin 18 → M := ![I.c_n1, I.c_n2, I.c_n3, I.c_n4, I.c_n5, I.c_n6, I.c_n7, I.c_n8, I.c_n9, I.c_n10, I.c_n11, I.c_n12, I.c_n13, I.c_n14, I.c_n15, I.c_n16, I.c_n17, I.c_n18]
  have hlt : ∀ i j : Fin 18, i < j → I.p_less_than (n i) (n j) :=
    lt_chain I.p_less_than (fun a b c h => tr a b c h) n (by
      intro k; fin_cases k <;> (simp [n]; assumption))
  let G : SimpleGraph (Fin 18) :=
    { Adj := fun i j => i ≠ j ∧ I.p_red (n (min i j)) (n (max i j))
      symm := ⟨fun i j h => ⟨h.1.symm, by rw [min_comm, max_comm]; exact h.2⟩⟩
      loopless := ⟨fun i h => h.1 rfl⟩ }
  have gadj : ∀ i j, G.Adj i j ↔ i ≠ j ∧ I.p_red (n (min i j)) (n (max i j)) := fun _ _ => Iff.rfl
  rcases sorted G (r44 G) with ⟨e, he, hadj⟩ | ⟨e, he, hadj⟩
  · have ha : ∀ i j, i < j → I.p_red (n (e i)) (n (e j)) := by
      intro i j h
      have := ((gadj _ _).1 (hadj i j h)).2
      rwa [min_eq_left (he h).le, max_eq_right (he h).le] at this
    exact ngoal (redc _ _ _ _ ⟨ha 0 1 (by decide), ha 0 2 (by decide), ha 1 2 (by decide),
      ha 0 3 (by decide), ha 1 3 (by decide), ha 2 3 (by decide)⟩)
  · have ha : ∀ i j, i < j → I.p_green (n (e i)) (n (e j)) := by
      intro i j h
      have hc := (SimpleGraph.compl_adj _ _ _).1 (hadj i j h)
      rcases part _ _ (hlt _ _ (he h)) with hr | hg
      · refine absurd ((gadj _ _).2 ⟨hc.1, ?_⟩) hc.2
        rwa [min_eq_left (he h).le, max_eq_right (he h).le]
      · exact hg
    exact ngoal (greenc _ _ _ _ ⟨ha 0 1 (by decide), ha 0 2 (by decide), ha 1 2 (by decide),
      ha 0 3 (by decide), ha 1 3 (by decide), ha 2 3 (by decide)⟩)
