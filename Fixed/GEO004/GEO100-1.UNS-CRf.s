%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO100-1, with Axioms/GEO004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004-0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for GEO100-1
% SZS output start CNFRefutation for GEO100-1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/ch2c/GEO100-1/proof1.p
% Problem: Problems/GEO/GEO100-1.p
%------------------------------------------------------------------------------
cnf(part_of_defn_1, axiom, (~ part_of(A,B) | ~ incident_c(C,A) | incident_c(C,B)), file('Problems/GEO/GEO100-1.p',part_of_defn_1)).
cnf(part_of_defn_2, axiom, (incident_c(ax0_sk1(A,B),A) | part_of(A,B)), file('Problems/GEO/GEO100-1.p',part_of_defn_2)).
cnf(part_of_defn_3, axiom, (~ incident_c(ax0_sk1(A,B),B) | part_of(A,B)), file('Problems/GEO/GEO100-1.p',part_of_defn_3)).
cnf(end_point_defn_14, axiom, (~ end_point(A,B) | ~ part_of(C,B) | ~ part_of(D,B) | ~ incident_c(A,C) | ~ incident_c(A,D) | part_of(C,D) | part_of(D,C)), file('Problems/GEO/GEO100-1.p',end_point_defn_14)).
cnf(end_point_defn_15, axiom, (~ incident_c(A,B) | part_of(ax0_sk3(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO100-1.p',end_point_defn_15)).
cnf(end_point_defn_16, axiom, (~ incident_c(A,B) | part_of(ax0_sk4(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO100-1.p',end_point_defn_16)).
cnf(end_point_defn_17, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO100-1.p',end_point_defn_17)).
cnf(end_point_defn_18, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO100-1.p',end_point_defn_18)).
cnf(end_point_defn_19, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk3(B,A),ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO100-1.p',end_point_defn_19)).
cnf(end_point_defn_20, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk4(B,A),ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO100-1.p',end_point_defn_20)).
cnf(meet_defn_24, axiom, (~ meet(A,B,C) | incident_c(A,B)), file('Problems/GEO/GEO100-1.p',meet_defn_24)).
cnf(meet_defn_25, axiom, (~ meet(A,B,C) | incident_c(A,C)), file('Problems/GEO/GEO100-1.p',meet_defn_25)).
cnf(meet_defn_26, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,B)), file('Problems/GEO/GEO100-1.p',meet_defn_26)).
cnf(meet_defn_27, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,C)), file('Problems/GEO/GEO100-1.p',meet_defn_27)).
cnf(sum_defn_5, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,B) | incident_c(D,A)), file('Problems/GEO/GEO100-1.p',sum_defn_5)).
cnf(sum_defn_6, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,C) | incident_c(D,A)), file('Problems/GEO/GEO100-1.p',sum_defn_6)).
cnf(sum_defn_4, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,A) | incident_c(D,B) | incident_c(D,C)), file('Problems/GEO/GEO100-1.p',sum_defn_4)).
cnf(end_point_defn_13, axiom, (~ end_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO100-1.p',end_point_defn_13)).
cnf(inner_point_defn_23, axiom, (~ incident_c(A,B) | end_point(A,B) | inner_point(A,B)), file('Problems/GEO/GEO100-1.p',inner_point_defn_23)).
cnf(c9_45, axiom, (incident_c(ax0_sk13(A,B),B) | incident_c(ax0_sk13(A,B),A) | B = A), file('Problems/GEO/GEO100-1.p',c9_45)).
cnf(c9_48, axiom, (~ incident_c(ax0_sk13(A,B),A) | ~ incident_c(ax0_sk13(A,B),B) | B = A), file('Problems/GEO/GEO100-1.p',c9_48)).
cnf(meet_defn_28, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | incident_c(ax0_sk5(C,B,A),B) | meet(A,B,C)), file('Problems/GEO/GEO100-1.p',meet_defn_28)).
cnf(meet_defn_29, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | incident_c(ax0_sk5(C,B,A),C) | meet(A,B,C)), file('Problems/GEO/GEO100-1.p',meet_defn_29)).
cnf(meet_defn_30, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | ~ end_point(ax0_sk5(C,B,A),B) | ~ end_point(ax0_sk5(C,B,A),C) | meet(A,B,C)), file('Problems/GEO/GEO100-1.p',meet_defn_30)).
cnf(c5_40, axiom, (~ end_point(A,B) | ~ end_point(C,B) | ~ end_point(D,B) | A = C | A = D | C = D), file('Problems/GEO/GEO100-1.p',c5_40)).
cnf(c4_38, axiom, (~ inner_point(A,B) | meet(A,ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO100-1.p',c4_38)).
cnf(c4_39, axiom, (~ inner_point(A,B) | B = sum(ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO100-1.p',c4_39)).
cnf(c2_36, axiom, (~ part_of(A,B) | ~ part_of(C,B) | ~ part_of(D,B) | ~ end_point(E,A) | ~ end_point(E,C) | ~ end_point(E,D) | part_of(C,D) | part_of(D,C) | part_of(A,C) | part_of(C,A) | part_of(A,D) | part_of(D,A)), file('Problems/GEO/GEO100-1.p',c2_36)).
cnf(open_defn_33, axiom, (~ open(A) | end_point(ax0_sk7(A),A)), file('Problems/GEO/GEO100-1.p',open_defn_33)).
cnf(open_defn_34, axiom, (~ end_point(A,B) | open(B)), file('Problems/GEO/GEO100-1.p',open_defn_34)).
cnf(sum_defn_11, axiom, (~ meet(SMP,B,A) | ~ incident_c(ax0_sk2(A,B,C),B) | ~ incident_c(ax0_sk2(A,B,C),C) | C = sum(B,A)), file('Problems/GEO/GEO100-1.p',sum_defn_11)).
cnf(sum_defn_12, axiom, (~ meet(SMP,B,A) | ~ incident_c(ax0_sk2(A,B,C),A) | ~ incident_c(ax0_sk2(A,B,C),C) | C = sum(B,A)), file('Problems/GEO/GEO100-1.p',sum_defn_12)).
cnf(sum_defn_7, axiom, (~ meet(SMP,B,A) | incident_c(ax0_sk2(A,B,C),C) | incident_c(ax0_sk2(A,B,C),B) | incident_c(ax0_sk2(A,B,C),A) | C = sum(B,A)), file('Problems/GEO/GEO100-1.p',sum_defn_7)).
cnf(c6_41, axiom, (~ end_point(A,B) | end_point(ax0_sk11(A,B),B)), file('Problems/GEO/GEO100-1.p',c6_41)).
cnf(c6_42, axiom, (~ end_point(A,B) | A != ax0_sk11(A,B)), file('Problems/GEO/GEO100-1.p',c6_42)).
cnf(theorem_2_18_67, negated_conjecture, (open(sk14)), file('Problems/GEO/GEO100-1.p',theorem_2_18_67)).
cnf(theorem_2_18_68, negated_conjecture, (part_of(sk15,sk14)), file('Problems/GEO/GEO100-1.p',theorem_2_18_68)).
cnf(theorem_2_18_69, negated_conjecture, (sk15 != sk14), file('Problems/GEO/GEO100-1.p',theorem_2_18_69)).
cnf(theorem_2_18_70, negated_conjecture, (end_point(sk16,sk15)), file('Problems/GEO/GEO100-1.p',theorem_2_18_70)).
cnf(theorem_2_18_71, negated_conjecture, (end_point(sk16,sk14)), file('Problems/GEO/GEO100-1.p',theorem_2_18_71)).
cnf(theorem_2_18_72, negated_conjecture, (sk16 = A | ~ meet(A,sk15,B) | sk14 != sum(sk15,B)), file('Problems/GEO/GEO100-1.p',theorem_2_18_72)).
cnf(l_pt, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(l_t210, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn_14,end_point_defn_15,end_point_defn_16,end_point_defn_17,end_point_defn_18,end_point_defn_19,end_point_defn_20,l_pt,part_of_defn_2,part_of_defn_3])).
cnf(l_me1, plain, (~ meet(P,A,B) | end_point(P,A)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_26])).
cnf(l_me2, plain, (~ meet(P,A,B) | end_point(P,B)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_27])).
cnf(l_sp1, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_5])).
cnf(l_sp2, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_6])).
cnf(l_si, plain, (~ meet(P,A,B) | C != sum(A,B) | ~ incident_c(Q,C) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(l_ep, plain, (~ end_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[end_point_defn_13])).
cnf(l_ie, plain, (~ incident_c(P,C) | end_point(P,C) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn_23])).
cnf(l_pr, plain, (part_of(C,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3])).
cnf(l_pa, plain, (~ part_of(A,B) | ~ part_of(B,A) | A = B), inference(lemma,[status(thm)],[c9_45,c9_48,part_of_defn_1])).
cnf(l_msym, plain, (~ meet(P,A,B) | meet(P,B,A)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_26,meet_defn_27,meet_defn_28,meet_defn_29,meet_defn_30])).
cnf(l_mi2, plain, (~ meet(P,A,B) | incident_c(P,B)), inference(lemma,[status(thm)],[meet_defn_25])).
cnf(l_c5, plain, (~ end_point(P,C) | ~ end_point(Q,C) | ~ end_point(R,C) | P = Q | P = R | Q = R), inference(lemma,[status(thm)],[c5_40])).
cnf(l_pinc, plain, (~ part_of(A,B) | ~ incident_c(P,A) | incident_c(P,B)), inference(lemma,[status(thm)],[part_of_defn_1])).
cnf(g_cmp, plain, (~ part_of(C1,C3) | ~ part_of(C2,C3) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[end_point_defn_14,l_ep])).
cnf(g_rinner, plain, (~ part_of(C1,C2) | ~ end_point(P,C1) | ~ end_point(Q,C1) | ~ end_point(P,C2) | ~ end_point(Q,C2) | P = Q | ~ incident_c(R,C2) | incident_c(R,C1) | inner_point(R,C2)), inference(lemma,[status(thm)],[l_c5,l_ep,l_ie])).
cnf(g_in_piece, plain, (~ part_of(C1,C2) | ~ part_of(D,C2) | ~ end_point(P,C2) | ~ incident_c(P,C1) | ~ incident_c(P,D) | ~ incident_c(R,D) | incident_c(R,C1) | part_of(C1,D)), inference(lemma,[status(thm)],[end_point_defn_14,l_pinc])).
cnf(g_three, plain, (~ part_of(D,C2) | ~ end_point(P,C2) | ~ end_point(Q,C2) | ~ incident_c(P,D) | ~ incident_c(Q,D) | ~ end_point(R,D) | P = Q | R = P | R = Q), inference(lemma,[status(thm)],[l_c5,l_t210])).
cnf(g_core, plain, (~ part_of(C1,C2) | ~ end_point(P,C1) | ~ end_point(Q,C1) | ~ end_point(P,C2) | ~ end_point(Q,C2) | P = Q | ~ incident_c(R,C2) | incident_c(R,C1)), inference(lemma,[status(thm)],[c4_38,c4_39,g_in_piece,g_rinner,g_three,l_ep,l_me1,l_me2,l_mi2,l_pinc,l_si,l_sp1,l_sp2])).
cnf(g_s2, plain, (~ part_of(C1,C3) | ~ part_of(C2,C3) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | ~ end_point(Q,C1) | ~ end_point(Q,C2) | P = Q | C1 = C2), inference(lemma,[status(thm)],[g_cmp,g_core,l_pa,part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(t2_13, plain, (~ part_of(C1,C) | ~ part_of(C2,C) | ~ open(C) | P = Q | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(Q,C1) | ~ end_point(Q,C2) | C1 = C2), inference(lemma,[status(thm)],[c2_36,c4_38,c4_39,g_s2,l_c5,l_ep,l_ie,l_me1,l_me2,l_pinc,l_pt,l_si,l_sp1,l_sp2,l_t210,open_defn_33,open_defn_34])).
cnf(l_sumin, plain, (~ meet(P,A,B) | ~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(l_scomm, plain, (~ meet(P,A,B) | sum(A,B) = sum(B,A)), inference(lemma,[status(thm)],[l_msym,sum_defn_11,sum_defn_12,sum_defn_4,sum_defn_5,sum_defn_6,sum_defn_7])).
cnf(q2, plain, (~ open(C) | ~ part_of(C1,C) | C1 = C | ~ end_point(P,C1) | ~ end_point(P,C) | ~ end_point(Q,C1) | P = Q | ~ end_point(Q,C)), inference(lemma,[status(thm)],[l_pr,t2_13])).
cnf(q3, plain, (~ open(C) | ~ part_of(C1,C) | ~ end_point(P,C1) | ~ end_point(Q,C1) | P = Q | ~ end_point(P,C) | ~ meet(Q,D1,D2) | C != sum(D1,D2) | ~ incident_c(P,D1) | D1 = C1), inference(lemma,[status(thm)],[l_me1,l_sp1,l_t210,t2_13])).
cnf(q3b, plain, (~ open(C) | ~ part_of(C1,C) | ~ end_point(P,C1) | ~ end_point(Q,C1) | P = Q | ~ end_point(P,C) | ~ meet(Q,D1,D2) | C != sum(D1,D2) | ~ incident_c(P,D2) | D2 = C1), inference(lemma,[status(thm)],[l_me2,l_sp2,l_t210,t2_13])).
cnf(q4, plain, (~ open(C) | ~ part_of(C1,C) | C1 = C | ~ end_point(P,C1) | ~ end_point(P,C) | ~ end_point(Q,C1) | P = Q | inner_point(Q,C)), inference(lemma,[status(thm)],[l_ep,l_ie,l_pinc,q2])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[c4_38,c4_39,c6_41,c6_42,l_ep,l_msym,l_scomm,l_sumin,q3,q3b,q4,theorem_2_18_67,theorem_2_18_68,theorem_2_18_69,theorem_2_18_70,theorem_2_18_71,theorem_2_18_72])).
% SZS output end CNFRefutation for GEO100-1
