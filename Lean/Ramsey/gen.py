#!/usr/bin/env python3
"""Write DIR/Proof.lean for the Ramsey problems: `theorem unsat : ¬ TPTP.SatisfiableIn.{u}`.

The combinatorics is in Ramsey.lean (R(4,4) <= 18, R(3,5) <= 14); each proof here only unpacks the
generated Statement.lean, builds the graph on Fin n, and refutes the clique/anticlique it gets.
"""
import os, sys

D = os.path.dirname(os.path.abspath(__file__))
HEAD = "import Statement\nimport Ramsey\nopen Ramsey\n\nset_option maxHeartbeats 4000000\n\n"


def refute(ax, k, nlits, pos):
    """rcases an axiom instance on e 0 .. e (k-1) and close each literal."""
    args = " ".join(f"(f (e {i}))" for i in range(k))
    pat = "|".join(["h"] * nlits)
    lit = "exact ha _ _ (by decide) h" if pos else "exact h (ha _ _ (by decide))"
    return (f"    rcases {ax} {args} with {pat} <;>\n"
            f"      first | exact hn _ _ (by decide) h | {lit}\n")


def clique_part(numbers, s, t, ns, nt, f_def, inj_proof, hyps):
    """numbers: Ramsey theorem name; s,t: clique/anticlique sizes; ns,nt: literal counts."""
    out = HEAD + "theorem unsat : ¬ TPTP.SatisfiableIn.{u} := by\n"
    out += f"  rintro ⟨M, I, -, h⟩\n  obtain ⟨{', '.join(hyps)}⟩ := h\n  classical\n"
    out += f_def + inj_proof
    out += ("  have hs : ∀ x y, I.p_r x y → I.p_r y x := fun x y hxy => (rsym x y).resolve_left (not_not.2 hxy)\n"
            "  let G := pull I.p_r hs f\n"
            f"  rcases sorted G ({numbers} G) with ⟨e, -, hadj⟩ | ⟨e, -, hadj⟩\n"
            "  · have hc := clique_ne hadj\n"
            "    have hn : ∀ i j, i ≠ j → f (e i) ≠ f (e j) := fun i j h h' => (pull_adj.1 (hc i j h)).1 (finj h')\n"
            "    have ha : ∀ i j, i ≠ j → I.p_r (f (e i)) (f (e j)) := fun i j h => (pull_adj.1 (hc i j h)).2\n")
    out += refute("ncl", s, ns, False)
    out += ("  · have hc := clique_ne hadj\n"
            "    have hn : ∀ i j, i ≠ j → f (e i) ≠ f (e j) := fun i j h h' =>\n"
            "      ((SimpleGraph.compl_adj _ _ _).1 (hc i j h)).1 (finj h')\n"
            "    have ha : ∀ i j, i ≠ j → ¬ I.p_r (f (e i)) (f (e j)) := fun i j h hr =>\n"
            "      ((SimpleGraph.compl_adj _ _ _).1 (hc i j h)).2 (pull_adj.2 ⟨((SimpleGraph.compl_adj _ _ _).1 (hc i j h)).1, hr⟩)\n")
    out += refute("nacl", t, nt, True)
    return out


def constants(n, numbers, s, t, ns, nt):
    vs = [f"I.c_v{i}" for i in range(n)]
    d = [f"d{i}_{j}" for j in range(n) for i in range(j)]   # TPTP order: v0nv1, v0nv2, v1nv2, ...
    f_def = f"  let f : Fin {n} → M := ![{', '.join(vs)}]\n"
    inj = ("  have finj : Function.Injective f := inj_of_lt (by\n"
           "    intro i j hij\n"
           "    fin_cases i <;> fin_cases j <;> first | exact absurd hij (by decide) | (simp [f]; assumption))\n")
    return clique_part(numbers, s, t, ns, nt, f_def, inj, ["rsym", "ncl", "nacl"] + d)


def peano(n, numbers, s, t, ns, nt):
    f_def = f"  let f : Fin {n} → M := fun i => I.f_f^[i.val] I.c_c\n"
    inj = ("  have finj : Function.Injective f := inj_of_lt fun i j hij =>\n"
           "    iterate_ne (fun x => nc x) (fun x y hxy => (ninj x y).resolve_left (not_not.2 hxy)) _ _ hij\n")
    return clique_part(numbers, s, t, ns, nt, f_def, inj, ["rsym", "ncl", "nacl", "nc", "ninj"])


def gra019():
    ns = [f"I.c_n{i}" for i in range(1, 19)]
    o = [f"o{i}" for i in range(1, 18)]
    out = HEAD + "theorem unsat : ¬ TPTP.SatisfiableIn.{u} := by\n"
    out += f"  rintro ⟨M, I, -, h⟩\n  obtain ⟨⟨{', '.join(o)}⟩, redc, greenc, tr, part, ngoal⟩ := h\n  classical\n"
    out += f"  let n : Fin 18 → M := ![{', '.join(ns)}]\n"
    out += ("  have hlt : ∀ i j : Fin 18, i < j → I.p_less_than (n i) (n j) :=\n"
            "    lt_chain I.p_less_than (fun a b c h => tr a b c h) n (by\n"
            "      intro k; fin_cases k <;> (simp [n]; assumption))\n"
            "  let G : SimpleGraph (Fin 18) :=\n"
            "    { Adj := fun i j => i ≠ j ∧ I.p_red (n (min i j)) (n (max i j))\n"
            "      symm := ⟨fun i j h => ⟨h.1.symm, by rw [min_comm, max_comm]; exact h.2⟩⟩\n"
            "      loopless := ⟨fun i h => h.1 rfl⟩ }\n"
            "  have gadj : ∀ i j, G.Adj i j ↔ i ≠ j ∧ I.p_red (n (min i j)) (n (max i j)) := fun _ _ => Iff.rfl\n"
            "  rcases sorted G (r44 G) with ⟨e, he, hadj⟩ | ⟨e, he, hadj⟩\n"
            "  · have ha : ∀ i j, i < j → I.p_red (n (e i)) (n (e j)) := by\n"
            "      intro i j h\n"
            "      have := ((gadj _ _).1 (hadj i j h)).2\n"
            "      rwa [min_eq_left (he h).le, max_eq_right (he h).le] at this\n"
            "    exact ngoal (redc _ _ _ _ ⟨ha 0 1 (by decide), ha 0 2 (by decide), ha 1 2 (by decide),\n"
            "      ha 0 3 (by decide), ha 1 3 (by decide), ha 2 3 (by decide)⟩)\n"
            "  · have ha : ∀ i j, i < j → I.p_green (n (e i)) (n (e j)) := by\n"
            "      intro i j h\n"
            "      have hc := (SimpleGraph.compl_adj _ _ _).1 (hadj i j h)\n"
            "      rcases part _ _ (hlt _ _ (he h)) with hr | hg\n"
            "      · refine absurd ((gadj _ _).2 ⟨hc.1, ?_⟩) hc.2\n"
            "        rwa [min_eq_left (he h).le, max_eq_right (he h).le]\n"
            "      · exact hg\n"
            "    exact ngoal (greenc _ _ _ _ ⟨ha 0 1 (by decide), ha 0 2 (by decide), ha 1 2 (by decide),\n"
            "      ha 0 3 (by decide), ha 1 3 (by decide), ha 2 3 (by decide)⟩)\n")
    return out


PROOFS = {
    "GRA125m1": lambda: constants(18, "r44", 4, 4, 12, 12),
    "GRA122m1": lambda: constants(14, "r35", 3, 5, 6, 20),
    "GRA122p1": lambda: constants(14, "r35", 3, 5, 6, 20),
    "GRA123m1": lambda: peano(14, "r35", 3, 5, 6, 20),
    "GRA123p1": lambda: peano(14, "r35", 3, 5, 6, 20),
    "GRA019p1": gra019,
}

if __name__ == "__main__":
    for d in sys.argv[1:] or PROOFS:
        open(os.path.join(D, d, "Proof.lean"), "w").write(PROOFS[d]())
