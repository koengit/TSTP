%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO095-1, with Axioms/GEO004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004-0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for GEO095-1
% SZS output start CNFRefutation for GEO095-1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/ch2c/GEO095-1/proof1.p
% Problem: Problems/GEO/GEO095-1.p
%------------------------------------------------------------------------------
cnf(part_of_defn_1, axiom, (~ part_of(A,B) | ~ incident_c(C,A) | incident_c(C,B)), file('Problems/GEO/GEO095-1.p',part_of_defn_1)).
cnf(part_of_defn_2, axiom, (incident_c(ax0_sk1(A,B),A) | part_of(A,B)), file('Problems/GEO/GEO095-1.p',part_of_defn_2)).
cnf(part_of_defn_3, axiom, (~ incident_c(ax0_sk1(A,B),B) | part_of(A,B)), file('Problems/GEO/GEO095-1.p',part_of_defn_3)).
cnf(end_point_defn_14, axiom, (~ end_point(A,B) | ~ part_of(C,B) | ~ part_of(D,B) | ~ incident_c(A,C) | ~ incident_c(A,D) | part_of(C,D) | part_of(D,C)), file('Problems/GEO/GEO095-1.p',end_point_defn_14)).
cnf(end_point_defn_15, axiom, (~ incident_c(A,B) | part_of(ax0_sk3(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO095-1.p',end_point_defn_15)).
cnf(end_point_defn_16, axiom, (~ incident_c(A,B) | part_of(ax0_sk4(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO095-1.p',end_point_defn_16)).
cnf(end_point_defn_17, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO095-1.p',end_point_defn_17)).
cnf(end_point_defn_18, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO095-1.p',end_point_defn_18)).
cnf(end_point_defn_19, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk3(B,A),ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO095-1.p',end_point_defn_19)).
cnf(end_point_defn_20, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk4(B,A),ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO095-1.p',end_point_defn_20)).
cnf(meet_defn_24, axiom, (~ meet(A,B,C) | incident_c(A,B)), file('Problems/GEO/GEO095-1.p',meet_defn_24)).
cnf(meet_defn_25, axiom, (~ meet(A,B,C) | incident_c(A,C)), file('Problems/GEO/GEO095-1.p',meet_defn_25)).
cnf(meet_defn_26, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,B)), file('Problems/GEO/GEO095-1.p',meet_defn_26)).
cnf(meet_defn_27, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,C)), file('Problems/GEO/GEO095-1.p',meet_defn_27)).
cnf(sum_defn_5, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,B) | incident_c(D,A)), file('Problems/GEO/GEO095-1.p',sum_defn_5)).
cnf(sum_defn_6, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,C) | incident_c(D,A)), file('Problems/GEO/GEO095-1.p',sum_defn_6)).
cnf(end_point_defn_13, axiom, (~ end_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO095-1.p',end_point_defn_13)).
cnf(meet_defn_28, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | incident_c(ax0_sk5(C,B,A),B) | meet(A,B,C)), file('Problems/GEO/GEO095-1.p',meet_defn_28)).
cnf(meet_defn_29, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | incident_c(ax0_sk5(C,B,A),C) | meet(A,B,C)), file('Problems/GEO/GEO095-1.p',meet_defn_29)).
cnf(meet_defn_30, axiom, (~ incident_c(A,B) | ~ incident_c(A,C) | ~ end_point(ax0_sk5(C,B,A),B) | ~ end_point(ax0_sk5(C,B,A),C) | meet(A,B,C)), file('Problems/GEO/GEO095-1.p',meet_defn_30)).
cnf(c3_37, axiom, (inner_point(ax0_sk8(A),A)), file('Problems/GEO/GEO095-1.p',c3_37)).
cnf(inner_point_defn_21, axiom, (~ inner_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO095-1.p',inner_point_defn_21)).
cnf(inner_point_defn_22, axiom, (~ inner_point(A,B) | ~ end_point(A,B)), file('Problems/GEO/GEO095-1.p',inner_point_defn_22)).
cnf(c5_40, axiom, (~ end_point(A,B) | ~ end_point(C,B) | ~ end_point(D,B) | A = C | A = D | C = D), file('Problems/GEO/GEO095-1.p',c5_40)).
cnf(sum_defn_4, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,A) | incident_c(D,B) | incident_c(D,C)), file('Problems/GEO/GEO095-1.p',sum_defn_4)).
cnf(c6_41, axiom, (~ end_point(A,B) | end_point(ax0_sk11(A,B),B)), file('Problems/GEO/GEO095-1.p',c6_41)).
cnf(c6_42, axiom, (~ end_point(A,B) | A != ax0_sk11(A,B)), file('Problems/GEO/GEO095-1.p',c6_42)).
cnf(open_defn_33, axiom, (~ open(A) | end_point(ax0_sk7(A),A)), file('Problems/GEO/GEO095-1.p',open_defn_33)).
cnf(open_defn_34, axiom, (~ end_point(A,B) | open(B)), file('Problems/GEO/GEO095-1.p',open_defn_34)).
cnf(proposition_2_14_4_67, negated_conjecture, (meet(sk16,sk14,sk15)), file('Problems/GEO/GEO095-1.p',proposition_2_14_4_67)).
cnf(proposition_2_14_4_68, negated_conjecture, (open(sum(sk14,sk15))), file('Problems/GEO/GEO095-1.p',proposition_2_14_4_68)).
cnf(proposition_2_14_4_69, negated_conjecture, (sk16 = A | A = B | sk16 = B | ~ end_point(A,sum(sk14,sk15)) | ~ end_point(A,sk14) | ~ end_point(B,sum(sk14,sk15)) | ~ end_point(B,sk15)), file('Problems/GEO/GEO095-1.p',proposition_2_14_4_69)).
cnf(l_pt, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(l_t210, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn_14,end_point_defn_15,end_point_defn_16,end_point_defn_17,end_point_defn_18,end_point_defn_19,end_point_defn_20,l_pt,part_of_defn_2,part_of_defn_3])).
cnf(l_me1, plain, (~ meet(P,A,B) | end_point(P,A)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_26])).
cnf(l_me2, plain, (~ meet(P,A,B) | end_point(P,B)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_27])).
cnf(l_sp1, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_5])).
cnf(l_sp2, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,sum_defn_6])).
cnf(l_ep, plain, (~ end_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[end_point_defn_13])).
cnf(l_msym, plain, (~ meet(P,A,B) | meet(P,B,A)), inference(lemma,[status(thm)],[meet_defn_24,meet_defn_25,meet_defn_26,meet_defn_27,meet_defn_28,meet_defn_29,meet_defn_30])).
cnf(l_mi1, plain, (~ meet(P,A,B) | incident_c(P,A)), inference(lemma,[status(thm)],[meet_defn_24])).
cnf(l_mi2, plain, (~ meet(P,A,B) | incident_c(P,B)), inference(lemma,[status(thm)],[meet_defn_25])).
cnf(l_c29, plain, (~ part_of(A,B) | ~ meet(P,A,B)), inference(lemma,[status(thm)],[c3_37,inner_point_defn_21,inner_point_defn_22,meet_defn_26,part_of_defn_1])).
cnf(l_c5, plain, (~ end_point(P,C) | ~ end_point(Q,C) | ~ end_point(R,C) | P = Q | P = R | Q = R), inference(lemma,[status(thm)],[c5_40])).
cnf(t2_14_3, plain, (~ meet(P,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[end_point_defn_14,l_c29,l_mi1,l_mi2,l_msym])).
cnf(l_sumin, plain, (~ meet(P,A,B) | ~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(l_sp1s, plain, (~ meet(P,A,B) | part_of(A,sum(A,B))), inference(lemma,[status(thm)],[l_sp1])).
cnf(l_sp2s, plain, (~ meet(P,A,B) | part_of(B,sum(A,B))), inference(lemma,[status(thm)],[l_sp2])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[c6_41,c6_42,l_c5,l_ep,l_me1,l_me2,l_sp1s,l_sp2s,l_sumin,l_t210,open_defn_33,open_defn_34,proposition_2_14_4_67,proposition_2_14_4_68,proposition_2_14_4_69,t2_14_3])).
% SZS output end CNFRefutation for GEO095-1
