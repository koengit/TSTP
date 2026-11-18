import Statement
import Ramsey
open Ramsey

set_option maxHeartbeats 4000000

theorem unsat : ¬ TPTP.SatisfiableIn.{u} := by
  rintro ⟨M, I, -, h⟩
  obtain ⟨rsym, ncl, nacl, nc, ninj⟩ := h
  classical
  let f : Fin 14 → M := fun i => I.f_f^[i.val] I.c_c
  have finj : Function.Injective f := inj_of_lt fun i j hij =>
    iterate_ne (fun x => nc x) (fun x y hxy => (ninj x y).resolve_left (not_not.2 hxy)) _ _ hij
  have hs : ∀ x y, I.p_r x y → I.p_r y x := fun x y hxy => (rsym x y).resolve_left (not_not.2 hxy)
  let G := pull I.p_r hs f
  rcases sorted G (r35 G) with ⟨e, -, hadj⟩ | ⟨e, -, hadj⟩
  · have hc := clique_ne hadj
    have hn : ∀ i j, i ≠ j → f (e i) ≠ f (e j) := fun i j h h' => (pull_adj.1 (hc i j h)).1 (finj h')
    have ha : ∀ i j, i ≠ j → I.p_r (f (e i)) (f (e j)) := fun i j h => (pull_adj.1 (hc i j h)).2
    rcases ncl (f (e 0)) (f (e 1)) (f (e 2)) with h|h|h|h|h|h <;>
      first | exact hn _ _ (by decide) h | exact h (ha _ _ (by decide))
  · have hc := clique_ne hadj
    have hn : ∀ i j, i ≠ j → f (e i) ≠ f (e j) := fun i j h h' =>
      ((SimpleGraph.compl_adj _ _ _).1 (hc i j h)).1 (finj h')
    have ha : ∀ i j, i ≠ j → ¬ I.p_r (f (e i)) (f (e j)) := fun i j h hr =>
      ((SimpleGraph.compl_adj _ _ _).1 (hc i j h)).2 (pull_adj.2 ⟨((SimpleGraph.compl_adj _ _ _).1 (hc i j h)).1, hr⟩)
    rcases nacl (f (e 0)) (f (e 1)) (f (e 2)) (f (e 3)) (f (e 4)) with h|h|h|h|h|h|h|h|h|h|h|h|h|h|h|h|h|h|h|h <;>
      first | exact hn _ _ (by decide) h | exact ha _ _ (by decide) h
