%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO107+1, with Axioms/GEO004+0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004+0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Theorem for GEO107+1
% SZS output start Refutation for GEO107+1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/ch3/GEO107+1/proof1.p
% Problem: Problems/GEO/GEO107+1.p
%------------------------------------------------------------------------------
fof(part_of_defn, axiom, (! [C,C1] : (part_of(C1,C) <=> (! [P] : (incident_c(P,C1) => incident_c(P,C))))), file('Problems/GEO/GEO107+1.p',part_of_defn)).
fof(end_point_defn, axiom, (! [P,C] : (end_point(P,C) <=> (incident_c(P,C) & (! [C1,C2] : ((part_of(C1,C) & part_of(C2,C) & incident_c(P,C1) & incident_c(P,C2)) => (part_of(C1,C2) | part_of(C2,C1))))))), file('Problems/GEO/GEO107+1.p',end_point_defn)).
fof(meet_defn, axiom, (! [P,C,C1] : (meet(P,C,C1) <=> (incident_c(P,C) & incident_c(P,C1) & (! [Q] : ((incident_c(Q,C) & incident_c(Q,C1)) => (end_point(Q,C) & end_point(Q,C1))))))), file('Problems/GEO/GEO107+1.p',meet_defn)).
fof(sum_defn, axiom, (! [C,C1,C2] : ((? [P] : meet(P,C1,C2)) => (C = sum(C1,C2) <=> (! [Q] : (incident_c(Q,C) <=> (incident_c(Q,C1) | incident_c(Q,C2))))))), file('Problems/GEO/GEO107+1.p',sum_defn)).
fof(inner_point_defn, axiom, (! [P,C] : (inner_point(P,C) <=> (incident_c(P,C) & ~ end_point(P,C)))), file('Problems/GEO/GEO107+1.p',inner_point_defn)).
fof(c3, axiom, (! [C] : (? [P] : inner_point(P,C))), file('Problems/GEO/GEO107+1.p',c3)).
fof(c5, axiom, (! [C,P,Q,R] : ((end_point(P,C) & end_point(Q,C) & end_point(R,C)) => (P = Q | P = R | Q = R))), file('Problems/GEO/GEO107+1.p',c5)).
fof(c6, axiom, (! [C,P] : (end_point(P,C) => (? [Q] : (end_point(Q,C) & P != Q)))), file('Problems/GEO/GEO107+1.p',c6)).
fof(c7, axiom, (! [C,C1,C2,P] : ((closed(C) & meet(P,C1,C2) & C = sum(C1,C2)) => (! [Q] : (end_point(Q,C1) => meet(Q,C1,C2))))), file('Problems/GEO/GEO107+1.p',c7)).
fof(closed_defn, axiom, (! [C] : (closed(C) <=> ~ ((? [P] : end_point(P,C))))), file('Problems/GEO/GEO107+1.p',closed_defn)).
fof(between_c_defn, axiom, (! [C,P,Q,R] : (between_c(C,P,Q,R) <=> (P != R & (? [Cpp] : (part_of(Cpp,C) & end_point(P,Cpp) & end_point(R,Cpp) & inner_point(Q,Cpp)))))), file('Problems/GEO/GEO107+1.p',between_c_defn)).
fof(c4, axiom, (! [C,P] : (inner_point(P,C) => (? [C1,C2] : (meet(P,C1,C2) & C = sum(C1,C2))))), file('Problems/GEO/GEO107+1.p',c4)).
fof(between_c2_defn, hypothesis, (! [C,P,Q,R] : (between_c2(C,P,Q,R) <=> (P != Q & P != R & Q != R & (? [C1,C2] : (meet(Q,C1,C2) & part_of(C1,C) & part_of(C2,C) & end_point(P,C1) & end_point(R,C2)))))), file('Problems/GEO/GEO107+1.p',between_c2_defn)).
fof(theorem_3_3, conjecture, (! [C,P,Q,R] : (between_c(C,P,Q,R) <=> between_c2(C,P,Q,R))), file('Problems/GEO/GEO107+1.p',theorem_3_3)).
fof(theorem_3_3_neg, negated_conjecture, ~ ((! [C,P,Q,R] : (between_c(C,P,Q,R) <=> between_c2(C,P,Q,R)))), inference(negate_conjecture,[status(cth)],[theorem_3_3])).
cnf(l_pt, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(l_t210, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn,l_pt,part_of_defn])).
cnf(l_me1, plain, (~ meet(P,A,B) | end_point(P,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_me2, plain, (~ meet(P,A,B) | end_point(P,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_sp1, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn,sum_defn])).
cnf(l_sp2, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn,sum_defn])).
cnf(l_si, plain, (~ meet(P,A,B) | C != sum(A,B) | ~ incident_c(Q,C) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_ep, plain, (~ end_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[end_point_defn])).
cnf(l_ie, plain, (~ incident_c(P,C) | end_point(P,C) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(l_msym, plain, (~ meet(P,A,B) | meet(P,B,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mi1, plain, (~ meet(P,A,B) | incident_c(P,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mi2, plain, (~ meet(P,A,B) | incident_c(P,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_ine, plain, (~ inner_point(P,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(l_c29, plain, (~ part_of(A,B) | ~ meet(P,A,B)), inference(lemma,[status(thm)],[c3,inner_point_defn,meet_defn,part_of_defn])).
cnf(l_c5, plain, (~ end_point(P,C) | ~ end_point(Q,C) | ~ end_point(R,C) | P = Q | P = R | Q = R), inference(lemma,[status(thm)],[c5])).
cnf(t2_14_3, plain, (~ meet(P,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[end_point_defn,l_c29,l_mi1,l_mi2,l_msym])).
cnf(l_sumpart, plain, (~ meet(P,A,B) | ~ part_of(A,C) | ~ part_of(B,C) | part_of(sum(A,B),C)), inference(lemma,[status(thm)],[l_si,part_of_defn])).
cnf(l_sumself, plain, (~ meet(P,A,B) | incident_c(Q,sum(A,B)) | ~ incident_c(Q,A)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_sumin, plain, (~ meet(P,A,B) | ~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_sp1s, plain, (~ meet(P,A,B) | part_of(A,sum(A,B))), inference(lemma,[status(thm)],[l_sp1])).
cnf(l_sp2s, plain, (~ meet(P,A,B) | part_of(B,sum(A,B))), inference(lemma,[status(thm)],[l_sp2])).
cnf(l_scomm, plain, (~ meet(P,A,B) | sum(A,B) = sum(B,A)), inference(lemma,[status(thm)],[l_msym,sum_defn])).
cnf(t2_14_5a, plain, (~ meet(P,C1,C2) | ~ end_point(Q,sum(C1,C2)) | ~ meet(Q,C1,C2)), inference(lemma,[status(thm)],[l_sp1s,l_sp2s,t2_14_3])).
cnf(t2_14_5b, plain, (~ meet(P,C1,C2) | meet(Q,C1,C2) | ~ end_point(Q,C1) | end_point(Q,sum(C1,C2))), inference(lemma,[status(thm)],[c6,c7,closed_defn,l_c5,l_ep,l_me2,l_msym,l_scomm,l_sp1s,l_sp2s,l_sumin,l_t210,t2_14_3])).
cnf(bc_pq, plain, (~ between_c(C,P,Q,R) | P != Q), inference(lemma,[status(thm)],[between_c_defn,l_ine])).
cnf(bc_qr, plain, (~ between_c(C,P,Q,R) | Q != R), inference(lemma,[status(thm)],[between_c_defn,l_ine])).
cnf(bc_pr, plain, (~ between_c(C,P,Q,R) | P != R), inference(lemma,[status(thm)],[between_c_defn])).
cnf(t2_14_5b2, plain, (~ meet(P,C1,C2) | meet(Q,C1,C2) | ~ end_point(Q,C2) | end_point(Q,sum(C1,C2))), inference(lemma,[status(thm)],[l_msym,l_scomm,t2_14_5b])).
cnf(nmP, plain, (~ meet(Q,C1,C2) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | ~ meet(P,C1,C2)), inference(lemma,[status(thm)],[l_c5,l_me2])).
cnf(nmR, plain, (~ meet(Q,C1,C2) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | ~ meet(R,C1,C2)), inference(lemma,[status(thm)],[l_c5,l_me1])).
cnf(c3b, plain, (~ meet(Q,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | between_c(C,P,Q,R)), inference(lemma,[status(thm)],[between_c_defn,l_ie,l_mi1,l_sumpart,l_sumself,nmP,nmR,t2_14_5a,t2_14_5b,t2_14_5b2])).
fof(t3_3a, plain, (! [C,P,Q,R] : (between_c(C,P,Q,R) => (? [C1,C2] : (meet(Q,C1,C2) & part_of(C1,C) & part_of(C2,C) & end_point(P,C1) & end_point(R,C2))))), inference(lemma,[status(thm)],[between_c_defn,c4,l_c5,l_ep,l_ine,l_me1,l_me2,l_msym,l_pt,l_sp1,l_sp2,l_sumin,l_t210])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[bc_pq,bc_pr,bc_qr,between_c2_defn,c3b,t3_3a,theorem_3_3_neg])).
% SZS output end Refutation for GEO107+1
