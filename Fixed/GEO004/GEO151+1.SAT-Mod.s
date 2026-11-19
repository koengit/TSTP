%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO151+1, with Axioms/GEO004+0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0 with Mathlib v4.35.0: `sat : TPTP.Satisfiable` compiles against a Statement.lean
%            generated mechanically from GEO151+1 with the fixed GEO004+0.ax, and depends only on
%            the axioms propext, Classical.choice, Quot.sound
% Comments : The fixed axioms are consistent. Domain Q; each element is a rational point, a closed rational
%            interval (a bijection Q = intervals) and an oriented interval (a bijection Q = intervals x
%            Bool); sum is the convex hull (the union when two curves meet); every object moves through
%            [0,1] in step. Against the unfixed TPTP v10.0.0 GEO004+0 the same model is rejected (the
%            unguarded sum_defn fails), as it must be: those axioms are inconsistent.
% Checking : Fixed/GEO004/check.sh GEO151+1
%------------------------------------------------------------------------------
% SZS status Satisfiable for GEO151+1
% SZS output start Model for GEO151+1
% import Mathlib
% import Statement
% /-! GEO151+1: T17 as stated does not follow. A model of the FIXED curve axioms GEO004+0 (sum_defn guarded by `? [P] : meet(P,C1,C2)`, as in Kulik and
% Eschenbach's partial sum) together with GEO004+1, GEO004+2 and GEO004+3 (unchanged).
%
% Domain ℚ. Every element plays three roles (TPTP is untyped):
% * as a point, q is the rational number q;
% * as a curve, q is the closed rational interval eC q = [lo q, hi q] (lo < hi), where eC : ℚ ≃ {intervals} is a bijection;
% * as an oriented curve, q is an interval with a direction, eO q, where eO : ℚ ≃ {intervals} × Bool.
% Defined predicates are interpreted by their definitions; the work is in characterising them on intervals
% (endpoints = the two bounds, meeting = adjacent intervals, ...). sum(C1,C2) is the convex hull, which is the union
% whenever the curves meet. Time (for GEO151+1, T17): events are intervals of instants, see the Time section. -/
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
% /-! ### Time
% An event is a closed interval [ta A, tb A] of instants, coded by eT : ℚ ≃ ℚ × ℚ; it happens (`once`) when
% 0 ≤ ta A ≤ tb A ≤ 2.  Two events are at the same time when both happen and they overlap; the joint event is
% their intersection.  Object 0 is at point 0 during [0,1] and at P ∈ (0,1] at instant 1+P; every other object
% is at P ∈ [0,1) at instant P and at 1 during [1,2]. -/
% noncomputable def eT : ℚ ≃ ℚ × ℚ := (Denumerable.eqv ℚ).trans (Denumerable.eqv (ℚ × ℚ)).symm
% attribute [irreducible] eT
% noncomputable def ta (A : ℚ) : ℚ := (eT A).1
% noncomputable def tb (A : ℚ) : ℚ := (eT A).2
% noncomputable def ev (a b : ℚ) : ℚ := eT.symm (a, b)
% @[simp] theorem ta_ev (a b : ℚ) : ta (ev a b) = a := by simp [ta, ev]
% @[simp] theorem tb_ev (a b : ℚ) : tb (ev a b) = b := by simp [tb, ev]
% abbrev unit (P : ℚ) : Prop := 0 ≤ P ∧ P ≤ 1
% abbrev once (A : ℚ) : Prop := 0 ≤ ta A ∧ ta A ≤ tb A ∧ tb A ≤ 2
% noncomputable def ats (A B : ℚ) : ℚ :=
%   if once A ∧ once B then ev (max (ta A) (ta B)) (min (tb A) (tb B)) else ev 1 0
% theorem once_ats (A B : ℚ) : once (ats A B) ↔ once A ∧ once B ∧ ta A ≤ tb B ∧ ta B ≤ tb A := by
%   unfold ats; split_ifs with h
%   · obtain ⟨⟨a1, a2, a3⟩, ⟨b1, b2, b3⟩⟩ := h
%     simp only [once, ta_ev, tb_ev, le_max_iff, max_le_iff, le_min_iff, min_le_iff]
%     tauto
%   · simp only [once, ta_ev, tb_ev]; constructor
%     · rintro ⟨_, h', _⟩; norm_num at h'
%     · rintro ⟨hA, hB, _⟩; exact absurd ⟨hA, hB⟩ h
% theorem once_comm (A B : ℚ) : once (ats A B) ↔ once (ats B A) := by
%   rw [once_ats, once_ats]; tauto
% theorem ta_ats {A B : ℚ} (h : once A ∧ once B) : ta (ats A B) = max (ta A) (ta B) := by
%   unfold ats; rw [if_pos h]; simp
% theorem tb_ats {A B : ℚ} (h : once A ∧ once B) : tb (ats A B) = min (tb A) (tb B) := by
%   unfold ats; rw [if_pos h]; simp
% theorem once_ats3 (A B C : ℚ) : once (ats (ats A B) C) ↔ once A ∧ once B ∧ once C ∧
%     ta A ≤ tb B ∧ ta B ≤ tb A ∧ ta A ≤ tb C ∧ ta C ≤ tb A ∧ ta B ≤ tb C ∧ ta C ≤ tb B := by
%   rw [once_ats]; constructor
%   · rintro ⟨hab, hC, h1, h2⟩
%     obtain ⟨hA, hB, h3, h4⟩ := (once_ats A B).1 hab
%     rw [ta_ats ⟨hA, hB⟩, max_le_iff] at h1; rw [tb_ats ⟨hA, hB⟩, le_min_iff] at h2
%     exact ⟨hA, hB, hC, h3, h4, h1.1, h2.1, h1.2, h2.2⟩
%   · rintro ⟨hA, hB, hC, h3, h4, h5, h6, h7, h8⟩
%     refine ⟨(once_ats A B).2 ⟨hA, hB, h3, h4⟩, hC, ?_, ?_⟩
%     · rw [ta_ats ⟨hA, hB⟩, max_le_iff]; exact ⟨h5, h7⟩
%     · rw [tb_ats ⟨hA, hB⟩, le_min_iff]; exact ⟨h6, h8⟩
% /-- start and end of the stay of object X at point P (for P ∈ [0,1]) -/
% def s (X P : ℚ) : ℚ := if X = 0 then (if P = 0 then 0 else 1 + P) else P
% def e (X P : ℚ) : ℚ := if X = 0 then (if P = 0 then 1 else 1 + P) else (if P = 1 then 2 else P)
% noncomputable def atf (X P : ℚ) : ℚ := if unit P then ev (s X P) (e X P) else ev 1 0
% theorem ta_atf {X P : ℚ} (h : unit P) : ta (atf X P) = s X P := by unfold atf; rw [if_pos h]; simp
% theorem tb_atf {X P : ℚ} (h : unit P) : tb (atf X P) = e X P := by unfold atf; rw [if_pos h]; simp
% theorem once_atf (X P : ℚ) : once (atf X P) ↔ unit P := by
%   by_cases h : unit P
%   · refine iff_of_true ?_ h
%     show 0 ≤ ta (atf X P) ∧ ta (atf X P) ≤ tb (atf X P) ∧ tb (atf X P) ≤ 2
%     rw [ta_atf h, tb_atf h]
%     obtain ⟨h0, h1⟩ := h
%     unfold s e; split_ifs <;> refine ⟨by linarith, by linarith, by linarith⟩
%   · refine iff_of_false ?_ h
%     show ¬ (0 ≤ ta (atf X P) ∧ ta (atf X P) ≤ tb (atf X P) ∧ tb (atf X P) ≤ 2)
%     unfold atf; rw [if_neg h]; simp
% /-- the stays of one object at two points are disjoint and ordered like the points -/
% theorem sep {X P Q : ℚ} (hP : unit P) (hQ : unit Q) (h : P < Q) : e X P < s X Q := by
%   obtain ⟨p0, p1⟩ := hP; obtain ⟨q0, q1⟩ := hQ
%   unfold e s; split_ifs <;> linarith
% theorem ov2 {X P Y Q : ℚ} (hu : unit P) (hv : unit Q) (h1 : s X P ≤ e Y Q) (h2 : s Y Q ≤ e X P) :
%     once (ats (atf X P) (atf Y Q)) :=
%   (once_ats _ _).2 ⟨(once_atf X P).2 hu, (once_atf Y Q).2 hv, by rw [ta_atf hu, tb_atf hv]; exact h1,
%     by rw [ta_atf hv, tb_atf hu]; exact h2⟩
% theorem ov1 {A X P : ℚ} (hA : once A) (hu : unit P) (h1 : ta A ≤ e X P) (h2 : s X P ≤ tb A) :
%     once (ats A (atf X P)) :=
%   (once_ats _ _).2 ⟨hA, (once_atf X P).2 hu, by rw [tb_atf hu]; exact h1, by rw [ta_atf hu]; exact h2⟩
%
% def T0 : Iv := ⟨(0, 1), by norm_num⟩
% noncomputable def traj (_X : ℚ) : ℚ := eO.symm (T0, true)
% theorem inco_traj (P X : ℚ) : inco P (traj X) ↔ unit P := by
%   simp [inco, traj, olo, ohi, T0, unit]
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
% end GF
%
% open GF TPTP
%
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
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
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
%   · intro A B; exact once_comm A B                                   -- symmetry_of_at_the_same_time
%   · intro A B C                                                      -- assciativity_of_at_the_same_time
%     show once (ats (ats A B) C) ↔ once (ats A (ats B C))
%     rw [once_ats3, once_comm A (ats B C), once_ats3]; tauto
%   · intro A h; exact (once_ats A A).2 ⟨h, h, h.2.1, h.2.1⟩           -- idempotence_of_at_the_same_time
%   · intro A B h                                                      -- conjunction_at_the_same_time
%     obtain ⟨hA, hB, -, -⟩ := (once_ats A B).1 h; exact ⟨hA, hB⟩
%   · intro X P; show once (atf X P) ↔ inco P (traj X); rw [once_atf, inco_traj]   -- at_on_trajectory
%   · intro X; exact ⟨_, rfl⟩                                          -- trajectories_are_oriented_curves
%   · rintro P1 P2 Q1 Q2 X Y ⟨h1, h2⟩ ⟨o1, o2⟩                        -- homogeneous_behaviour
%     change once (ats (atf X P1) (atf Y P2)) at h1
%     change once (ats (atf X Q1) (atf Y Q2)) at h2
%     change ordb (traj X) P1 Q1 at o1
%     change ordb (traj Y) Q2 P2 at o2
%     obtain ⟨a1, a2, a3⟩ := (ordb_t (odir_traj X)).1 o1
%     obtain ⟨b1, b2, b3⟩ := (ordb_t (odir_traj Y)).1 o2
%     rw [inco_traj] at a1 a2 b1 b2
%     obtain ⟨-, -, -, c2⟩ := (once_ats _ _).1 h1
%     obtain ⟨-, -, d1, -⟩ := (once_ats _ _).1 h2
%     rw [ta_atf b2, tb_atf a1] at c2
%     rw [ta_atf a2, tb_atf b1] at d1
%     have u := sep (X := X) a1 a2 a3
%     have v := sep (X := Y) b1 b2 b3
%     linarith
%   · intro A hA X                                                     -- localization
%     change once A at hA
%     show ∃ P, once (ats A (atf X P))
%     obtain ⟨a0, ab, b2⟩ := hA
%     rcases eq_or_ne X 0 with rfl | hX
%     · by_cases ha : ta A ≤ 1
%       · exact ⟨0, ov1 ⟨a0, ab, b2⟩ ⟨le_refl _, by norm_num⟩ (by unfold e; simp; linarith)
%           (by unfold s; simp; linarith)⟩
%       · have ha' := not_le.1 ha
%         have hne : ta A - 1 ≠ 0 := by intro h; linarith
%         exact ⟨ta A - 1, ov1 ⟨a0, ab, b2⟩ ⟨by linarith, by linarith⟩ (by unfold e; simp [hne])
%           (by unfold s; simp [hne]; linarith)⟩
%     · by_cases ha : ta A < 1
%       · have hne : ta A ≠ 1 := ne_of_lt ha
%         exact ⟨ta A, ov1 ⟨a0, ab, b2⟩ ⟨a0, ha.le⟩ (by unfold e; simp [hX, hne])
%           (by unfold s; simp [hX]; exact ab)⟩
%       · have ha' := not_lt.1 ha
%         exact ⟨1, ov1 ⟨a0, ab, b2⟩ ⟨by norm_num, le_refl _⟩ (by unfold e; simp [hX]; linarith)
%           (by unfold s; simp [hX]; linarith)⟩
%   · -- t17 (negated): object 0 waits at point 0 while object 1 passes 1/4 and 3/4
%     show ¬ _
%     simp only [I]
%     intro h
%     have u : ∀ q : ℚ, 0 ≤ q → q ≤ 1 → inco q (traj 0) := fun q a b => (inco_traj q 0).2 ⟨a, b⟩
%     have hbo : bo (traj 0) (1/4) (1/2) (3/4) := Or.inl
%       ⟨(ordb_t (odir_traj 0)).2 ⟨u _ (by norm_num) (by norm_num), u _ (by norm_num) (by norm_num), by norm_num⟩,
%        (ordb_t (odir_traj 0)).2 ⟨u _ (by norm_num) (by norm_num), u _ (by norm_num) (by norm_num), by norm_num⟩⟩
%     have h1 : once (ats (atf 0 0) (atf 1 (1/4))) :=
%       ov2 ⟨le_refl _, by norm_num⟩ ⟨by norm_num, by norm_num⟩ (by norm_num [s, e]) (by norm_num [s, e])
%     have h3 : once (ats (atf 0 0) (atf 1 (3/4))) :=
%       ov2 ⟨le_refl _, by norm_num⟩ ⟨by norm_num, by norm_num⟩ (by norm_num [s, e]) (by norm_num [s, e])
%     have := h 0 (1/4) (1/2) (3/4) 0 1 ⟨h1, h3, hbo⟩
%     obtain ⟨-, -, -, c⟩ := (once_ats _ _).1 this
%     rw [ta_atf ⟨by norm_num, by norm_num⟩, tb_atf ⟨le_refl _, by norm_num⟩] at c
%     norm_num [s, e] at c
% SZS output end Model for GEO151+1
%------------------------------------------------------------------------------
