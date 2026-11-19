%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO107-1, with Axioms/GEO004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004-0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for GEO107-1
% SZS output start CNFRefutation for GEO107-1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/ch3/GEO107-1/proof1.p
% Problem: Problems/GEO/GEO107-1.p
%------------------------------------------------------------------------------
cnf(part_of_defn_1, axiom, (~ part_of(A,B) | ~ incident_c(C,A) | incident_c(C,B)), file('Problems/GEO/GEO107-1.p',part_of_defn_1)).
cnf(part_of_defn_2, axiom, (incident_c(ax0_sk1(A,B),A) | part_of(A,B)), file('Problems/GEO/GEO107-1.p',part_of_defn_2)).
cnf(part_of_defn_3, axiom, (~ incident_c(ax0_sk1(A,B),B) | part_of(A,B)), file('Problems/GEO/GEO107-1.p',part_of_defn_3)).
cnf(end_point_defn_14, axiom, (~ end_point(A,B) | ~ part_of(C,B) | ~ part_of(D,B) | ~ incident_c(A,C) | ~ incident_c(A,D) | part_of(C,D) | part_of(D,C)), file('Problems/GEO/GEO107-1.p',end_point_defn_14)).
cnf(end_point_defn_15, axiom, (~ incident_c(A,B) | part_of(ax0_sk3(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO107-1.p',end_point_defn_15)).
cnf(end_point_defn_16, axiom, (~ incident_c(A,B) | part_of(ax0_sk4(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO107-1.p',end_point_defn_16)).
cnf(end_point_defn_17, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO107-1.p',end_point_defn_17)).
cnf(end_point_defn_18, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO107-1.p',end_point_defn_18)).
cnf(end_point_defn_19, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk3(B,A),ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO107-1.p',end_point_defn_19)).
cnf(end_point_defn_20, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk4(B,A),ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO107-1.p',end_point_defn_20)).
cnf(meet_defn_24, axiom, (~ meet(A,B,C) | incident_c(A,B)), file('Problems/GEO/GEO107-1.p',meet_defn_24)).
cnf(meet_defn_25, axiom, (~ meet(A,B,C) | incident_c(A,C)), file('Problems/GEO/GEO107-1.p',meet_defn_25)).
cnf(meet_defn_26, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,B)), file('Problems/GEO/GEO107-1.p',meet_defn_26)).
cnf(meet_defn_27, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,C)), file('Problems/GEO/GEO107-1.p',meet_defn_27)).
cnf(sum_defn_5, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,B) | incident_c(D,A)), file('Problems/GEO/GEO107-1.p',sum_defn_5)).
cnf(sum_defn_6, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,C) | incident_c(D,A)), file('Problems/GEO/GEO107-1.p',sum_defn_6)).
cnf(sum_defn_4, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,A) | incident_c(D,B) | incident_c(D,C)), file('Problems/GEO/GEO107-1.p',sum_defn_4)).
cnf(end_point_defn_13, axiom, (~ end_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO107-1.p',end_point_defn_13)).
cnf(inner_point_defn_23, axiom, (~ incident_c(A,B) | end_point(A,B) | inner_point(A,B)), file('Problems/GEO/GEO107-1.p',inner_point_defn_23)).
cnf(meet_defn_28, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | incident_c(ax0_sk5(C,B,A),B) | meet(A,B,C)), file('Problems/GEO/GEO107-1.p',meet_defn_28)).
cnf(meet_defn_29, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | incident_c(ax0_sk5(C,B,A),C) | meet(A,B,C)), file('Problems/GEO/GEO107-1.p',meet_defn_29)).
cnf(meet_defn_30, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | ~ end_point(ax0_sk5(C,B,A),B) | ~ end_point(ax0_sk5(C,B,A),C) | meet(A,B,C)), file('Problems/GEO/GEO107-1.p',meet_defn_30)).
cnf(inner_point_defn_22, axiom, (~ inner_point(A,B) | ~ end_point(A,B)), file('Problems/GEO/GEO107-1.p',inner_point_defn_22)).
cnf(c3_37, axiom, (inner_point(ax0_sk8(A),A)), file('Problems/GEO/GEO107-1.p',c3_37)).
cnf(inner_point_defn_21, axiom, (~ inner_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO107-1.p',inner_point_defn_21)).
cnf(c5_40, axiom, (~ end_point(A,B) | ~ end_point(C,B) | ~ end_point(D,B) | A = C | A = D | C = D), file('Problems/GEO/GEO107-1.p',c5_40)).
cnf(sum_defn_11, axiom, (~ meet(SMP,B,A) | ~ incident_c(ax0_sk2(A,B,C),B) | ~ incident_c(ax0_sk2(A,B,C),C) | C = sum(B,A)), file('Problems/GEO/GEO107-1.p',sum_defn_11)).
cnf(sum_defn_12, axiom, (~ meet(SMP,B,A) | ~ incident_c(ax0_sk2(A,B,C),A) | ~ incident_c(ax0_sk2(A,B,C),C) | C = sum(B,A)), file('Problems/GEO/GEO107-1.p',sum_defn_12)).
cnf(sum_defn_7, axiom, (~ meet(SMP,B,A) | incident_c(ax0_sk2(A,B,C),C) | incident_c(ax0_sk2(A,B,C),B) | incident_c(ax0_sk2(A,B,C),A) | C = sum(B,A)), file('Problems/GEO/GEO107-1.p',sum_defn_7)).
cnf(c6_41, axiom, (~ end_point(A,B) | end_point(ax0_sk11(A,B),B)), file('Problems/GEO/GEO107-1.p',c6_41)).
cnf(c6_42, axiom, (~ end_point(A,B) | A != ax0_sk11(A,B)), file('Problems/GEO/GEO107-1.p',c6_42)).
cnf(c7_43, axiom, (~ closed(A) | ~ meet(B,C,D) | A != sum(C,D) | ~ end_point(E,C) | meet(E,C,D)), file('Problems/GEO/GEO107-1.p',c7_43)).
cnf(closed_defn_32, axiom, (end_point(ax0_sk6(A),A) | closed(A)), file('Problems/GEO/GEO107-1.p',closed_defn_32)).
cnf(open_defn_33, axiom, (~ open(A) | end_point(ax0_sk7(A),A)), file('Problems/GEO/GEO107-1.p',open_defn_33)).
cnf(open_defn_34, axiom, (~ end_point(A,B) | open(B)), file('Problems/GEO/GEO107-1.p',open_defn_34)).
cnf(between_c_defn_3, axiom, (~ between_c(A,B,C,D) | end_point(B,ax1_sk1(D,C,B,A))), file('Problems/GEO/GEO107-1.p',between_c_defn_3)).
cnf(between_c_defn_5, axiom, (~ between_c(A,B,C,D) | inner_point(C,ax1_sk1(D,C,B,A))), file('Problems/GEO/GEO107-1.p',between_c_defn_5)).
cnf(between_c_defn_4, axiom, (~ between_c(A,B,C,D) | end_point(D,ax1_sk1(D,C,B,A))), file('Problems/GEO/GEO107-1.p',between_c_defn_4)).
cnf(between_c_defn_1, axiom, (~ between_c(A,B,C,D) | B != D), file('Problems/GEO/GEO107-1.p',between_c_defn_1)).
cnf(between_c_defn_6, axiom, (A = B | ~ part_of(C,D) | ~ end_point(A,C) | ~ end_point(B,C) | ~ inner_point(E,C) | between_c(D,A,E,B)), file('Problems/GEO/GEO107-1.p',between_c_defn_6)).
cnf(between_c_defn_2, axiom, (~ between_c(A,B,C,D) | part_of(ax1_sk1(D,C,B,A),A)), file('Problems/GEO/GEO107-1.p',between_c_defn_2)).
cnf(c4_38, axiom, (~ inner_point(A,B) | meet(A,ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO107-1.p',c4_38)).
cnf(c4_39, axiom, (~ inner_point(A,B) | B = sum(ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO107-1.p',c4_39)).
cnf(between_c2_defn_81, hypothesis, (~ between_c2(A,B,C,D) | B != C), file('Problems/GEO/GEO107-1.p',between_c2_defn_81)).
cnf(between_c2_defn_82, hypothesis, (~ between_c2(A,B,C,D) | B != D), file('Problems/GEO/GEO107-1.p',between_c2_defn_82)).
cnf(between_c2_defn_83, hypothesis, (~ between_c2(A,B,C,D) | C != D), file('Problems/GEO/GEO107-1.p',between_c2_defn_83)).
cnf(between_c2_defn_84, hypothesis, (~ between_c2(A,B,C,D) | meet(C,sk15(D,C,B,A),sk16(D,C,B,A))), file('Problems/GEO/GEO107-1.p',between_c2_defn_84)).
cnf(between_c2_defn_85, hypothesis, (~ between_c2(A,B,C,D) | part_of(sk15(D,C,B,A),A)), file('Problems/GEO/GEO107-1.p',between_c2_defn_85)).
cnf(between_c2_defn_86, hypothesis, (~ between_c2(A,B,C,D) | part_of(sk16(D,C,B,A),A)), file('Problems/GEO/GEO107-1.p',between_c2_defn_86)).
cnf(between_c2_defn_87, hypothesis, (~ between_c2(A,B,C,D) | end_point(B,sk15(D,C,B,A))), file('Problems/GEO/GEO107-1.p',between_c2_defn_87)).
cnf(between_c2_defn_88, hypothesis, (~ between_c2(A,B,C,D) | end_point(D,sk16(D,C,B,A))), file('Problems/GEO/GEO107-1.p',between_c2_defn_88)).
cnf(between_c2_defn_89, hypothesis, (A = B | A = C | B = C | ~ meet(B,D,E) | ~ part_of(D,F) | ~ part_of(E,F) | ~ end_point(A,D) | ~ end_point(C,E) | between_c2(F,A,B,C)), file('Problems/GEO/GEO107-1.p',between_c2_defn_89)).
cnf(theorem_3_3_90, negated_conjecture, (between_c(sk17,sk18,sk19,sk20) | between_c2(sk17,sk18,sk19,sk20)), file('Problems/GEO/GEO107-1.p',theorem_3_3_90)).
cnf(theorem_3_3_93, negated_conjecture, (~ between_c2(sk17,sk18,sk19,sk20) | ~ between_c(sk17,sk18,sk19,sk20)), file('Problems/GEO/GEO107-1.p',theorem_3_3_93)).
cnf(l_pt, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(l_t210, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn_14,end_point_defn_15,end_point_defn_16,end_point_defn_17,end_point_defn_18,end_point_defn_19,end_point_defn_20,l_pt,part_of_defn_2,part_of_defn_3])).
cnf(l_me1, plain, (~ meet(P,A,B) | end_point(P,A)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_26])).
cnf(l_me2, plain, (~ meet(P,A,B) | end_point(P,B)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_27])).
cnf(l_sp1, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_5])).
cnf(l_sp2, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_6])).
cnf(l_si, plain, (~ meet(P,A,B) | C != sum(A,B) | ~ incident_c(Q,C) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(l_ep, plain, (~ end_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[end_point_defn_13])).
cnf(l_ie, plain, (~ incident_c(P,C) | end_point(P,C) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn_23])).
cnf(l_msym, plain, (~ meet(P,A,B) | meet(P,B,A)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_26,meet_defn_27,meet_defn_28,meet_defn_29,meet_defn_30])).
cnf(l_mi1, plain, (~ meet(P,A,B) | incident_c(P,A)), inference(lemma,[status(thm)],[meet_defn_24])).
cnf(l_mi2, plain, (~ meet(P,A,B) | incident_c(P,B)), inference(lemma,[status(thm)],[meet_defn_25])).
cnf(l_ine, plain, (~ inner_point(P,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn_22])).
cnf(l_c29, plain, (~ part_of(A,B) | ~ meet(P,A,B)), inference(lemma,[status(thm)],[c3_37,inner_point_defn_21,inner_point_defn_22,meet_defn_26,part_of_defn_1])).
cnf(l_c5, plain, (~ end_point(P,C) | ~ end_point(Q,C) | ~ end_point(R,C) | P = Q | P = R | Q = R), inference(lemma,[status(thm)],[c5_40])).
cnf(t2_14_3, plain, (~ meet(P,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[end_point_defn_14,l_c29,l_mi1,l_mi2,l_msym])).
cnf(l_sumpart, plain, (~ meet(P,A,B) | ~ part_of(A,C) | ~ part_of(B,C) | part_of(sum(A,B),C)), inference(lemma,[status(thm)],[l_si,part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(l_sumself, plain, (~ meet(P,A,B) | incident_c(Q,sum(A,B)) | ~ incident_c(Q,A)), inference(lemma,[status(thm)],[sum_defn_5])).
cnf(l_sumin, plain, (~ meet(P,A,B) | ~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(l_sp1s, plain, (~ meet(P,A,B) | part_of(A,sum(A,B))), inference(lemma,[status(thm)],[l_sp1])).
cnf(l_sp2s, plain, (~ meet(P,A,B) | part_of(B,sum(A,B))), inference(lemma,[status(thm)],[l_sp2])).
cnf(l_scomm, plain, (~ meet(P,A,B) | sum(A,B) = sum(B,A)), inference(lemma,[status(thm)],[l_msym,sum_defn_11,sum_defn_12,sum_defn_4,sum_defn_5,sum_defn_6,sum_defn_7])).
cnf(t2_14_5a, plain, (~ meet(P,C1,C2) | ~ end_point(Q,sum(C1,C2)) | ~ meet(Q,C1,C2)), inference(lemma,[status(thm)],[l_sp1s,l_sp2s,t2_14_3])).
cnf(t2_14_5b, plain, (~ meet(P,C1,C2) | meet(Q,C1,C2) | ~ end_point(Q,C1) | end_point(Q,sum(C1,C2))), inference(lemma,[status(thm)],[c6_41,c6_42,c7_43,closed_defn_32,end_point_defn_14,l_c29,l_c5,l_ep,l_me1,l_me2,l_msym,l_sp1s,l_sp2s,l_sumin,l_t210,open_defn_33,open_defn_34])).
cnf(bc_pq, plain, (~ between_c(C,P,Q,R) | P != Q), inference(lemma,[status(thm)],[between_c_defn_3,between_c_defn_5,l_ine])).
cnf(bc_qr, plain, (~ between_c(C,P,Q,R) | Q != R), inference(lemma,[status(thm)],[between_c_defn_4,between_c_defn_5,l_ine])).
cnf(bc_pr, plain, (~ between_c(C,P,Q,R) | P != R), inference(lemma,[status(thm)],[between_c_defn_1])).
cnf(t2_14_5b2, plain, (~ meet(P,C1,C2) | meet(Q,C1,C2) | ~ end_point(Q,C2) | end_point(Q,sum(C1,C2))), inference(lemma,[status(thm)],[l_msym,l_scomm,t2_14_5b])).
cnf(nmP, plain, (~ meet(Q,C1,C2) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | ~ meet(P,C1,C2)), inference(lemma,[status(thm)],[l_c5,l_me2])).
cnf(nmR, plain, (~ meet(Q,C1,C2) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | ~ meet(R,C1,C2)), inference(lemma,[status(thm)],[l_c5,l_me1])).
cnf(c3b, plain, (~ meet(Q,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | between_c(C,P,Q,R)), inference(lemma,[status(thm)],[between_c_defn_6,l_ie,l_mi1,l_sumpart,l_sumself,nmP,nmR,t2_14_5a,t2_14_5b,t2_14_5b2])).
fof(t3_3a, plain, (! [C,P,Q,R] : (between_c(C,P,Q,R) => (? [C1,C2] : (meet(Q,C1,C2) & part_of(C1,C) & part_of(C2,C) & end_point(P,C1) & end_point(R,C2))))), inference(lemma,[status(thm)],[between_c_defn_1,between_c_defn_2,between_c_defn_3,between_c_defn_4,between_c_defn_5,c4_38,c4_39,l_c5,l_ep,l_ine,l_me1,l_me2,l_msym,l_pt,l_sp1,l_sp2,l_sumin,l_t210])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[bc_pq,bc_pr,bc_qr,between_c2_defn_81,between_c2_defn_82,between_c2_defn_83,between_c2_defn_84,between_c2_defn_85,between_c2_defn_86,between_c2_defn_87,between_c2_defn_88,between_c2_defn_89,c3b,t3_3a,theorem_3_3_90,theorem_3_3_93])).
% SZS output end CNFRefutation for GEO107-1
