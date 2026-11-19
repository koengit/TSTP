%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO108-1, with Axioms/GEO004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified locally against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004-0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for GEO108-1
% SZS output start CNFRefutation for GEO108-1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/ch3/GEO108-1/proof1.p
% Problem: Problems/GEO/GEO108-1.p
%------------------------------------------------------------------------------
cnf(part_of_defn_1, axiom, (~ part_of(A,B) | ~ incident_c(C,A) | incident_c(C,B)), file('Problems/GEO/GEO108-1.p',part_of_defn_1)).
cnf(part_of_defn_2, axiom, (incident_c(ax0_sk1(A,B),A) | part_of(A,B)), file('Problems/GEO/GEO108-1.p',part_of_defn_2)).
cnf(part_of_defn_3, axiom, (~ incident_c(ax0_sk1(A,B),B) | part_of(A,B)), file('Problems/GEO/GEO108-1.p',part_of_defn_3)).
cnf(end_point_defn_14, axiom, (~ end_point(A,B) | ~ part_of(C,B) | ~ part_of(D,B) | ~ incident_c(A,C) | ~ incident_c(A,D) | part_of(C,D) | part_of(D,C)), file('Problems/GEO/GEO108-1.p',end_point_defn_14)).
cnf(end_point_defn_15, axiom, (~ incident_c(A,B) | part_of(ax0_sk3(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO108-1.p',end_point_defn_15)).
cnf(end_point_defn_16, axiom, (~ incident_c(A,B) | part_of(ax0_sk4(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO108-1.p',end_point_defn_16)).
cnf(end_point_defn_17, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO108-1.p',end_point_defn_17)).
cnf(end_point_defn_18, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO108-1.p',end_point_defn_18)).
cnf(end_point_defn_19, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk3(B,A),ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO108-1.p',end_point_defn_19)).
cnf(end_point_defn_20, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk4(B,A),ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO108-1.p',end_point_defn_20)).
cnf(meet_defn_24, axiom, (~ meet(A,B,C) | incident_c(A,B)), file('Problems/GEO/GEO108-1.p',meet_defn_24)).
cnf(meet_defn_25, axiom, (~ meet(A,B,C) | incident_c(A,C)), file('Problems/GEO/GEO108-1.p',meet_defn_25)).
cnf(meet_defn_26, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,B)), file('Problems/GEO/GEO108-1.p',meet_defn_26)).
cnf(meet_defn_27, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,C)), file('Problems/GEO/GEO108-1.p',meet_defn_27)).
cnf(sum_defn_5, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,B) | incident_c(D,A)), file('Problems/GEO/GEO108-1.p',sum_defn_5)).
cnf(sum_defn_6, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,C) | incident_c(D,A)), file('Problems/GEO/GEO108-1.p',sum_defn_6)).
cnf(sum_defn_4, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,A) | incident_c(D,B) | incident_c(D,C)), file('Problems/GEO/GEO108-1.p',sum_defn_4)).
cnf(end_point_defn_13, axiom, (~ end_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO108-1.p',end_point_defn_13)).
cnf(inner_point_defn_21, axiom, (~ inner_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO108-1.p',inner_point_defn_21)).
cnf(inner_point_defn_23, axiom, (~ incident_c(A,B) | end_point(A,B) | inner_point(A,B)), file('Problems/GEO/GEO108-1.p',inner_point_defn_23)).
cnf(c9_45, axiom, (incident_c(ax0_sk13(A,B),B) | incident_c(ax0_sk13(A,B),A) | B = A), file('Problems/GEO/GEO108-1.p',c9_45)).
cnf(c9_48, axiom, (~ incident_c(ax0_sk13(A,B),A) | ~ incident_c(ax0_sk13(A,B),B) | B = A), file('Problems/GEO/GEO108-1.p',c9_48)).
cnf(meet_defn_28, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | incident_c(ax0_sk5(C,B,A),B) | meet(A,B,C)), file('Problems/GEO/GEO108-1.p',meet_defn_28)).
cnf(meet_defn_29, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | incident_c(ax0_sk5(C,B,A),C) | meet(A,B,C)), file('Problems/GEO/GEO108-1.p',meet_defn_29)).
cnf(meet_defn_30, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | ~ end_point(ax0_sk5(C,B,A),B) | ~ end_point(ax0_sk5(C,B,A),C) | meet(A,B,C)), file('Problems/GEO/GEO108-1.p',meet_defn_30)).
cnf(inner_point_defn_22, axiom, (~ inner_point(A,B) | ~ end_point(A,B)), file('Problems/GEO/GEO108-1.p',inner_point_defn_22)).
cnf(c3_37, axiom, (inner_point(ax0_sk8(A),A)), file('Problems/GEO/GEO108-1.p',c3_37)).
cnf(c5_40, axiom, (~ end_point(A,B) | ~ end_point(C,B) | ~ end_point(D,B) | A = C | A = D | C = D), file('Problems/GEO/GEO108-1.p',c5_40)).
cnf(c4_38, axiom, (~ inner_point(A,B) | meet(A,ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO108-1.p',c4_38)).
cnf(c4_39, axiom, (~ inner_point(A,B) | B = sum(ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO108-1.p',c4_39)).
cnf(c2_36, axiom, (~ part_of(A,B) | ~ part_of(C,B) | ~ part_of(D,B) | ~ end_point(E,A) | ~ end_point(E,C) | ~ end_point(E,D) | part_of(C,D) | part_of(D,C) | part_of(A,C) | part_of(C,A) | part_of(A,D) | part_of(D,A)), file('Problems/GEO/GEO108-1.p',c2_36)).
cnf(open_defn_33, axiom, (~ open(A) | end_point(ax0_sk7(A),A)), file('Problems/GEO/GEO108-1.p',open_defn_33)).
cnf(open_defn_34, axiom, (~ end_point(A,B) | open(B)), file('Problems/GEO/GEO108-1.p',open_defn_34)).
cnf(sum_defn_11, axiom, (~ meet(SMP,B,A) | ~ incident_c(ax0_sk2(A,B,C),B) | ~ incident_c(ax0_sk2(A,B,C),C) | C = sum(B,A)), file('Problems/GEO/GEO108-1.p',sum_defn_11)).
cnf(sum_defn_12, axiom, (~ meet(SMP,B,A) | ~ incident_c(ax0_sk2(A,B,C),A) | ~ incident_c(ax0_sk2(A,B,C),C) | C = sum(B,A)), file('Problems/GEO/GEO108-1.p',sum_defn_12)).
cnf(sum_defn_7, axiom, (~ meet(SMP,B,A) | incident_c(ax0_sk2(A,B,C),C) | incident_c(ax0_sk2(A,B,C),B) | incident_c(ax0_sk2(A,B,C),A) | C = sum(B,A)), file('Problems/GEO/GEO108-1.p',sum_defn_7)).
cnf(c6_41, axiom, (~ end_point(A,B) | end_point(ax0_sk11(A,B),B)), file('Problems/GEO/GEO108-1.p',c6_41)).
cnf(c6_42, axiom, (~ end_point(A,B) | A != ax0_sk11(A,B)), file('Problems/GEO/GEO108-1.p',c6_42)).
cnf(c7_43, axiom, (~ closed(A) | ~ meet(B,C,D) | A != sum(C,D) | ~ end_point(E,C) | meet(E,C,D)), file('Problems/GEO/GEO108-1.p',c7_43)).
cnf(closed_defn_32, axiom, (end_point(ax0_sk6(A),A) | closed(A)), file('Problems/GEO/GEO108-1.p',closed_defn_32)).
cnf(closed_defn_31, axiom, (~ closed(A) | ~ end_point(B,A)), file('Problems/GEO/GEO108-1.p',closed_defn_31)).
cnf(between_c_defn_3, axiom, (~ between_c(A,B,C,D) | end_point(B,ax1_sk1(D,C,B,A))), file('Problems/GEO/GEO108-1.p',between_c_defn_3)).
cnf(between_c_defn_5, axiom, (~ between_c(A,B,C,D) | inner_point(C,ax1_sk1(D,C,B,A))), file('Problems/GEO/GEO108-1.p',between_c_defn_5)).
cnf(between_c_defn_4, axiom, (~ between_c(A,B,C,D) | end_point(D,ax1_sk1(D,C,B,A))), file('Problems/GEO/GEO108-1.p',between_c_defn_4)).
cnf(between_c_defn_1, axiom, (~ between_c(A,B,C,D) | B != D), file('Problems/GEO/GEO108-1.p',between_c_defn_1)).
cnf(between_c_defn_2, axiom, (~ between_c(A,B,C,D) | part_of(ax1_sk1(D,C,B,A),A)), file('Problems/GEO/GEO108-1.p',between_c_defn_2)).
cnf(between_c_defn_6, axiom, (A = B | ~ part_of(C,D) | ~ end_point(A,C) | ~ end_point(B,C) | ~ inner_point(E,C) | between_c(D,A,E,B)), file('Problems/GEO/GEO108-1.p',between_c_defn_6)).
cnf(between_c2_defn_85, hypothesis, (~ between_c2(A,B,C,D) | B != C), file('Problems/GEO/GEO108-1.p',between_c2_defn_85)).
cnf(between_c2_defn_86, hypothesis, (~ between_c2(A,B,C,D) | B != D), file('Problems/GEO/GEO108-1.p',between_c2_defn_86)).
cnf(between_c2_defn_87, hypothesis, (~ between_c2(A,B,C,D) | C != D), file('Problems/GEO/GEO108-1.p',between_c2_defn_87)).
cnf(between_c2_defn_88, hypothesis, (~ between_c2(A,B,C,D) | meet(C,sk15(D,C,B,A),sk16(D,C,B,A))), file('Problems/GEO/GEO108-1.p',between_c2_defn_88)).
cnf(between_c2_defn_89, hypothesis, (~ between_c2(A,B,C,D) | part_of(sk15(D,C,B,A),A)), file('Problems/GEO/GEO108-1.p',between_c2_defn_89)).
cnf(between_c2_defn_90, hypothesis, (~ between_c2(A,B,C,D) | part_of(sk16(D,C,B,A),A)), file('Problems/GEO/GEO108-1.p',between_c2_defn_90)).
cnf(between_c2_defn_91, hypothesis, (~ between_c2(A,B,C,D) | end_point(B,sk15(D,C,B,A))), file('Problems/GEO/GEO108-1.p',between_c2_defn_91)).
cnf(between_c2_defn_92, hypothesis, (~ between_c2(A,B,C,D) | end_point(D,sk16(D,C,B,A))), file('Problems/GEO/GEO108-1.p',between_c2_defn_92)).
cnf(between_c3_defn_101, hypothesis, (A = B | A = C | B = C | ~ meet(B,D,E) | sum(D,E) != F | ~ incident_c(A,D) | ~ incident_c(C,E) | between_c3(F,A,B,C)), file('Problems/GEO/GEO108-1.p',between_c3_defn_101)).
cnf(between_c2_defn_93, hypothesis, (A = B | A = C | B = C | ~ meet(B,D,E) | ~ part_of(D,F) | ~ part_of(E,F) | ~ end_point(A,D) | ~ end_point(C,E) | between_c2(F,A,B,C)), file('Problems/GEO/GEO108-1.p',between_c2_defn_93)).
cnf(between_c3_defn_100, hypothesis, (~ between_c3(A,B,C,D) | incident_c(D,sk18(D,C,B,A))), file('Problems/GEO/GEO108-1.p',between_c3_defn_100)).
cnf(between_c3_defn_94, hypothesis, (~ between_c3(A,B,C,D) | B != C), file('Problems/GEO/GEO108-1.p',between_c3_defn_94)).
cnf(between_c3_defn_95, hypothesis, (~ between_c3(A,B,C,D) | B != D), file('Problems/GEO/GEO108-1.p',between_c3_defn_95)).
cnf(between_c3_defn_96, hypothesis, (~ between_c3(A,B,C,D) | C != D), file('Problems/GEO/GEO108-1.p',between_c3_defn_96)).
cnf(between_c3_defn_97, hypothesis, (~ between_c3(A,B,C,D) | meet(C,sk17(D,C,B,A),sk18(D,C,B,A))), file('Problems/GEO/GEO108-1.p',between_c3_defn_97)).
cnf(between_c3_defn_98, hypothesis, (~ between_c3(A,B,C,D) | sum(sk17(D,C,B,A),sk18(D,C,B,A)) = A), file('Problems/GEO/GEO108-1.p',between_c3_defn_98)).
cnf(between_c3_defn_99, hypothesis, (~ between_c3(A,B,C,D) | incident_c(B,sk17(D,C,B,A))), file('Problems/GEO/GEO108-1.p',between_c3_defn_99)).
cnf(theorem_3_5_102, negated_conjecture, (between_c2(sk19,sk20,sk21,sk22) | between_c3(sk19,sk20,sk21,sk22)), file('Problems/GEO/GEO108-1.p',theorem_3_5_102)).
cnf(theorem_3_5_105, negated_conjecture, (~ between_c3(sk19,sk20,sk21,sk22) | ~ between_c2(sk19,sk20,sk21,sk22)), file('Problems/GEO/GEO108-1.p',theorem_3_5_105)).
cnf(l_pt, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(l_t210, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn_14,end_point_defn_15,end_point_defn_16,end_point_defn_17,end_point_defn_18,end_point_defn_19,end_point_defn_20,l_pt,part_of_defn_2,part_of_defn_3])).
cnf(l_me1, plain, (~ meet(P,A,B) | end_point(P,A)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_26])).
cnf(l_me2, plain, (~ meet(P,A,B) | end_point(P,B)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_27])).
cnf(l_sp1, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_5])).
cnf(l_sp2, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_6])).
cnf(l_si, plain, (~ meet(P,A,B) | C != sum(A,B) | ~ incident_c(Q,C) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(l_ep, plain, (~ end_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[end_point_defn_13])).
cnf(l_ip, plain, (~ inner_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[inner_point_defn_21])).
cnf(l_ie, plain, (~ incident_c(P,C) | end_point(P,C) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn_23])).
cnf(l_pr, plain, (part_of(C,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3])).
cnf(l_pa, plain, (~ part_of(A,B) | ~ part_of(B,A) | A = B), inference(lemma,[status(thm)],[c9_45,c9_48,part_of_defn_1])).
cnf(l_msym, plain, (~ meet(P,A,B) | meet(P,B,A)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_26,meet_defn_27,meet_defn_28,meet_defn_29,meet_defn_30])).
cnf(l_mi1, plain, (~ meet(P,A,B) | incident_c(P,A)), inference(lemma,[status(thm)],[meet_defn_24])).
cnf(l_mi2, plain, (~ meet(P,A,B) | incident_c(P,B)), inference(lemma,[status(thm)],[meet_defn_25])).
cnf(l_mc1, plain, (~ meet(P,A,B) | ~ incident_c(Q,A) | ~ incident_c(Q,B) | end_point(Q,A)), inference(lemma,[status(thm)],[meet_defn_26])).
cnf(l_mc2, plain, (~ meet(P,A,B) | ~ incident_c(Q,A) | ~ incident_c(Q,B) | end_point(Q,B)), inference(lemma,[status(thm)],[meet_defn_27])).
cnf(l_ine, plain, (~ inner_point(P,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn_22])).
cnf(l_c29, plain, (~ part_of(A,B) | ~ meet(P,A,B)), inference(lemma,[status(thm)],[c3_37,inner_point_defn_21,inner_point_defn_22,meet_defn_26,part_of_defn_1])).
cnf(l_c211, plain, (~ part_of(D,C) | ~ inner_point(P,D) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn_21,inner_point_defn_22,inner_point_defn_23,l_t210,part_of_defn_1])).
cnf(l_c212, plain, (~ part_of(C2,C1) | ~ incident_c(P,C2) | ~ meet(P,C1,C3) | meet(P,C2,C3)), inference(lemma,[status(thm)],[l_t210,meet_defn_25,meet_defn_26,meet_defn_27,meet_defn_28,meet_defn_29,meet_defn_30,part_of_defn_1])).
cnf(l_c5, plain, (~ end_point(P,C) | ~ end_point(Q,C) | ~ end_point(R,C) | P = Q | P = R | Q = R), inference(lemma,[status(thm)],[c5_40])).
cnf(l_pinc, plain, (~ part_of(A,B) | ~ incident_c(P,A) | incident_c(P,B)), inference(lemma,[status(thm)],[part_of_defn_1])).
cnf(g_cmp, plain, (~ part_of(C1,C3) | ~ part_of(C2,C3) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[end_point_defn_14,l_ep])).
cnf(g_rinner, plain, (~ part_of(C1,C2) | ~ end_point(P,C1) | ~ end_point(Q,C1) | ~ end_point(P,C2) | ~ end_point(Q,C2) | P = Q | ~ incident_c(R,C2) | incident_c(R,C1) | inner_point(R,C2)), inference(lemma,[status(thm)],[l_c5,l_ep,l_ie])).
cnf(g_in_piece, plain, (~ part_of(C1,C2) | ~ part_of(D,C2) | ~ end_point(P,C2) | ~ incident_c(P,C1) | ~ incident_c(P,D) | ~ incident_c(R,D) | incident_c(R,C1) | part_of(C1,D)), inference(lemma,[status(thm)],[end_point_defn_14,l_pinc])).
cnf(g_three, plain, (~ part_of(D,C2) | ~ end_point(P,C2) | ~ end_point(Q,C2) | ~ incident_c(P,D) | ~ incident_c(Q,D) | ~ end_point(R,D) | P = Q | R = P | R = Q), inference(lemma,[status(thm)],[l_c5,l_t210])).
cnf(g_core, plain, (~ part_of(C1,C2) | ~ end_point(P,C1) | ~ end_point(Q,C1) | ~ end_point(P,C2) | ~ end_point(Q,C2) | P = Q | ~ incident_c(R,C2) | incident_c(R,C1)), inference(lemma,[status(thm)],[c4_38,c4_39,g_in_piece,g_rinner,g_three,l_ep,l_me1,l_me2,l_mi2,l_pinc,l_si,l_sp1,l_sp2])).
cnf(g_s2, plain, (~ part_of(C1,C3) | ~ part_of(C2,C3) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | ~ end_point(Q,C1) | ~ end_point(Q,C2) | P = Q | C1 = C2), inference(lemma,[status(thm)],[g_cmp,g_core,l_pa,part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(t2_13, plain, (~ part_of(C1,C) | ~ part_of(C2,C) | ~ open(C) | P = Q | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(Q,C1) | ~ end_point(Q,C2) | C1 = C2), inference(lemma,[status(thm)],[c2_36,c4_38,c4_39,g_s2,l_c5,l_ep,l_ie,l_me1,l_me2,l_pinc,l_pt,l_si,l_sp1,l_sp2,l_t210,open_defn_33,open_defn_34])).
cnf(t2_14_3, plain, (~ meet(P,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[end_point_defn_14,l_c29,l_mi1,l_mi2,l_msym])).
cnf(l_sumpart, plain, (~ meet(P,A,B) | ~ part_of(A,C) | ~ part_of(B,C) | part_of(sum(A,B),C)), inference(lemma,[status(thm)],[l_si,part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(l_sumself, plain, (~ meet(P,A,B) | incident_c(Q,sum(A,B)) | ~ incident_c(Q,A)), inference(lemma,[status(thm)],[sum_defn_5])).
cnf(l_sumself2, plain, (~ meet(P,A,B) | incident_c(Q,sum(A,B)) | ~ incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_6])).
cnf(l_sumin, plain, (~ meet(P,A,B) | ~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(l_sp1s, plain, (~ meet(P,A,B) | part_of(A,sum(A,B))), inference(lemma,[status(thm)],[l_sp1])).
cnf(l_sp2s, plain, (~ meet(P,A,B) | part_of(B,sum(A,B))), inference(lemma,[status(thm)],[l_sp2])).
cnf(p14a, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | ~ incident_c(R,C1) | ~ incident_c(R,C2)), inference(lemma,[status(thm)],[end_point_defn_14,l_c29,l_msym,l_sp1s,l_sp2s])).
cnf(p14b, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | R != P), inference(lemma,[status(thm)],[l_sp1s,l_sp2s,t2_14_3])).
cnf(p14c, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | ~ incident_c(R,C1) | Q = P | ~ incident_c(Q,C1) | ~ incident_c(Q,C2)), inference(lemma,[status(thm)],[l_c5,l_mc1,l_me1,l_sp1s,l_t210,p14a,p14b])).
cnf(p14d, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | ~ incident_c(R,C2) | Q = P | ~ incident_c(Q,C1) | ~ incident_c(Q,C2)), inference(lemma,[status(thm)],[l_c5,l_mc2,l_me2,l_sp2s,l_t210,p14a,p14b])).
cnf(t2_14_1, plain, (~ meet(P,C1,C2) | ~ open(sum(C1,C2)) | Q = P | ~ incident_c(Q,C1) | ~ incident_c(Q,C2)), inference(lemma,[status(thm)],[l_ep,l_sumin,open_defn_33,p14c,p14d])).
cnf(l_scomm, plain, (~ meet(P,A,B) | sum(A,B) = sum(B,A)), inference(lemma,[status(thm)],[l_msym,sum_defn_11,sum_defn_12,sum_defn_4,sum_defn_5,sum_defn_6,sum_defn_7])).
cnf(q2, plain, (~ open(C) | ~ part_of(C1,C) | C1 = C | ~ end_point(P,C1) | ~ end_point(P,C) | ~ end_point(Q,C1) | P = Q | ~ end_point(Q,C)), inference(lemma,[status(thm)],[l_pr,t2_13])).
cnf(q3, plain, (~ open(C) | ~ part_of(C1,C) | ~ end_point(P,C1) | ~ end_point(Q,C1) | P = Q | ~ end_point(P,C) | ~ meet(Q,D1,D2) | C != sum(D1,D2) | ~ incident_c(P,D1) | D1 = C1), inference(lemma,[status(thm)],[l_me1,l_sp1,l_t210,t2_13])).
cnf(q3b, plain, (~ open(C) | ~ part_of(C1,C) | ~ end_point(P,C1) | ~ end_point(Q,C1) | P = Q | ~ end_point(P,C) | ~ meet(Q,D1,D2) | C != sum(D1,D2) | ~ incident_c(P,D2) | D2 = C1), inference(lemma,[status(thm)],[l_me2,l_sp2,l_t210,t2_13])).
cnf(q4, plain, (~ open(C) | ~ part_of(C1,C) | C1 = C | ~ end_point(P,C1) | ~ end_point(P,C) | ~ end_point(Q,C1) | P = Q | inner_point(Q,C)), inference(lemma,[status(thm)],[l_ep,l_ie,l_pinc,q2])).
fof(t2_15f, plain, (! [P,Q,C] : ((P != Q & incident_c(P,C) & incident_c(Q,C)) => (? [D] : (part_of(D,C) & end_point(P,D) & end_point(Q,D))))), inference(lemma,[status(thm)],[c4_38,c4_39,l_ep,l_ie,l_me1,l_me2,l_pr,l_pt,l_si,l_sp1,l_sp2,l_t210])).
fof(t2_18f, plain, (! [C,C1,P] : ((open(C) & part_of(C1,C) & C1 != C & end_point(P,C1) & end_point(P,C)) => (? [Q,C2] : (P != Q & meet(Q,C1,C2) & C = sum(C1,C2))))), inference(lemma,[status(thm)],[c4_38,c4_39,c6_41,c6_42,l_ep,l_msym,l_scomm,l_sumin,q3,q3b,q4])).
cnf(t2_6_1, plain, (~ part_of(C2,C3) | ~ meet(P,C1,C2) | ~ meet(P,C1,C3) | part_of(sum(C1,C2),sum(C1,C3))), inference(lemma,[status(thm)],[l_sumin,l_sumself,l_sumself2,part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(t2_20, plain, (~ part_of(C3,C1) | ~ part_of(C3,C2) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | ~ part_of(C1,C) | ~ part_of(C2,C) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[c2_36,l_c29,l_c5,l_me1,l_me2,l_msym,l_pt,l_sp2,open_defn_34,t2_18f,t2_6_1])).
cnf(t2_21, plain, (~ open(C) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C1) | ~ end_point(P,C2) | P = Q | ~ incident_c(Q,C1) | ~ incident_c(Q,C2) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[l_ep,l_pt,t2_13,t2_15f,t2_20])).
cnf(t2_22, plain, (~ end_point(P,C1) | ~ end_point(P,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ open(C) | meet(P,C1,C2) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[l_ep,l_pt,meet_defn_28,meet_defn_29,meet_defn_30,t2_13,t2_15f,t2_20])).
cnf(k1, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ end_point(Q,C4) | meet(Q,C3,C4)), inference(lemma,[status(thm)],[c7_43,l_msym,l_scomm])).
cnf(k1b, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ end_point(Q,C3) | meet(Q,C3,C4)), inference(lemma,[status(thm)],[c7_43])).
cnf(k2, plain, (~ meet(R,C3,C4) | ~ part_of(C6,C4) | ~ incident_c(R,C6) | meet(R,C3,C6)), inference(lemma,[status(thm)],[l_c212,l_msym])).
cnf(k3, plain, (~ meet(P,C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | end_point(P,C5)), inference(lemma,[status(thm)],[l_me2,l_sp1,l_t210])).
cnf(k4b, plain, (~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ end_point(P,C5) | ~ end_point(Q,C5) | ~ end_point(R,C4) | ~ incident_c(R,C5) | P = Q | R = P | R = Q), inference(lemma,[status(thm)],[l_c5,l_sp1,l_t210])).
cnf(t2_14_5a, plain, (~ meet(P,C1,C2) | ~ end_point(Q,sum(C1,C2)) | ~ meet(Q,C1,C2)), inference(lemma,[status(thm)],[l_sp1s,l_sp2s,t2_14_3])).
cnf(t2_14_5b, plain, (~ meet(P,C1,C2) | meet(Q,C1,C2) | ~ end_point(Q,C1) | end_point(Q,sum(C1,C2))), inference(lemma,[status(thm)],[c6_41,c6_42,c7_43,closed_defn_32,end_point_defn_14,l_c29,l_c5,l_ep,l_me1,l_me2,l_msym,l_sp1s,l_sp2s,l_sumin,l_t210,open_defn_33,open_defn_34])).
cnf(b0, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | incident_c(R,C6)), inference(lemma,[status(thm)],[k1,k3,k4b,l_mc2,l_me1,l_me2,l_mi1,l_mi2,l_msym,l_pinc,l_scomm,l_sp2,l_sumin,t2_14_5a])).
cnf(b1, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | meet(R,C3,C6)), inference(lemma,[status(thm)],[b0,k1,k2,l_sp2])).
cnf(b2, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | meet(P,C5,sum(C3,C6))), inference(lemma,[status(thm)],[b1,k1,k2,l_ine,l_mc2,l_me1,l_me2,l_mi1,l_mi2,l_msym,l_pinc,l_scomm,l_sp1,l_sp2,l_sumin,l_t210,meet_defn_28,meet_defn_29,meet_defn_30,open_defn_34,t2_14_1,t2_14_5b])).
cnf(b3, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | meet(Q,C5,sum(C3,C6))), inference(lemma,[status(thm)],[b1,k1,k2,l_ine,l_mc2,l_me1,l_me2,l_mi1,l_mi2,l_msym,l_pinc,l_scomm,l_sp1,l_sp2,l_sumin,l_t210,meet_defn_28,meet_defn_29,meet_defn_30,open_defn_34,t2_14_1,t2_14_5b])).
cnf(b4, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | C = sum(C5,sum(C3,C6))), inference(lemma,[status(thm)],[b1,b2,c9_45,c9_48,l_me1,l_msym,l_pinc,l_pt,l_scomm,l_sp1,l_sp2,l_sumin,sum_defn_5,sum_defn_6,t2_14_3,t2_14_5b])).
fof(t2_16f, plain, (! [C,P,Q] : ((closed(C) & incident_c(P,C) & incident_c(Q,C) & P != Q) => (? [C1,C2] : (meet(P,C1,C2) & meet(Q,C1,C2) & C = sum(C1,C2))))), inference(lemma,[status(thm)],[b2,b3,b4,c4_38,c4_39,c6_41,c6_42,closed_defn_31,k1,k1b,l_ie,l_me1,l_me2,l_mi1,l_mi2,l_msym,l_scomm,l_sumin,open_defn_33,open_defn_34])).
fof(t2_17f, plain, (! [C,C1,P,Q] : ((closed(C) & part_of(C1,C) & end_point(P,C1) & end_point(Q,C1) & P != Q) => (? [C2] : (meet(P,C1,C2) & meet(Q,C1,C2) & C = sum(C1,C2))))), inference(lemma,[status(thm)],[c2_36,l_c29,l_ep,l_me1,l_me2,l_msym,l_pinc,l_pr,l_scomm,l_sp1,l_sp2,open_defn_34,t2_13,t2_16f])).
cnf(bc_pq, plain, (~ between_c(C,P,Q,R) | P != Q), inference(lemma,[status(thm)],[between_c_defn_3,between_c_defn_5,l_ine])).
cnf(bc_qr, plain, (~ between_c(C,P,Q,R) | Q != R), inference(lemma,[status(thm)],[between_c_defn_4,between_c_defn_5,l_ine])).
cnf(bc_pr, plain, (~ between_c(C,P,Q,R) | P != R), inference(lemma,[status(thm)],[between_c_defn_1])).
cnf(bc_ip, plain, (~ between_c(C,P,Q,R) | incident_c(P,C)), inference(lemma,[status(thm)],[between_c_defn_2,between_c_defn_3,l_ep,l_pinc])).
cnf(bc_ir, plain, (~ between_c(C,P,Q,R) | incident_c(R,C)), inference(lemma,[status(thm)],[between_c_defn_2,between_c_defn_4,l_ep,l_pinc])).
cnf(bc_sym, plain, (~ between_c(C,P,Q,R) | between_c(C,R,Q,P)), inference(lemma,[status(thm)],[between_c_defn_1,between_c_defn_2,between_c_defn_3,between_c_defn_4,between_c_defn_5,between_c_defn_6])).
cnf(t2_14_5b2, plain, (~ meet(P,C1,C2) | meet(Q,C1,C2) | ~ end_point(Q,C2) | end_point(Q,sum(C1,C2))), inference(lemma,[status(thm)],[l_msym,l_scomm,t2_14_5b])).
cnf(nmP, plain, (~ meet(Q,C1,C2) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | ~ meet(P,C1,C2)), inference(lemma,[status(thm)],[l_c5,l_me2])).
cnf(nmR, plain, (~ meet(Q,C1,C2) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | ~ meet(R,C1,C2)), inference(lemma,[status(thm)],[l_c5,l_me1])).
cnf(c3b, plain, (~ meet(Q,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | between_c(C,P,Q,R)), inference(lemma,[status(thm)],[between_c_defn_6,l_ie,l_mi1,l_sumpart,l_sumself,nmP,nmR,t2_14_5a,t2_14_5b,t2_14_5b2])).
fof(t3_3a, plain, (! [C,P,Q,R] : (between_c(C,P,Q,R) => (? [C1,C2] : (meet(Q,C1,C2) & part_of(C1,C) & part_of(C2,C) & end_point(P,C1) & end_point(R,C2))))), inference(lemma,[status(thm)],[between_c_defn_1,between_c_defn_2,between_c_defn_3,between_c_defn_4,between_c_defn_5,c4_38,c4_39,l_c5,l_ep,l_ine,l_me1,l_me2,l_msym,l_pt,l_sp1,l_sp2,l_sumin,l_t210])).
cnf(t3_7, plain, (~ closed(C) | P = Q | Q = R | P = R | ~ incident_c(P,C) | ~ incident_c(Q,C) | ~ incident_c(R,C) | between_c(C,P,Q,R)), inference(lemma,[status(thm)],[between_c_defn_6,l_c5,l_ie,l_me1,l_me2,l_sp1,l_sp2,l_sumin,t2_16f])).
cnf(t3_8_3, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ between_c(C,Q,P,R)), inference(lemma,[status(thm)],[bc_pq,bc_sym,between_c_defn_2,between_c_defn_3,between_c_defn_4,between_c_defn_5,l_ep,l_ine,l_ip,l_t210,t2_21])).
cnf(t3_8_4, plain, (~ incident_c(P,C) | ~ incident_c(Q,C) | ~ incident_c(R,C) | P = Q | Q = R | P = R | between_c(C,P,Q,R) | between_c(C,Q,P,R) | between_c(C,P,R,Q)), inference(lemma,[status(thm)],[between_c_defn_6,c3b,closed_defn_32,l_c5,l_ep,l_ie,l_pinc,open_defn_34,t2_15f,t2_22,t3_7])).
cnf(bc_in, plain, (~ between_c(D,P,Q,R) | inner_point(Q,D)), inference(lemma,[status(thm)],[between_c_defn_2,between_c_defn_5,l_c211])).
cnf(bc_lift, plain, (~ between_c(D,P,Q,R) | ~ part_of(D,C) | between_c(C,P,Q,R)), inference(lemma,[status(thm)],[between_c_defn_1,between_c_defn_2,between_c_defn_3,between_c_defn_4,between_c_defn_5,between_c_defn_6,l_pt])).
cnf(os1a, plain, (~ between_c(E,P,Q,R) | ~ end_point(Q,E)), inference(lemma,[status(thm)],[bc_in,l_ine])).
cnf(os1b, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ part_of(E,C) | ~ between_c(E,Q,P,R)), inference(lemma,[status(thm)],[bc_lift,t3_8_3])).
cnf(os1c, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ part_of(E,C) | ~ between_c(E,P,R,Q)), inference(lemma,[status(thm)],[bc_lift,bc_sym,t3_8_3])).
cnf(os1, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ meet(Q,E1,E2) | C != sum(E1,E2) | ~ incident_c(P,E1) | ~ incident_c(R,E1)), inference(lemma,[status(thm)],[bc_pq,bc_pr,bc_qr,l_me1,l_mi1,l_sp1,os1a,os1b,os1c,t3_8_4])).
cnf(os2, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ meet(Q,E1,E2) | C != sum(E1,E2) | ~ incident_c(P,E2) | ~ incident_c(R,E2)), inference(lemma,[status(thm)],[l_msym,l_scomm,os1])).
fof(b3o, plain, (! [C,P,Q,R] : ((open(C) & between_c(C,P,Q,R)) => (? [C1,C2] : (meet(Q,C1,C2) & sum(C1,C2) = C & incident_c(P,C1) & incident_c(R,C2))))), inference(lemma,[status(thm)],[bc_in,bc_ip,bc_ir,c4_38,c4_39,l_msym,l_scomm,l_si,os1,os2])).
cnf(cl1, plain, (~ meet(Q,D1,D2) | ~ end_point(P,D1) | ~ end_point(R,D2) | P = Q | Q = R | P = R | end_point(P,sum(D1,D2))), inference(lemma,[status(thm)],[nmP,t2_14_5b])).
cnf(cl2, plain, (~ meet(Q,D1,D2) | ~ end_point(P,D1) | ~ end_point(R,D2) | P = Q | Q = R | P = R | end_point(R,sum(D1,D2))), inference(lemma,[status(thm)],[nmR,t2_14_5b2])).
cnf(cl3, plain, (~ meet(Q,D1,D2) | inner_point(Q,sum(D1,D2))), inference(lemma,[status(thm)],[l_ie,l_mi1,l_sumself,t2_14_5a])).
fof(cl4, plain, (! [C,D1,D2,P,Q,R] : ((closed(C) & meet(Q,D1,D2) & part_of(D1,C) & part_of(D2,C) & end_point(P,D1) & end_point(R,D2) & P != Q & Q != R & P != R) => (? [K] : (meet(P,K,sum(D1,D2)) & C = sum(K,sum(D1,D2)))))), inference(lemma,[status(thm)],[cl1,cl2,l_msym,l_scomm,l_sumpart,t2_17f])).
fof(cl5, plain, (! [C,D1,D2,P,Q,R] : ((closed(C) & meet(Q,D1,D2) & part_of(D1,C) & part_of(D2,C) & end_point(P,D1) & end_point(R,D2) & P != Q & Q != R & P != R) => (? [E1,E2] : (meet(Q,E1,E2) & sum(E1,E2) = C & incident_c(P,E1) & incident_c(R,E2))))), inference(lemma,[status(thm)],[b1,b3,b4,cl2,cl3,cl4,l_ep,l_sumself2])).
fof(b3c, plain, (! [C,P,Q,R] : ((closed(C) & between_c(C,P,Q,R)) => (? [C1,C2] : (meet(Q,C1,C2) & sum(C1,C2) = C & incident_c(P,C1) & incident_c(R,C2))))), inference(lemma,[status(thm)],[bc_pq,bc_pr,bc_qr,cl5,t3_3a])).
fof(b23, plain, (! [C,P,Q,R] : (between_c(C,P,Q,R) => (? [C1,C2] : (meet(Q,C1,C2) & sum(C1,C2) = C & incident_c(P,C1) & incident_c(R,C2))))), inference(lemma,[status(thm)],[b3c,b3o,closed_defn_32,open_defn_34])).
cnf(m2, plain, (~ meet(Q,C1,C2) | ~ part_of(D1,C1) | ~ part_of(D2,C2) | ~ incident_c(Q,D1) | ~ incident_c(Q,D2) | meet(Q,D1,D2)), inference(lemma,[status(thm)],[k2,l_msym])).
fof(b32, plain, (! [C,C1,C2,P,Q,R] : ((meet(Q,C1,C2) & sum(C1,C2) = C & incident_c(P,C1) & incident_c(R,C2) & P != Q & Q != R) => (? [D1,D2] : (meet(Q,D1,D2) & part_of(D1,C) & part_of(D2,C) & end_point(P,D1) & end_point(R,D2))))), inference(lemma,[status(thm)],[l_ep,l_mi1,l_mi2,l_pt,l_sp1,l_sp2,m2,t2_15f])).
fof(d23, plain, (! [C,P,Q,R] : (between_c2(C,P,Q,R) => between_c3(C,P,Q,R))), inference(lemma,[status(thm)],[b23,between_c2_defn_85,between_c2_defn_86,between_c2_defn_87,between_c2_defn_88,between_c2_defn_89,between_c2_defn_90,between_c2_defn_91,between_c2_defn_92,between_c3_defn_101,c3b])).
fof(d32, plain, (! [C,P,Q,R] : (between_c3(C,P,Q,R) => between_c2(C,P,Q,R))), inference(lemma,[status(thm)],[b32,between_c2_defn_93,between_c3_defn_100,between_c3_defn_94,between_c3_defn_95,between_c3_defn_96,between_c3_defn_97,between_c3_defn_98,between_c3_defn_99])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[d23,d32,theorem_3_5_102,theorem_3_5_105])).
% SZS output end CNFRefutation for GEO108-1
