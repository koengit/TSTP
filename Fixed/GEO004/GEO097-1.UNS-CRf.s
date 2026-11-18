%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO097-1, with Axioms/GEO004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Theorem 2.15 of Kulik and Eschenbach (two points on a curve bound a sub-curve). Lemma chain (E steps): Theorem 2.10, meet gives endpoints, and with the fix a sum of meeting curves contains both and only their points; then the final step (c4 split, two cases) as in the paper's proof.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004-0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for GEO097-1
% SZS output start CNFRefutation for GEO097-1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/GEO097-1/proof1.p
% Problem: Problems/GEO/GEO097-1.p
%------------------------------------------------------------------------------
cnf(part_of_defn_1, axiom, (~ part_of(A,B) | ~ incident_c(C,A) | incident_c(C,B)), file('Problems/GEO/GEO097-1.p',part_of_defn_1)).
cnf(part_of_defn_2, axiom, (incident_c(ax0_sk1(A,B),A) | part_of(A,B)), file('Problems/GEO/GEO097-1.p',part_of_defn_2)).
cnf(part_of_defn_3, axiom, (~ incident_c(ax0_sk1(A,B),B) | part_of(A,B)), file('Problems/GEO/GEO097-1.p',part_of_defn_3)).
cnf(c3_37, axiom, (inner_point(ax0_sk8(A),A)), file('Problems/GEO/GEO097-1.p',c3_37)).
cnf(c4_38, axiom, (~ inner_point(A,B) | meet(A,ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO097-1.p',c4_38)).
cnf(c4_39, axiom, (~ inner_point(A,B) | B = sum(ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO097-1.p',c4_39)).
cnf(end_point_defn_14, axiom, (~ end_point(A,B) | ~ part_of(C,B) | ~ part_of(D,B) | ~ incident_c(A,C) | ~ incident_c(A,D) | part_of(C,D) | part_of(D,C)), file('Problems/GEO/GEO097-1.p',end_point_defn_14)).
cnf(inner_point_defn_21, axiom, (~ inner_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO097-1.p',inner_point_defn_21)).
cnf(inner_point_defn_22, axiom, (~ inner_point(A,B) | ~ end_point(A,B)), file('Problems/GEO/GEO097-1.p',inner_point_defn_22)).
cnf(inner_point_defn_23, axiom, (~ incident_c(A,B) | end_point(A,B) | inner_point(A,B)), file('Problems/GEO/GEO097-1.p',inner_point_defn_23)).
cnf(meet_defn_24, axiom, (~ meet(A,B,C) | incident_c(A,B)), file('Problems/GEO/GEO097-1.p',meet_defn_24)).
cnf(meet_defn_25, axiom, (~ meet(A,B,C) | incident_c(A,C)), file('Problems/GEO/GEO097-1.p',meet_defn_25)).
cnf(meet_defn_26, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,B)), file('Problems/GEO/GEO097-1.p',meet_defn_26)).
cnf(meet_defn_27, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,C)), file('Problems/GEO/GEO097-1.p',meet_defn_27)).
cnf(sum_defn_4, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,A) | incident_c(D,B) | incident_c(D,C)), file('Problems/GEO/GEO097-1.p',sum_defn_4)).
cnf(sum_defn_5, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,B) | incident_c(D,A)), file('Problems/GEO/GEO097-1.p',sum_defn_5)).
cnf(sum_defn_6, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,C) | incident_c(D,A)), file('Problems/GEO/GEO097-1.p',sum_defn_6)).
cnf(end_point_defn_13, axiom, (~ end_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO097-1.p',end_point_defn_13)).
cnf(theorem_2_15_68, negated_conjecture, (incident_c(sk14,sk16)), file('Problems/GEO/GEO097-1.p',theorem_2_15_68)).
cnf(theorem_2_15_69, negated_conjecture, (incident_c(sk15,sk16)), file('Problems/GEO/GEO097-1.p',theorem_2_15_69)).
cnf(theorem_2_15_70, negated_conjecture, (~ part_of(A,sk16) | ~ end_point(sk14,A) | ~ end_point(sk15,A)), file('Problems/GEO/GEO097-1.p',theorem_2_15_70)).
cnf(l_pt, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(l_t210, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[c3_37,c4_38,c4_39,end_point_defn_14,inner_point_defn_21,inner_point_defn_22,inner_point_defn_23,l_pt,meet_defn_24,meet_defn_25,meet_defn_26,meet_defn_27,part_of_defn_1,part_of_defn_2,part_of_defn_3,sum_defn_4,sum_defn_5,sum_defn_6])).
cnf(l_me1, plain, (~ meet(P,A,B) | end_point(P,A)), inference(lemma,[status(thm)],[l_t210,meet_defn_24,meet_defn_25,meet_defn_26,part_of_defn_2,part_of_defn_3])).
cnf(l_me2, plain, (~ meet(P,A,B) | end_point(P,B)), inference(lemma,[status(thm)],[l_t210,meet_defn_24,meet_defn_25,meet_defn_27,part_of_defn_2,part_of_defn_3])).
cnf(l_sp1, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_5])).
cnf(l_sp2, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_6])).
cnf(l_si, plain, (~ meet(P,A,B) | C != sum(A,B) | ~ incident_c(Q,C) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(l_ep, plain, (~ end_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[end_point_defn_13])).
cnf(l_ie, plain, (~ incident_c(P,C) | end_point(P,C) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn_23])).
cnf(l_pr, plain, (part_of(C,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[c4_38,c4_39,l_ep,l_ie,l_me1,l_me2,l_pr,l_pt,l_si,l_sp1,l_sp2,l_t210,theorem_2_15_68,theorem_2_15_69,theorem_2_15_70])).
% SZS output end CNFRefutation for GEO097-1
