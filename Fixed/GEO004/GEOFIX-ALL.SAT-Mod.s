%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEOFIX-ALL: the FIXED GEO004+0 (this folder) with GEO004+1, +2, +3 (NOT TPTP v10.0.0)
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0 with Mathlib v4.35.0: `sat : TPTP.Satisfiable` compiles against a Statement.lean
%            generated mechanically from GEOFIX-ALL.p with the fixed GEO004+0.ax, and depends only on
%            the axioms propext, Classical.choice, Quot.sound
% Comments : The fixed axioms are consistent. Domain Q; each element is a rational point, a closed rational
%            interval (a bijection Q = intervals) and an oriented interval (a bijection Q = intervals x
%            Bool); sum is the convex hull (the union when two curves meet); every object moves through
%            [0,1] in step. Against the unfixed TPTP v10.0.0 GEO004+0 the same model is rejected (the
%            unguarded sum_defn fails), as it must be: those axioms are inconsistent.
% Checking : Fixed/GEO004/check.sh
%------------------------------------------------------------------------------
% SZS status Satisfiable for GEOFIX-ALL
% SZS output start Model for GEOFIX-ALL
% import Mathlib
% import Statement
% /-! A model of the FIXED curve axioms GEO004+0 (sum_defn guarded by `? [P] : meet(P,C1,C2)`, as in Kulik and
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
% end GF
%
% open GF TPTP
%
% noncomputable def I : Sig ℚ where
%   f_at := atf
%   f_at_the_same_time := ats
%   p_between_c := bc
%   p_between_o := bo
%   p_closed := closedc
%   p_connect := conn
%   p_end_point := ept
%   p_finish_point := finishp
%   p_incident_c := inc
%   p_incident_o := inco
%   p_inner_point := inner
%   p_meet := meet
%   p_once := once
%   p_open := openc
%   p_ordered_by := ordb
%   p_part_of := part
%   p_start_point := startp
%   f_sum := sum
%   f_trajectory_of := traj
%   f_underlying_curve := uc
%
% theorem sat : Satisfiable := by
%   refine ⟨ℚ, I, ⟨0⟩, ?_⟩
%   unfold Holds
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
%     ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   · intro _ _; exact Iff.rfl                                         -- part_of_defn
%   · rintro C C1 C2 ⟨P, hm⟩                                          -- sum_defn
%     show C = sum C1 C2 ↔ ∀ Q, (inc Q C ↔ inc Q C1 ∨ inc Q C2)
%     constructor
%     · intro e Q; rw [e]; exact sum_union hm Q
%     · intro h; exact inc_ext (fun Q => (h Q).trans (sum_union hm Q).symm)
%   · intro _ _; exact Iff.rfl                                         -- end_point_defn
%   · intro _ _; exact Iff.rfl                                         -- inner_point_defn
%   · intro _ _ _; exact Iff.rfl                                       -- meet_defn
%   · intro _; exact Iff.rfl                                           -- closed_defn
%   · intro _; exact Iff.rfl                                           -- open_defn
%   · intro _ C1 _; exact open_all C1                                  -- c1
%   · rintro C C1 C2 C3 ⟨_, _, _, P, e1, e2, e3⟩                       -- c2
%     show part C2 C3 ∨ part C3 C2 ∨ part C1 C2 ∨ part C2 C1 ∨ part C1 C3 ∨ part C3 C1
%     replace e1 := ept_iff.1 e1; replace e2 := ept_iff.1 e2; replace e3 := ept_iff.1 e3
%     rcases e1 with e1 | e1 <;> rcases e2 with e2 | e2 <;> rcases e3 with e3 | e3
%     all_goals first
%       | exact (same_side (Or.inl ⟨e1, e2⟩)).elim (fun h => Or.inr (Or.inr (Or.inl h))) (fun h => Or.inr (Or.inr (Or.inr (Or.inl h))))
%       | exact (same_side (Or.inr ⟨e1, e2⟩)).elim (fun h => Or.inr (Or.inr (Or.inl h))) (fun h => Or.inr (Or.inr (Or.inr (Or.inl h))))
%       | exact (same_side (Or.inl ⟨e1, e3⟩)).elim (fun h => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h))))) (fun h => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr h)))))
%       | exact (same_side (Or.inr ⟨e1, e3⟩)).elim (fun h => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h))))) (fun h => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr h)))))
%       | exact (same_side (Or.inl ⟨e2, e3⟩)).elim (fun h => Or.inl h) (fun h => Or.inr (Or.inl h))
%       | exact (same_side (Or.inr ⟨e2, e3⟩)).elim (fun h => Or.inl h) (fun h => Or.inr (Or.inl h))
%   · intro C                                                          -- c3
%     exact ⟨(lo C + hi C) / 2, inner_iff.2 ⟨by linarith [lo_lt C], by linarith [lo_lt C]⟩⟩
%   · intro C P hP                                                     -- c4
%     have h := inner_iff.1 hP
%     refine ⟨mk (lo C) P h.1, mk P (hi C) h.2, meet_iff.2 (Or.inl ⟨by simp, by simp⟩), ?_⟩
%     show C = sum _ _
%     apply ext_lh
%     · simp [sum, min_eq_left h.1.le]
%     · simp [sum, max_eq_right h.2.le]
%   · rintro C P Q R ⟨e1, e2, e3⟩                                      -- c5
%     replace e1 := ept_iff.1 e1; replace e2 := ept_iff.1 e2; replace e3 := ept_iff.1 e3
%     rcases e1 with e1 | e1 <;> rcases e2 with e2 | e2 <;> rcases e3 with e3 | e3
%     all_goals first
%       | exact Or.inl (e1.trans e2.symm)
%       | exact Or.inr (Or.inl (e1.trans e3.symm))
%       | exact Or.inr (Or.inr (e2.trans e3.symm))
%   · intro C P e                                                      -- c6
%     rcases ept_iff.1 e with h | h
%     · exact ⟨hi C, ept_iff.2 (Or.inr rfl), by rw [h]; exact (lo_lt C).ne⟩
%     · exact ⟨lo C, ept_iff.2 (Or.inl rfl), by rw [h]; exact (lo_lt C).ne'⟩
%   · rintro C _ _ _ ⟨hc, _, _⟩; exact absurd (open_all C) hc          -- c7
%   · intro _ _ _; exact ⟨_, rfl⟩                                       -- c8
%   · intro C C1 h; exact inc_ext h                                    -- c9
%   · intro _ _ _ _; exact Iff.rfl                                     -- between_c_defn
%   · intro _ _ _ _; exact Iff.rfl                                     -- between_o_defn
%   · intro _ _; exact Iff.rfl                                         -- start_point_defn
%   · intro _ _; exact Iff.rfl                                         -- finish_point_defn
%   · intro O P Q h; exact ⟨h.1, h.2.1⟩                                -- o1
%   · intro O; exact ⟨uc O, open_all _, fun P => (inc_uc P O).symm⟩    -- o2
%   · intro P Q R O                                                    -- o3
%     show bo O P Q R ↔ ∃ C, (∀ P', inco P' O ↔ inc P' C) ∧ bc C P Q R
%     rw [bo_iff]
%     constructor
%     · rintro ⟨a, b, c⟩
%       exact ⟨uc O, fun P' => (inc_uc P' O).symm, bc_iff.2 ⟨(inc_uc P O).2 a, (inc_uc R O).2 b, c⟩⟩
%     · rintro ⟨C, hC, hb⟩
%       obtain ⟨a, b, c⟩ := bc_iff.1 hb
%       exact ⟨(hC P).2 a, (hC R).2 b, c⟩
%   · intro O                                                          -- o4
%     have l := olo_lt O
%     rcases hd : odir O with _ | _
%     · exact ⟨ohi O, ⟨l.le, le_refl _⟩, fun Q ⟨hne, hq⟩ =>
%         (ordb_f hd).2 ⟨⟨l.le, le_refl _⟩, hq, lt_of_le_of_ne hq.2 (fun e => hne e.symm)⟩⟩
%     · exact ⟨olo O, ⟨le_refl _, l.le⟩, fun Q ⟨hne, hq⟩ =>
%         (ordb_t hd).2 ⟨⟨le_refl _, l.le⟩, hq, lt_of_le_of_ne hq.1 hne⟩⟩
%   · rintro P Q C ⟨_, hne, hp, hq⟩                                    -- o5
%     have key : ∀ R, inco R (eO.symm (eC C, decide (P < Q))) ↔ inc R C := by
%       intro R; simp [inco, inc, olo, ohi, lo, hi]
%     refine ⟨eO.symm (eC C, decide (P < Q)), key, ?_⟩
%     rcases lt_or_gt_of_ne hne with h | h
%     · exact (ordb_t (by simp [odir, h])).2 ⟨(key P).2 hp, (key Q).2 hq, h⟩
%     · exact (ordb_f (by simp [odir, not_lt.2 h.le])).2 ⟨(key P).2 hp, (key Q).2 hq, h⟩
%   · intro O1 O2 h; exact ordb_ext h                                  -- o6
%   · intro C O                                                        -- underlying_curve_defn
%     show C = uc O ↔ ∀ P, (inco P O ↔ inc P C)
%     constructor
%     · rintro rfl; exact fun P => (inc_uc P O).symm
%     · intro h; exact inc_ext (fun P => (h P).symm.trans (inc_uc P O).symm)
%   · intro _ _ _; exact Iff.rfl                                       -- connect_defn
%   · intro A B                                                        -- symmetry_of_at_the_same_time
%     show once (ats A B) ↔ once (ats B A)
%     rw [once_ats, once_ats]
%     constructor
%     · rintro ⟨rfl, h⟩; exact ⟨rfl, h⟩
%     · rintro ⟨rfl, h⟩; exact ⟨rfl, h⟩
%   · intro A B C                                                      -- assciativity_of_at_the_same_time
%     show once (ats (ats A B) C) ↔ once (ats A (ats B C))
%     rw [once_ats (ats A B) C, once_ats A (ats B C)]
%     constructor
%     · rintro ⟨e, ho⟩
%       obtain ⟨h1, hA⟩ := (once_ats A B).1 ho
%       subst h1
%       rw [ats_self hA] at e
%       subst e
%       exact ⟨(ats_self hA).symm, hA⟩
%     · rintro ⟨e, hA⟩
%       by_cases hb : B = C ∧ once B
%       · obtain ⟨h1, hB⟩ := hb
%         subst h1
%         rw [ats_self hB] at e
%         subst e
%         exact ⟨ats_self hA, by rw [ats_self hA]; exact hA⟩
%       · exfalso
%         have h2 : ats B C = 2 := by
%           unfold ats; exact if_neg (fun h => hb ⟨h.1, h.2⟩)
%         rw [h2] at e
%         subst e
%         exact not_once_two hA
%   · intro A h; show once (ats A A); rw [ats_self h]; exact h         -- idempotence_of_at_the_same_time
%   · intro A B h                                                      -- conjunction_at_the_same_time
%     obtain ⟨e, hA⟩ := (once_ats A B).1 h
%     subst e; exact ⟨hA, hA⟩
%   · intro X P; show once (atf X P) ↔ inco P (traj X); rw [once_atf, inco_traj]   -- at_on_trajectory
%   · intro X; exact ⟨_, rfl⟩                                          -- trajectories_are_oriented_curves
%   · rintro P1 P2 Q1 Q2 X Y ⟨h1, h2⟩ ⟨o1, o2⟩                        -- homogeneous_behaviour
%     have e1 := same_time (X := X) (Y := Y) h1
%     have e2 := same_time (X := X) (Y := Y) h2
%     subst e1; subst e2
%     have a := (ordb_t (odir_traj X)).1 o1
%     have b := (ordb_t (odir_traj Y)).1 o2
%     linarith [a.2.2, b.2.2]
%   · intro A hA X                                                     -- localization
%     refine ⟨A, ?_⟩
%     show once (ats A (atf X A))
%     rw [atf_once hA, ats_self hA]; exact hA
% SZS output end Model for GEOFIX-ALL
%------------------------------------------------------------------------------
