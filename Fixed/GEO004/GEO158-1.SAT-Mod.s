%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO158-1, with Axioms/GEO004+0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0 with Mathlib v4.35.0: `sat : TPTP.Satisfiable` compiles against a Statement.lean
%            generated mechanically from GEO158-1 with the fixed GEO004+0.ax, and depends only on
%            the axioms propext, Classical.choice, Quot.sound
% Comments : The fixed axioms are consistent. Domain Q; each element is a rational point, a closed rational
%            interval (a bijection Q = intervals) and an oriented interval (a bijection Q = intervals x
%            Bool); sum is the convex hull (the union when two curves meet); every object moves through
%            [0,1] in step. Against the unfixed TPTP v10.0.0 GEO004+0 the same model is rejected (the
%            unguarded sum_defn fails), as it must be: those axioms are inconsistent.
% Checking : Fixed/GEO004/check.sh GEO158-1
%------------------------------------------------------------------------------
% SZS status Satisfiable for GEO158-1
% SZS output start Model for GEO158-1
% import Mathlib
% import Statement
% /-! GEO158-1 (cnf, FIXED GEO004-0; Skolem functions interpreted below). A model of the FIXED curve axioms GEO004+0 (sum_defn guarded by `? [P] : meet(P,C1,C2)`, as in Kulik and
% Eschenbach's partial sum) together with GEO004+1, GEO004+2 and GEO004+3 (unchanged).
%
% Domain ℚ. Every element plays three roles (TPTP is untyped):
% * as a point, q is the rational number q;
% * as a curve, q is the closed rational interval eC q = [lo q, hi q] (lo < hi), where eC : ℚ ≃ {intervals} is a bijection;
% * as an oriented curve, q is an interval with a direction, eO q, where eO : ℚ ≃ {intervals} × Bool.
% Defined predicates are interpreted by their definitions; the work is in characterising them on intervals
% (endpoints = the two bounds, meeting = adjacent intervals, ...). sum(C1,C2) is the convex hull, which is the union
% whenever the curves meet. Trajectories: every object moves through [0,1] in step; an event is a point of [0,1]
% (an instant) or the "never" event 2. -/
%
% namespace GF
%
% abbrev Iv := {p : ℚ × ℚ // p.1 < p.2}
%
% instance : Infinite Iv :=
%   Infinite.of_injective (fun n : ℕ => (⟨((n : ℚ), (n : ℚ) + 1), lt_add_one _⟩ : Iv)) (by
%     intro m n h
%     have := congrArg (fun x : Iv => x.1.1) h
%     simpa using this)
%
% noncomputable instance : Denumerable Iv := Denumerable.ofEncodableOfInfinite Iv
% noncomputable instance : Denumerable (Iv × Bool) := Denumerable.ofEncodableOfInfinite (Iv × Bool)
%
% noncomputable def eC : ℚ ≃ Iv := (Denumerable.eqv ℚ).trans (Denumerable.eqv Iv).symm
% noncomputable def eO : ℚ ≃ Iv × Bool := (Denumerable.eqv ℚ).trans (Denumerable.eqv (Iv × Bool)).symm
% attribute [irreducible] eC eO
%
% /-! ### Curves -/
% noncomputable def lo (C : ℚ) : ℚ := (eC C).1.1
% noncomputable def hi (C : ℚ) : ℚ := (eC C).1.2
% theorem lo_lt (C : ℚ) : lo C < hi C := (eC C).2
% def inc (P C : ℚ) : Prop := lo C ≤ P ∧ P ≤ hi C
% noncomputable def mk (a b : ℚ) (h : a < b) : ℚ := eC.symm ⟨(a, b), h⟩
% @[simp] theorem lo_mk (a b : ℚ) (h : a < b) : lo (mk a b h) = a := by simp [lo, mk]
% @[simp] theorem hi_mk (a b : ℚ) (h : a < b) : hi (mk a b h) = b := by simp [hi, mk]
% theorem ext_lh {C D : ℚ} (h1 : lo C = lo D) (h2 : hi C = hi D) : C = D :=
%   eC.injective (Subtype.ext (Prod.ext h1 h2))
%
% def part (C1 C : ℚ) : Prop := ∀ P, inc P C1 → inc P C
% theorem part_iff {C1 C : ℚ} : part C1 C ↔ lo C ≤ lo C1 ∧ hi C1 ≤ hi C := by
%   constructor
%   · intro h
%     exact ⟨(h (lo C1) ⟨le_refl _, (lo_lt C1).le⟩).1, (h (hi C1) ⟨(lo_lt C1).le, le_refl _⟩).2⟩
%   · rintro ⟨h1, h2⟩ P ⟨p1, p2⟩; exact ⟨h1.trans p1, p2.trans h2⟩
% theorem inc_ext {C D : ℚ} (h : ∀ P, inc P C ↔ inc P D) : C = D := by
%   have h1 := part_iff.1 (fun P => (h P).1)
%   have h2 := part_iff.1 (fun P => (h P).2)
%   exact ext_lh (le_antisymm h2.1 h1.1) (le_antisymm h1.2 h2.2)
%
% def ept (P C : ℚ) : Prop :=
%   inc P C ∧ ∀ C1 C2 : ℚ, (part C1 C ∧ part C2 C ∧ inc P C1 ∧ inc P C2) → (part C1 C2 ∨ part C2 C1)
%
% theorem ept_iff {P C : ℚ} : ept P C ↔ P = lo C ∨ P = hi C := by
%   constructor
%   · rintro ⟨hi', h⟩
%     by_contra hne
%     push Not at hne
%     have l : lo C < P := lt_of_le_of_ne hi'.1 (fun e => hne.1 e.symm)
%     have r : P < hi C := lt_of_le_of_ne hi'.2 hne.2
%     have := h (mk (lo C) P l) (mk P (hi C) r)
%       ⟨part_iff.2 (by simp; exact r.le), part_iff.2 (by simp; exact l.le), by simp [inc]; exact l.le,
%         by simp [inc]; exact r.le⟩
%     rcases this with h' | h' <;> rw [part_iff] at h' <;> simp at h' <;> linarith
%   · rintro (e | e)
%     · refine ⟨⟨by rw [e], by rw [e]; exact (lo_lt C).le⟩, ?_⟩
%       rintro C1 C2 ⟨h1, h2, i1, i2⟩
%       rw [part_iff] at h1 h2
%       rcases le_total (hi C1) (hi C2) with h | h
%       · left; rw [part_iff]; exact ⟨by linarith [i2.1, h1.1], h⟩
%       · right; rw [part_iff]; exact ⟨by linarith [i1.1, h2.1], h⟩
%     · refine ⟨⟨by rw [e]; exact (lo_lt C).le, by rw [e]⟩, ?_⟩
%       rintro C1 C2 ⟨h1, h2, i1, i2⟩
%       rw [part_iff] at h1 h2
%       rcases le_total (lo C1) (lo C2) with h | h
%       · right; rw [part_iff]; exact ⟨h, by linarith [i1.2, h2.2]⟩
%       · left; rw [part_iff]; exact ⟨h, by linarith [i2.2, h1.2]⟩
%
% def inner (P C : ℚ) : Prop := inc P C ∧ ¬ ept P C
% theorem inner_iff {P C : ℚ} : inner P C ↔ lo C < P ∧ P < hi C := by
%   unfold inner; rw [ept_iff]
%   constructor
%   · rintro ⟨⟨a, b⟩, h⟩; push Not at h
%     exact ⟨lt_of_le_of_ne a (fun e => h.1 e.symm), lt_of_le_of_ne b h.2⟩
%   · rintro ⟨a, b⟩
%     exact ⟨⟨a.le, b.le⟩, by rintro (e | e) <;> rw [e] at a b <;> linarith⟩
%
% def meet (P C C1 : ℚ) : Prop :=
%   inc P C ∧ inc P C1 ∧ ∀ Q : ℚ, (inc Q C ∧ inc Q C1) → (ept Q C ∧ ept Q C1)
%
% theorem meet_iff {P C1 C2 : ℚ} : meet P C1 C2 ↔ (hi C1 = P ∧ lo C2 = P) ∨ (hi C2 = P ∧ lo C1 = P) := by
%   have l1 := lo_lt C1; have l2 := lo_lt C2
%   constructor
%   · rintro ⟨i1, i2, h⟩
%     obtain ⟨e1, e2⟩ := h P ⟨i1, i2⟩
%     rw [ept_iff] at e1 e2
%     rcases e1 with e1 | e1 <;> rcases e2 with e2 | e2
%     · -- both start at P: a common inner point
%       exfalso
%       have m1 := min_le_left (hi C1) (hi C2)
%       have m2 := min_le_right (hi C1) (hi C2)
%       have hm : P < min (hi C1) (hi C2) := lt_min (by linarith) (by linarith)
%       have q := (h (P + (min (hi C1) (hi C2) - P) / 2) ⟨⟨by linarith, by linarith⟩,
%         ⟨by linarith, by linarith⟩⟩).1
%       rw [ept_iff] at q
%       rcases q with q | q <;> linarith
%     · right; exact ⟨e2.symm, e1.symm⟩
%     · left; exact ⟨e1.symm, e2.symm⟩
%     · exfalso
%       have m1 := le_max_left (lo C1) (lo C2)
%       have m2 := le_max_right (lo C1) (lo C2)
%       have hm : max (lo C1) (lo C2) < P := max_lt (by linarith) (by linarith)
%       have q := (h (P - (P - max (lo C1) (lo C2)) / 2) ⟨⟨by linarith, by linarith⟩,
%         ⟨by linarith, by linarith⟩⟩).1
%       rw [ept_iff] at q
%       rcases q with q | q <;> linarith
%   · rintro (⟨a, b⟩ | ⟨a, b⟩)
%     · refine ⟨⟨by linarith, by linarith⟩, ⟨by linarith, by linarith⟩, fun Q hq => ?_⟩
%       have q1 := hq.1; have q2 := hq.2; unfold inc at q1 q2
%       exact ⟨ept_iff.2 (Or.inr (by linarith)), ept_iff.2 (Or.inl (by linarith))⟩
%     · refine ⟨⟨by linarith, by linarith⟩, ⟨by linarith, by linarith⟩, fun Q hq => ?_⟩
%       have q1 := hq.1; have q2 := hq.2; unfold inc at q1 q2
%       exact ⟨ept_iff.2 (Or.inl (by linarith)), ept_iff.2 (Or.inr (by linarith))⟩
%
% noncomputable def sum (C1 C2 : ℚ) : ℚ :=
%   mk (min (lo C1) (lo C2)) (max (hi C1) (hi C2))
%     (lt_of_le_of_lt (min_le_left _ _) (lt_of_lt_of_le (lo_lt C1) (le_max_left _ _)))
%
% theorem sum_union {P C1 C2 : ℚ} (h : meet P C1 C2) (Q : ℚ) :
%     inc Q (sum C1 C2) ↔ inc Q C1 ∨ inc Q C2 := by
%   have l1 := lo_lt C1; have l2 := lo_lt C2
%   rw [meet_iff] at h
%   simp only [inc, sum, lo_mk, hi_mk]
%   rcases h with ⟨a, b⟩ | ⟨a, b⟩
%   · rw [min_eq_left (by linarith), max_eq_right (by linarith)]
%     constructor
%     · rintro ⟨q1, q2⟩; rcases le_total Q P with h | h
%       · left; exact ⟨q1, by linarith⟩
%       · right; exact ⟨by linarith, q2⟩
%     · rintro (⟨q1, q2⟩ | ⟨q1, q2⟩) <;> constructor <;> linarith
%   · rw [min_eq_right (by linarith), max_eq_left (by linarith)]
%     constructor
%     · rintro ⟨q1, q2⟩; rcases le_total Q P with h | h
%       · right; exact ⟨q1, by linarith⟩
%       · left; exact ⟨by linarith, q2⟩
%     · rintro (⟨q1, q2⟩ | ⟨q1, q2⟩) <;> constructor <;> linarith
%
% def closedc (C : ℚ) : Prop := ¬ ∃ P : ℚ, ept P C
% def openc (C : ℚ) : Prop := ∃ P : ℚ, ept P C
% theorem open_all (C : ℚ) : openc C := ⟨lo C, ept_iff.2 (Or.inl rfl)⟩
%
% def bc (C P Q R : ℚ) : Prop :=
%   ¬ P = R ∧ ∃ Cpp : ℚ, part Cpp C ∧ ept P Cpp ∧ ept R Cpp ∧ inner Q Cpp
%
% theorem bc_iff {C P Q R : ℚ} : bc C P Q R ↔ inc P C ∧ inc R C ∧ ((P < Q ∧ Q < R) ∨ (R < Q ∧ Q < P)) := by
%   constructor
%   · rintro ⟨hne, D, hp, eP, eR, iQ⟩
%     rw [part_iff] at hp; rw [ept_iff] at eP eR; rw [inner_iff] at iQ
%     rcases eP with e | e <;> rcases eR with f | f
%     · exact absurd (e.trans f.symm) hne
%     · refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩, Or.inl ⟨?_, ?_⟩⟩ <;> linarith [lo_lt D]
%     · refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩, Or.inr ⟨?_, ?_⟩⟩ <;> linarith [lo_lt D]
%     · exact absurd (e.trans f.symm) hne
%   · rintro ⟨iP, iR, h⟩
%     have hne : P ≠ R := by rcases h with ⟨a, b⟩ | ⟨a, b⟩ <;> intro e <;> subst e <;> linarith
%     refine ⟨hne, mk (min P R) (max P R) (min_lt_max.2 hne), ?_, ?_, ?_, ?_⟩
%     · rw [part_iff]; simp only [lo_mk, hi_mk]
%       exact ⟨le_min iP.1 iR.1, max_le iP.2 iR.2⟩
%     · rw [ept_iff]; simp only [lo_mk, hi_mk]
%       rcases le_total P R with a | a
%       · left; exact (min_eq_left a).symm
%       · right; exact (max_eq_left a).symm
%     · rw [ept_iff]; simp only [lo_mk, hi_mk]
%       rcases le_total P R with a | a
%       · right; exact (max_eq_right a).symm
%       · left; exact (min_eq_right a).symm
%     · rw [inner_iff]; simp only [lo_mk, hi_mk]
%       rcases h with ⟨a, b⟩ | ⟨a, b⟩
%       · exact ⟨lt_of_le_of_lt (min_le_left _ _) a, lt_of_lt_of_le b (le_max_right _ _)⟩
%       · exact ⟨lt_of_le_of_lt (min_le_right _ _) a, lt_of_lt_of_le b (le_max_left _ _)⟩
%
% /-! ### Oriented curves -/
% noncomputable def olo (O : ℚ) : ℚ := (eO O).1.1.1
% noncomputable def ohi (O : ℚ) : ℚ := (eO O).1.1.2
% noncomputable def odir (O : ℚ) : Bool := (eO O).2
% theorem olo_lt (O : ℚ) : olo O < ohi O := (eO O).1.2
% def inco (P O : ℚ) : Prop := olo O ≤ P ∧ P ≤ ohi O
% def ordb (O P Q : ℚ) : Prop :=
%   inco P O ∧ inco Q O ∧ ((odir O = true ∧ P < Q) ∨ (odir O = false ∧ Q < P))
% def bo (O P Q R : ℚ) : Prop := (ordb O P Q ∧ ordb O Q R) ∨ (ordb O R Q ∧ ordb O Q P)
% def startp (P O : ℚ) : Prop := inco P O ∧ ∀ Q : ℚ, (¬ P = Q ∧ inco Q O) → ordb O P Q
% def finishp (P O : ℚ) : Prop := inco P O ∧ ∀ Q : ℚ, (¬ P = Q ∧ inco Q O) → ordb O Q P
% noncomputable def uc (O : ℚ) : ℚ := mk (olo O) (ohi O) (olo_lt O)
% theorem inc_uc (P O : ℚ) : inc P (uc O) ↔ inco P O := by simp [inc, uc, inco]
%
% theorem ordb_t {O P Q : ℚ} (hd : odir O = true) : ordb O P Q ↔ inco P O ∧ inco Q O ∧ P < Q := by
%   simp [ordb, hd]
% theorem ordb_f {O P Q : ℚ} (hd : odir O = false) : ordb O P Q ↔ inco P O ∧ inco Q O ∧ Q < P := by
%   simp [ordb, hd]
%
% theorem bo_iff {O P Q R : ℚ} : bo O P Q R ↔ inco P O ∧ inco R O ∧ ((P < Q ∧ Q < R) ∨ (R < Q ∧ Q < P)) := by
%   rcases hd : odir O with _ | _
%   · simp only [bo, ordb_f hd]
%     constructor
%     · rintro (⟨⟨a, b, c⟩, ⟨d, e, f⟩⟩ | ⟨⟨a, b, c⟩, ⟨d, e, f⟩⟩)
%       · exact ⟨a, e, Or.inr ⟨f, c⟩⟩
%       · exact ⟨e, a, Or.inl ⟨f, c⟩⟩
%     · rintro ⟨a, b, (⟨g, h⟩ | ⟨g, h⟩)⟩
%       · have iq : inco Q O := ⟨by linarith [a.1], by linarith [b.2]⟩
%         exact Or.inr ⟨⟨b, iq, h⟩, ⟨iq, a, g⟩⟩
%       · have iq : inco Q O := ⟨by linarith [b.1], by linarith [a.2]⟩
%         exact Or.inl ⟨⟨a, iq, h⟩, ⟨iq, b, g⟩⟩
%   · simp only [bo, ordb_t hd]
%     constructor
%     · rintro (⟨⟨a, b, c⟩, ⟨d, e, f⟩⟩ | ⟨⟨a, b, c⟩, ⟨d, e, f⟩⟩)
%       · exact ⟨a, e, Or.inl ⟨c, f⟩⟩
%       · exact ⟨e, a, Or.inr ⟨c, f⟩⟩
%     · rintro ⟨a, b, (⟨g, h⟩ | ⟨g, h⟩)⟩
%       · have iq : inco Q O := ⟨by linarith [a.1], by linarith [b.2]⟩
%         exact Or.inl ⟨⟨a, iq, g⟩, ⟨iq, b, h⟩⟩
%       · have iq : inco Q O := ⟨by linarith [b.1], by linarith [a.2]⟩
%         exact Or.inr ⟨⟨b, iq, g⟩, ⟨iq, a, h⟩⟩
%
% /-! ### Time -/
% def once (A : ℚ) : Prop := 0 ≤ A ∧ A ≤ 1
% noncomputable def atf (_X P : ℚ) : ℚ := if 0 ≤ P ∧ P ≤ 1 then P else 2
% noncomputable def ats (A B : ℚ) : ℚ := if A = B ∧ 0 ≤ A ∧ A ≤ 1 then A else 2
% theorem once_ats (A B : ℚ) : once (ats A B) ↔ A = B ∧ once A := by
%   unfold ats once; split_ifs with h
%   · exact ⟨fun _ => h, fun _ => h.2⟩
%   · constructor
%     · intro h'; norm_num at h'
%     · intro h'; exact absurd h' h
% theorem atf_once {X P : ℚ} (h : once P) : atf X P = P := by
%   unfold atf; exact if_pos (show 0 ≤ P ∧ P ≤ 1 from h)
% theorem once_atf (X P : ℚ) : once (atf X P) ↔ once P := by
%   unfold atf; split_ifs with h
%   · exact Iff.rfl
%   · unfold once; constructor
%     · intro h'; norm_num at h'
%     · intro h'; exact absurd h' h
% theorem ats_self {A : ℚ} (h : once A) : ats A A = A := by
%   unfold ats; exact if_pos (show A = A ∧ 0 ≤ A ∧ A ≤ 1 from ⟨rfl, h⟩)
% theorem not_once_two : ¬ once 2 := by unfold once; norm_num
%
% def T0 : Iv := ⟨(0, 1), by norm_num⟩
% noncomputable def traj (_X : ℚ) : ℚ := eO.symm (T0, true)
% theorem inco_traj (P X : ℚ) : inco P (traj X) ↔ once P := by
%   simp [inco, traj, olo, ohi, T0, once]
% theorem odir_traj (X : ℚ) : odir (traj X) = true := by simp [odir, traj]
%
% def conn (X Y P : ℚ) : Prop := once (ats (atf X P) (atf Y P))
%
% theorem same_side {P A B : ℚ} (h : (P = lo A ∧ P = lo B) ∨ (P = hi A ∧ P = hi B)) : part A B ∨ part B A := by
%   rw [part_iff, part_iff]
%   rcases h with ⟨a, b⟩ | ⟨a, b⟩
%   · rcases le_total (hi A) (hi B) with c | c
%     · left; exact ⟨by linarith, c⟩
%     · right; exact ⟨by linarith, c⟩
%   · rcases le_total (lo A) (lo B) with c | c
%     · right; exact ⟨c, by linarith⟩
%     · left; exact ⟨c, by linarith⟩
%
% theorem ends_ord (O : ℚ) : ordb O (olo O) (ohi O) ∨ ordb O (ohi O) (olo O) := by
%   have l := olo_lt O
%   rcases hd : odir O with _ | _
%   · right; exact (ordb_f hd).2 ⟨⟨l.le, le_refl _⟩, ⟨le_refl _, l.le⟩, l⟩
%   · left; exact (ordb_t hd).2 ⟨⟨le_refl _, l.le⟩, ⟨l.le, le_refl _⟩, l⟩
%
% theorem ends_in {O1 O2 : ℚ} (h : ∀ P Q, ordb O1 P Q ↔ ordb O2 P Q) : inco (olo O1) O2 ∧ inco (ohi O1) O2 := by
%   rcases ends_ord O1 with e | e
%   · have := (h _ _).1 e; exact ⟨this.1, this.2.1⟩
%   · have := (h _ _).1 e; exact ⟨this.2.1, this.1⟩
%
% theorem ordb_ext {O1 O2 : ℚ} (h : ∀ P Q, ordb O1 P Q ↔ ordb O2 P Q) : O1 = O2 := by
%   obtain ⟨a1, b1⟩ := ends_in h
%   obtain ⟨a2, b2⟩ := ends_in (fun P Q => (h P Q).symm)
%   have e1 : olo O1 = olo O2 := le_antisymm a2.1 a1.1
%   have e2 : ohi O1 = ohi O2 := le_antisymm b1.2 b2.2
%   have l := olo_lt O1
%   have ed : odir O1 = odir O2 := by
%     rcases hd1 : odir O1 with _ | _ <;> rcases hd2 : odir O2 with _ | _
%     · rfl
%     · exfalso
%       have := (ordb_t hd2).1 ((h _ _).1 ((ordb_f hd1).2 ⟨⟨l.le, le_refl _⟩, ⟨le_refl _, l.le⟩, l⟩))
%       linarith [this.2.2]
%     · exfalso
%       have := (ordb_f hd2).1 ((h _ _).1 ((ordb_t hd1).2 ⟨⟨le_refl _, l.le⟩, ⟨l.le, le_refl _⟩, l⟩))
%       linarith [this.2.2]
%     · rfl
%   apply eO.injective
%   exact Prod.ext (Subtype.ext (Prod.ext e1 e2)) ed
%
% theorem same_time {X Y P Q : ℚ} (h : once (ats (atf X P) (atf Y Q))) : P = Q := by
%   obtain ⟨e, ho⟩ := (once_ats _ _).1 h
%   have hp : once P := (once_atf X P).1 ho
%   rw [atf_once hp] at e
%   have hq : once Q := (once_atf Y Q).1 (e ▸ hp)
%   rw [atf_once hq] at e
%   exact e
%
%
% /-! ### Skolem functions of the clausification (GEO004-0 fixed, GEO004-1, -2, -3) -/
% noncomputable def sk1 (A B : ℚ) : ℚ := Classical.epsilon (fun P => inc P A ∧ ¬ inc P B)
% theorem sk1_spec {A B : ℚ} (h : ¬ part A B) : inc (sk1 A B) A ∧ ¬ inc (sk1 A B) B := by
%   have : ∃ P, inc P A ∧ ¬ inc P B := by
%     by_contra hc; push Not at hc; exact h hc
%   exact Classical.epsilon_spec this
%
% noncomputable def sk2 (A B C : ℚ) : ℚ := Classical.epsilon (fun Q => ¬ (inc Q C ↔ inc Q B ∨ inc Q A))
% theorem sk2_spec {P A B C : ℚ} (hm : meet P B A) (hne : ¬ C = sum B A) :
%     ¬ (inc (sk2 A B C) C ↔ inc (sk2 A B C) B ∨ inc (sk2 A B C) A) := by
%   have : ∃ Q, ¬ (inc Q C ↔ inc Q B ∨ inc Q A) := by
%     by_contra hc; push Not at hc
%     exact hne (inc_ext (fun Q => (hc Q).trans (sum_union hm Q).symm))
%   exact Classical.epsilon_spec this
%
% noncomputable def sk34 (B A : ℚ) : ℚ × ℚ := Classical.epsilon (fun p : ℚ × ℚ =>
%   part p.1 B ∧ part p.2 B ∧ inc A p.1 ∧ inc A p.2 ∧ ¬ part p.1 p.2 ∧ ¬ part p.2 p.1)
% noncomputable def sk3 (B A : ℚ) : ℚ := (sk34 B A).1
% noncomputable def sk4 (B A : ℚ) : ℚ := (sk34 B A).2
% theorem sk34_spec {A B : ℚ} (hi : inc A B) (hn : ¬ ept A B) :
%     part (sk3 B A) B ∧ part (sk4 B A) B ∧ inc A (sk3 B A) ∧ inc A (sk4 B A) ∧
%       ¬ part (sk3 B A) (sk4 B A) ∧ ¬ part (sk4 B A) (sk3 B A) := by
%   have : ∃ p : ℚ × ℚ, part p.1 B ∧ part p.2 B ∧ inc A p.1 ∧ inc A p.2 ∧ ¬ part p.1 p.2 ∧ ¬ part p.2 p.1 := by
%     by_contra hc; push Not at hc
%     exact hn ⟨hi, fun C1 C2 ⟨h1, h2, h3, h4⟩ => by
%       by_contra hh; push Not at hh; exact hh.2 (hc (C1, C2) h1 h2 h3 h4 hh.1)⟩
%   exact Classical.epsilon_spec this
%
% noncomputable def sk5 (C B _A : ℚ) : ℚ := Classical.epsilon (fun Q => inc Q B ∧ inc Q C ∧ ¬ (ept Q B ∧ ept Q C))
% theorem sk5_spec {A B C : ℚ} (hb : inc A B) (hc : inc A C) (hn : ¬ meet A B C) :
%     inc (sk5 C B A) B ∧ inc (sk5 C B A) C ∧ ¬ (ept (sk5 C B A) B ∧ ept (sk5 C B A) C) := by
%   have : ∃ Q, inc Q B ∧ inc Q C ∧ ¬ (ept Q B ∧ ept Q C) := by
%     by_contra h; push Not at h
%     exact hn ⟨hb, hc, fun Q ⟨q1, q2⟩ => h Q q1 q2⟩
%   exact Classical.epsilon_spec this
%
% noncomputable def mid (A : ℚ) : ℚ := (lo A + hi A) / 2
% noncomputable def sk910 (A B : ℚ) : ℚ × ℚ :=
%   if h : lo B < A ∧ A < hi B then (mk (lo B) A h.1, mk A (hi B) h.2) else (B, B)
% noncomputable def sk9 (A B : ℚ) : ℚ := (sk910 A B).1
% noncomputable def sk10 (A B : ℚ) : ℚ := (sk910 A B).2
% noncomputable def sk11 (A B : ℚ) : ℚ := if A = lo B then hi B else lo B
% noncomputable def sk12 (C B : ℚ) : ℚ := sum B C
% noncomputable def sk13 (A B : ℚ) : ℚ := Classical.epsilon (fun P => ¬ (inc P B ↔ inc P A))
% theorem sk13_spec {A B : ℚ} (h : ¬ B = A) : ¬ (inc (sk13 A B) B ↔ inc (sk13 A B) A) := by
%   have : ∃ P, ¬ (inc P B ↔ inc P A) := by
%     by_contra hc; push Not at hc; exact h (inc_ext hc)
%   exact Classical.epsilon_spec this
%
% noncomputable def a1sk1 (D C B A : ℚ) : ℚ := Classical.epsilon (fun E => part E A ∧ ept B E ∧ ept D E ∧ inner C E)
% theorem a1sk1_spec {A B C D : ℚ} (h : bc A B C D) :
%     part (a1sk1 D C B A) A ∧ ept B (a1sk1 D C B A) ∧ ept D (a1sk1 D C B A) ∧ inner C (a1sk1 D C B A) :=
%   Classical.epsilon_spec h.2
%
% noncomputable def a2sk1 (B A : ℚ) : ℚ := Classical.epsilon (fun Q => ¬ A = Q ∧ inco Q B ∧ ¬ ordb B A Q)
% theorem a2sk1_spec {A B : ℚ} (hi : inco A B) (hn : ¬ startp A B) :
%     ¬ A = a2sk1 B A ∧ inco (a2sk1 B A) B ∧ ¬ ordb B A (a2sk1 B A) := by
%   have : ∃ Q, ¬ A = Q ∧ inco Q B ∧ ¬ ordb B A Q := by
%     by_contra hc; push Not at hc; exact hn ⟨hi, fun Q ⟨q1, q2⟩ => hc Q q1 q2⟩
%   exact Classical.epsilon_spec this
% noncomputable def a2sk2 (B A : ℚ) : ℚ := Classical.epsilon (fun Q => ¬ A = Q ∧ inco Q B ∧ ¬ ordb B Q A)
% theorem a2sk2_spec {A B : ℚ} (hi : inco A B) (hn : ¬ finishp A B) :
%     ¬ A = a2sk2 B A ∧ inco (a2sk2 B A) B ∧ ¬ ordb B (a2sk2 B A) A := by
%   have : ∃ Q, ¬ A = Q ∧ inco Q B ∧ ¬ ordb B Q A := by
%     by_contra hc; push Not at hc; exact hn ⟨hi, fun Q ⟨q1, q2⟩ => hc Q q1 q2⟩
%   exact Classical.epsilon_spec this
% noncomputable def a2sk4 (A _D _C _B : ℚ) : ℚ := uc A
% noncomputable def a2sk5 (A B _C _D _E : ℚ) : ℚ := Classical.epsilon (fun X => ¬ (inco X B ↔ inc X A))
% noncomputable def a2sk6 (A : ℚ) : ℚ := if odir A = true then olo A else ohi A
% noncomputable def a2sk7 (A C B : ℚ) : ℚ := eO.symm (eC A, decide (B < C))
% theorem a2sk7_inco (A C B R : ℚ) : inco R (a2sk7 A C B) ↔ inc R A := by
%   simp [a2sk7, inco, inc, olo, ohi, lo, hi]
% noncomputable def a2sk89 (X Y : ℚ) : ℚ × ℚ := Classical.epsilon (fun p : ℚ × ℚ => ¬ (ordb Y p.1 p.2 ↔ ordb X p.1 p.2))
% noncomputable def a2sk8 (X Y : ℚ) : ℚ := (a2sk89 X Y).1
% noncomputable def a2sk9 (X Y : ℚ) : ℚ := (a2sk89 X Y).2
% theorem a2sk89_spec {X Y : ℚ} (h : ¬ Y = X) :
%     ¬ (ordb Y (a2sk8 X Y) (a2sk9 X Y) ↔ ordb X (a2sk8 X Y) (a2sk9 X Y)) := by
%   have : ∃ p : ℚ × ℚ, ¬ (ordb Y p.1 p.2 ↔ ordb X p.1 p.2) := by
%     by_contra hc; push Not at hc; exact h (ordb_ext (fun P Q => hc (P, Q)))
%   exact Classical.epsilon_spec this
% noncomputable def a2sk10 (A B : ℚ) : ℚ := Classical.epsilon (fun P => ¬ (inco P A ↔ inc P B))
% theorem a2sk10_spec {A B : ℚ} (h : ¬ B = uc A) : ¬ (inco (a2sk10 A B) A ↔ inc (a2sk10 A B) B) := by
%   have : ∃ P, ¬ (inco P A ↔ inc P B) := by
%     by_contra hc; push Not at hc
%     exact h (inc_ext (fun P => (hc P).symm.trans (inc_uc P A).symm))
%   exact Classical.epsilon_spec this
% noncomputable def a3sk2 (_B A : ℚ) : ℚ := A
%
% end GF
%
% open GF TPTP
%
% noncomputable def I : Sig ℚ where
%   f_ax0_sk1 := sk1
%   f_ax0_sk10 := sk10
%   f_ax0_sk11 := sk11
%   f_ax0_sk12 := sk12
%   f_ax0_sk13 := sk13
%   f_ax0_sk2 := sk2
%   f_ax0_sk3 := sk3
%   f_ax0_sk4 := sk4
%   f_ax0_sk5 := sk5
%   f_ax0_sk6 := lo
%   f_ax0_sk7 := lo
%   f_ax0_sk8 := mid
%   f_ax0_sk9 := sk9
%   p_closed := closedc
%   p_end_point := ept
%   p_incident_c := inc
%   p_inner_point := inner
%   p_meet := meet
%   p_open := openc
%   p_part_of := part
%   f_sum := sum
%
% set_option maxHeartbeats 1000000 in
% theorem sat : Satisfiable := by
%   refine ⟨ℚ, I, ⟨0⟩, ?_⟩
%   unfold Holds
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   · -- part_of_defn_1
%     dsimp only [I]
%     intro A B C; by_contra h; push Not at h; obtain ⟨h1, h2, h3⟩ := h; exact h3 (h1 C h2)
%   · -- part_of_defn_2
%     dsimp only [I]
%     intro A B; by_cases h : part A B
%     · exact Or.inr h
%     · exact Or.inl (sk1_spec h).1
%   · -- part_of_defn_3
%     dsimp only [I]
%     intro A B; by_cases h : part A B
%     · exact Or.inr h
%     · exact Or.inl (sk1_spec h).2
%   · -- sum_defn_4
%     dsimp only [I]
%     intro A B C D S; by_contra h; push Not at h; obtain ⟨hm, he, hd, hb, hc⟩ := h; subst he
%     exact ((sum_union hm D).1 hd).elim hb hc
%   · -- sum_defn_5
%     dsimp only [I]
%     intro A B C D S; by_contra h; push Not at h; obtain ⟨hm, he, hb, ha⟩ := h; subst he
%     exact ha ((sum_union hm D).2 (Or.inl hb))
%   · -- sum_defn_6
%     dsimp only [I]
%     intro A B C D S; by_contra h; push Not at h; obtain ⟨hm, he, hb, ha⟩ := h; subst he
%     exact ha ((sum_union hm D).2 (Or.inr hb))
%   · -- sum_defn_7
%     dsimp only [I]
%     intro A B C S
%     by_cases hm : meet S B A
%     · by_cases he : C = sum B A
%       · tauto
%       · have s := sk2_spec hm he; tauto
%     · tauto
%   · -- sum_defn_8
%     dsimp only [I]
%     intro A B C S
%     by_cases hm : meet S B A
%     · by_cases he : C = sum B A
%       · tauto
%       · have s := sk2_spec hm he; tauto
%     · tauto
%   · -- sum_defn_9
%     dsimp only [I]
%     intro A B C S
%     by_cases hm : meet S B A
%     · by_cases he : C = sum B A
%       · tauto
%       · have s := sk2_spec hm he; tauto
%     · tauto
%   · -- sum_defn_10
%     dsimp only [I]
%     intro A B C S
%     by_cases hm : meet S B A
%     · by_cases he : C = sum B A
%       · tauto
%       · have s := sk2_spec hm he; tauto
%     · tauto
%   · -- sum_defn_11
%     dsimp only [I]
%     intro A B C S
%     by_cases hm : meet S B A
%     · by_cases he : C = sum B A
%       · tauto
%       · have s := sk2_spec hm he; tauto
%     · tauto
%   · -- sum_defn_12
%     dsimp only [I]
%     intro A B C S
%     by_cases hm : meet S B A
%     · by_cases he : C = sum B A
%       · tauto
%       · have s := sk2_spec hm he; tauto
%     · tauto
%   · -- end_point_defn_13
%     dsimp only [I]
%     intro A B; by_contra h; push Not at h; exact h.2 h.1.1
%   · -- end_point_defn_14
%     dsimp only [I]
%     intro A B C D; by_contra h; push Not at h; obtain ⟨he, h1, h2, h3, h4, h5, h6⟩ := h
%     rcases he.2 C D ⟨h1, h2, h3, h4⟩ with x | x
%     · exact h5 x
%     · exact h6 x
%   · -- end_point_defn_15
%     dsimp only [I]
%     intro A B
%     by_cases hi : inc A B
%     · by_cases he : ept A B
%       · tauto
%       · have s := sk34_spec hi he; tauto
%     · tauto
%   · -- end_point_defn_16
%     dsimp only [I]
%     intro A B
%     by_cases hi : inc A B
%     · by_cases he : ept A B
%       · tauto
%       · have s := sk34_spec hi he; tauto
%     · tauto
%   · -- end_point_defn_17
%     dsimp only [I]
%     intro A B
%     by_cases hi : inc A B
%     · by_cases he : ept A B
%       · tauto
%       · have s := sk34_spec hi he; tauto
%     · tauto
%   · -- end_point_defn_18
%     dsimp only [I]
%     intro A B
%     by_cases hi : inc A B
%     · by_cases he : ept A B
%       · tauto
%       · have s := sk34_spec hi he; tauto
%     · tauto
%   · -- end_point_defn_19
%     dsimp only [I]
%     intro A B
%     by_cases hi : inc A B
%     · by_cases he : ept A B
%       · tauto
%       · have s := sk34_spec hi he; tauto
%     · tauto
%   · -- end_point_defn_20
%     dsimp only [I]
%     intro A B
%     by_cases hi : inc A B
%     · by_cases he : ept A B
%       · tauto
%       · have s := sk34_spec hi he; tauto
%     · tauto
%   · -- inner_point_defn_21
%     dsimp only [I]
%     intro A B; by_contra h; push Not at h; exact h.2 h.1.1
%   · -- inner_point_defn_22
%     dsimp only [I]
%     intro A B; by_contra h; push Not at h; exact h.1.2 h.2
%   · -- inner_point_defn_23
%     dsimp only [I]
%     intro A B; by_cases hi : inc A B
%     · by_cases he : ept A B
%       · exact Or.inr (Or.inl he)
%       · exact Or.inr (Or.inr ⟨hi, he⟩)
%     · exact Or.inl hi
%   · -- meet_defn_24
%     dsimp only [I]
%     intro A B C; by_contra h; push Not at h; exact h.2 h.1.1
%   · -- meet_defn_25
%     dsimp only [I]
%     intro A B C; by_contra h; push Not at h; exact h.2 h.1.2.1
%   · -- meet_defn_26
%     dsimp only [I]
%     intro A B C D; by_contra h; push Not at h; obtain ⟨hm, h1, h2, h3⟩ := h; exact h3 (hm.2.2 D ⟨h1, h2⟩).1
%   · -- meet_defn_27
%     dsimp only [I]
%     intro A B C D; by_contra h; push Not at h; obtain ⟨hm, h1, h2, h3⟩ := h; exact h3 (hm.2.2 D ⟨h1, h2⟩).2
%   · -- meet_defn_28
%     dsimp only [I]
%     intro A B C
%     by_cases hb : inc A B
%     · by_cases hc : inc A C
%       · by_cases hm : meet A B C
%         · tauto
%         · have s := sk5_spec hb hc hm; tauto
%       · tauto
%     · tauto
%   · -- meet_defn_29
%     dsimp only [I]
%     intro A B C
%     by_cases hb : inc A B
%     · by_cases hc : inc A C
%       · by_cases hm : meet A B C
%         · tauto
%         · have s := sk5_spec hb hc hm; tauto
%       · tauto
%     · tauto
%   · -- meet_defn_30
%     dsimp only [I]
%     intro A B C
%     by_cases hb : inc A B
%     · by_cases hc : inc A C
%       · by_cases hm : meet A B C
%         · tauto
%         · have s := sk5_spec hb hc hm; tauto
%       · tauto
%     · tauto
%   · -- closed_defn_31
%     dsimp only [I]
%     intro A B; by_contra h; push Not at h; exact h.1 ⟨B, h.2⟩
%   · -- closed_defn_32
%     dsimp only [I]
%     intro A; exact Or.inl (ept_iff.2 (Or.inl rfl))
%   · -- open_defn_33
%     dsimp only [I]
%     intro A; exact Or.inr (ept_iff.2 (Or.inl rfl))
%   · -- open_defn_34
%     dsimp only [I]
%     intro A B; by_contra h; push Not at h; exact h.2 ⟨A, h.1⟩
%   · -- c1_35
%     dsimp only [I]
%     intro A B; exact Or.inr (Or.inr (open_all A))
%   · -- c2_36
%     dsimp only [I]
%     intro A B C D E; by_contra h; push Not at h
%     obtain ⟨_, _, _, e1, e2, e3, n1, n2, n3, n4, n5, n6⟩ := h
%     replace e1 := ept_iff.1 e1; replace e2 := ept_iff.1 e2; replace e3 := ept_iff.1 e3
%     rcases e1 with e1 | e1 <;> rcases e2 with e2 | e2 <;> rcases e3 with e3 | e3
%     all_goals first
%       | exact (same_side (Or.inl ⟨e1, e2⟩)).elim n3 n4
%       | exact (same_side (Or.inr ⟨e1, e2⟩)).elim n3 n4
%       | exact (same_side (Or.inl ⟨e1, e3⟩)).elim n5 n6
%       | exact (same_side (Or.inr ⟨e1, e3⟩)).elim n5 n6
%       | exact (same_side (Or.inl ⟨e2, e3⟩)).elim n1 n2
%       | exact (same_side (Or.inr ⟨e2, e3⟩)).elim n1 n2
%   · -- c3_37
%     dsimp only [I]
%     intro A; exact inner_iff.2 ⟨by unfold mid; linarith [lo_lt A], by unfold mid; linarith [lo_lt A]⟩
%   · -- c4_38
%     dsimp only [I]
%     intro A B; by_cases h : inner A B
%     · right; have h' := inner_iff.1 h
%       unfold sk9 sk10 sk910; rw [dif_pos h']
%       exact meet_iff.2 (Or.inl ⟨by simp, by simp⟩)
%     · exact Or.inl h
%   · -- c4_39
%     dsimp only [I]
%     intro A B; by_cases h : inner A B
%     · right; have h' := inner_iff.1 h
%       unfold sk9 sk10 sk910; rw [dif_pos h']
%       apply ext_lh
%       · simp [sum, min_eq_left h'.1.le]
%       · simp [sum, max_eq_right h'.2.le]
%     · exact Or.inl h
%   · -- c5_40
%     dsimp only [I]
%     intro A B C D; by_contra h; push Not at h
%     obtain ⟨e1, e2, e3, n1, n2, n3⟩ := h
%     replace e1 := ept_iff.1 e1; replace e2 := ept_iff.1 e2; replace e3 := ept_iff.1 e3
%     rcases e1 with e1 | e1 <;> rcases e2 with e2 | e2 <;> rcases e3 with e3 | e3
%     all_goals first
%       | exact n1 (e1.trans e2.symm)
%       | exact n2 (e1.trans e3.symm)
%       | exact n3 (e2.trans e3.symm)
%   · -- c6_41
%     dsimp only [I]
%     intro A B; by_cases h : ept A B
%     · right; unfold sk11; split_ifs
%       · exact ept_iff.2 (Or.inr rfl)
%       · exact ept_iff.2 (Or.inl rfl)
%     · exact Or.inl h
%   · -- c6_42
%     dsimp only [I]
%     intro A B; by_cases h : ept A B
%     · right; unfold sk11; split_ifs with e
%       · intro h2; rw [e] at h2; exact (lo_lt B).ne h2
%       · exact e
%     · exact Or.inl h
%   · -- c7_43
%     dsimp only [I]
%     intro A B C D E; exact Or.inl (fun hc => hc ⟨lo A, ept_iff.2 (Or.inl rfl)⟩)
%   · -- c8_44
%     dsimp only [I]
%     intro A B C; exact Or.inr rfl
%   · -- c9_45
%     dsimp only [I]
%     intro A B
%     by_cases he : B = A
%     · tauto
%     · have s := sk13_spec he; tauto
%   · -- c9_46
%     dsimp only [I]
%     intro A B
%     by_cases he : B = A
%     · tauto
%     · have s := sk13_spec he; tauto
%   · -- c9_47
%     dsimp only [I]
%     intro A B
%     by_cases he : B = A
%     · tauto
%     · have s := sk13_spec he; tauto
%   · -- c9_48
%     dsimp only [I]
%     intro A B
%     by_cases he : B = A
%     · tauto
%     · have s := sk13_spec he; tauto
% SZS output end Model for GEO158-1
%------------------------------------------------------------------------------
