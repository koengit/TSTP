%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO092+1, with Axioms/GEO004+0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004+0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Theorem for GEO092+1
% SZS output start Refutation for GEO092+1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/ch2/GEO092+1/proof1.p
% Problem: Problems/GEO/GEO092+1.p
%------------------------------------------------------------------------------
fof(part_of_defn, axiom, (! [C,C1] : (part_of(C1,C) <=> (! [P] : (incident_c(P,C1) => incident_c(P,C))))), file('Problems/GEO/GEO092+1.p',part_of_defn)).
fof(end_point_defn, axiom, (! [P,C] : (end_point(P,C) <=> (incident_c(P,C) & (! [C1,C2] : ((part_of(C1,C) & part_of(C2,C) & incident_c(P,C1) & incident_c(P,C2)) => (part_of(C1,C2) | part_of(C2,C1))))))), file('Problems/GEO/GEO092+1.p',end_point_defn)).
fof(meet_defn, axiom, (! [P,C,C1] : (meet(P,C,C1) <=> (incident_c(P,C) & incident_c(P,C1) & (! [Q] : ((incident_c(Q,C) & incident_c(Q,C1)) => (end_point(Q,C) & end_point(Q,C1))))))), file('Problems/GEO/GEO092+1.p',meet_defn)).
fof(sum_defn, axiom, (! [C,C1,C2] : ((? [P] : meet(P,C1,C2)) => (C = sum(C1,C2) <=> (! [Q] : (incident_c(Q,C) <=> (incident_c(Q,C1) | incident_c(Q,C2))))))), file('Problems/GEO/GEO092+1.p',sum_defn)).
fof(inner_point_defn, axiom, (! [P,C] : (inner_point(P,C) <=> (incident_c(P,C) & ~ end_point(P,C)))), file('Problems/GEO/GEO092+1.p',inner_point_defn)).
fof(c3, axiom, (! [C] : (? [P] : inner_point(P,C))), file('Problems/GEO/GEO092+1.p',c3)).
fof(c5, axiom, (! [C,P,Q,R] : ((end_point(P,C) & end_point(Q,C) & end_point(R,C)) => (P = Q | P = R | Q = R))), file('Problems/GEO/GEO092+1.p',c5)).
fof(open_defn, axiom, (! [C] : (open(C) <=> (? [P] : end_point(P,C)))), file('Problems/GEO/GEO092+1.p',open_defn)).
fof(proposition_2_14_1, conjecture, (! [C1,C2,P] : ((meet(P,C1,C2) & open(sum(C1,C2))) => (! [Q] : (Q != P => ~ ((incident_c(Q,C1) & incident_c(Q,C2))))))), file('Problems/GEO/GEO092+1.p',proposition_2_14_1)).
fof(proposition_2_14_1_neg, negated_conjecture, ~ ((! [C1,C2,P] : ((meet(P,C1,C2) & open(sum(C1,C2))) => (! [Q] : (Q != P => ~ ((incident_c(Q,C1) & incident_c(Q,C2)))))))), inference(negate_conjecture,[status(cth)],[proposition_2_14_1])).
cnf(l_pt, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(l_t210, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn,l_pt,part_of_defn])).
cnf(l_me1, plain, (~ meet(P,A,B) | end_point(P,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_me2, plain, (~ meet(P,A,B) | end_point(P,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_sp1, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn,sum_defn])).
cnf(l_sp2, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn,sum_defn])).
cnf(l_si, plain, (~ meet(P,A,B) | C != sum(A,B) | ~ incident_c(Q,C) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_ep, plain, (~ end_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[end_point_defn])).
cnf(l_ie, plain, (~ incident_c(P,C) | end_point(P,C) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(l_pr, plain, (part_of(C,C)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(l_msym, plain, (~ meet(P,A,B) | meet(P,B,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mi2, plain, (~ meet(P,A,B) | incident_c(P,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mc2, plain, (~ meet(P,A,B) | ~ incident_c(Q,A) | ~ incident_c(Q,B) | end_point(Q,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_ine, plain, (~ inner_point(P,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(l_c29, plain, (~ part_of(A,B) | ~ meet(P,A,B)), inference(lemma,[status(thm)],[c3,inner_point_defn,meet_defn,part_of_defn])).
cnf(l_c211, plain, (~ part_of(D,C) | ~ inner_point(P,D) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn,l_t210,part_of_defn])).
cnf(l_c212, plain, (~ part_of(C2,C1) | ~ incident_c(P,C2) | ~ meet(P,C1,C3) | meet(P,C2,C3)), inference(lemma,[status(thm)],[l_t210,meet_defn,part_of_defn])).
cnf(l_c5, plain, (~ end_point(P,C) | ~ end_point(Q,C) | ~ end_point(R,C) | P = Q | P = R | Q = R), inference(lemma,[status(thm)],[c5])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[end_point_defn,l_c211,l_c212,l_c29,l_c5,l_ep,l_ie,l_ine,l_mc2,l_me1,l_me2,l_mi2,l_msym,l_pr,l_pt,l_si,l_sp1,l_sp2,open_defn,proposition_2_14_1_neg])).
% SZS output end Refutation for GEO092+1
