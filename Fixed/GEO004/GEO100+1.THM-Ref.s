%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO100+1, with Axioms/GEO004+0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004+0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Theorem for GEO100+1
% SZS output start Refutation for GEO100+1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/ch2b/GEO100+1/proof1.p
% Problem: Problems/GEO/GEO100+1.p
%------------------------------------------------------------------------------
fof(part_of_defn, axiom, (! [C,C1] : (part_of(C1,C) <=> (! [P] : (incident_c(P,C1) => incident_c(P,C))))), file('Problems/GEO/GEO100+1.p',part_of_defn)).
fof(end_point_defn, axiom, (! [P,C] : (end_point(P,C) <=> (incident_c(P,C) & (! [C1,C2] : ((part_of(C1,C) & part_of(C2,C) & incident_c(P,C1) & incident_c(P,C2)) => (part_of(C1,C2) | part_of(C2,C1))))))), file('Problems/GEO/GEO100+1.p',end_point_defn)).
fof(meet_defn, axiom, (! [P,C,C1] : (meet(P,C,C1) <=> (incident_c(P,C) & incident_c(P,C1) & (! [Q] : ((incident_c(Q,C) & incident_c(Q,C1)) => (end_point(Q,C) & end_point(Q,C1))))))), file('Problems/GEO/GEO100+1.p',meet_defn)).
fof(sum_defn, axiom, (! [C,C1,C2] : ((? [P] : meet(P,C1,C2)) => (C = sum(C1,C2) <=> (! [Q] : (incident_c(Q,C) <=> (incident_c(Q,C1) | incident_c(Q,C2))))))), file('Problems/GEO/GEO100+1.p',sum_defn)).
fof(inner_point_defn, axiom, (! [P,C] : (inner_point(P,C) <=> (incident_c(P,C) & ~ end_point(P,C)))), file('Problems/GEO/GEO100+1.p',inner_point_defn)).
fof(c9, axiom, (! [C,C1] : ((! [P] : (incident_c(P,C) <=> incident_c(P,C1))) => C = C1)), file('Problems/GEO/GEO100+1.p',c9)).
fof(c5, axiom, (! [C,P,Q,R] : ((end_point(P,C) & end_point(Q,C) & end_point(R,C)) => (P = Q | P = R | Q = R))), file('Problems/GEO/GEO100+1.p',c5)).
fof(c4, axiom, (! [C,P] : (inner_point(P,C) => (? [C1,C2] : (meet(P,C1,C2) & C = sum(C1,C2))))), file('Problems/GEO/GEO100+1.p',c4)).
fof(c2, axiom, (! [C,C1,C2,C3] : ((part_of(C1,C) & part_of(C2,C) & part_of(C3,C) & (? [P] : (end_point(P,C1) & end_point(P,C2) & end_point(P,C3)))) => (part_of(C2,C3) | part_of(C3,C2) | part_of(C1,C2) | part_of(C2,C1) | part_of(C1,C3) | part_of(C3,C1)))), file('Problems/GEO/GEO100+1.p',c2)).
fof(open_defn, axiom, (! [C] : (open(C) <=> (? [P] : end_point(P,C)))), file('Problems/GEO/GEO100+1.p',open_defn)).
fof(c6, axiom, (! [C,P] : (end_point(P,C) => (? [Q] : (end_point(Q,C) & P != Q)))), file('Problems/GEO/GEO100+1.p',c6)).
fof(theorem_2_18, conjecture, (! [C,C1,P] : ((open(C) & part_of(C1,C) & C1 != C & end_point(P,C1) & end_point(P,C)) => (? [Q,C2] : (P != Q & meet(Q,C1,C2) & C = sum(C1,C2))))), file('Problems/GEO/GEO100+1.p',theorem_2_18)).
fof(theorem_2_18_neg, negated_conjecture, ~ ((! [C,C1,P] : ((open(C) & part_of(C1,C) & C1 != C & end_point(P,C1) & end_point(P,C)) => (? [Q,C2] : (P != Q & meet(Q,C1,C2) & C = sum(C1,C2)))))), inference(negate_conjecture,[status(cth)],[theorem_2_18])).
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
cnf(l_pa, plain, (~ part_of(A,B) | ~ part_of(B,A) | A = B), inference(lemma,[status(thm)],[c9,part_of_defn])).
cnf(l_msym, plain, (~ meet(P,A,B) | meet(P,B,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mi1, plain, (~ meet(P,A,B) | incident_c(P,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mi2, plain, (~ meet(P,A,B) | incident_c(P,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_c5, plain, (~ end_point(P,C) | ~ end_point(Q,C) | ~ end_point(R,C) | P = Q | P = R | Q = R), inference(lemma,[status(thm)],[c5])).
cnf(l_pinc, plain, (~ part_of(A,B) | ~ incident_c(P,A) | incident_c(P,B)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(g_cmp, plain, (~ part_of(C1,C3) | ~ part_of(C2,C3) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[end_point_defn,l_ep])).
cnf(g_rinner, plain, (~ part_of(C1,C2) | ~ end_point(P,C1) | ~ end_point(Q,C1) | ~ end_point(P,C2) | ~ end_point(Q,C2) | P = Q | ~ incident_c(R,C2) | incident_c(R,C1) | inner_point(R,C2)), inference(lemma,[status(thm)],[l_c5,l_ep,l_ie])).
cnf(g_in_piece, plain, (~ part_of(C1,C2) | ~ part_of(D,C2) | ~ end_point(P,C2) | ~ incident_c(P,C1) | ~ incident_c(P,D) | ~ incident_c(R,D) | incident_c(R,C1) | part_of(C1,D)), inference(lemma,[status(thm)],[end_point_defn,l_pinc])).
cnf(g_three, plain, (~ part_of(D,C2) | ~ end_point(P,C2) | ~ end_point(Q,C2) | ~ incident_c(P,D) | ~ incident_c(Q,D) | ~ end_point(R,D) | P = Q | R = P | R = Q), inference(lemma,[status(thm)],[l_c5,l_t210])).
cnf(g_core, plain, (~ part_of(C1,C2) | ~ end_point(P,C1) | ~ end_point(Q,C1) | ~ end_point(P,C2) | ~ end_point(Q,C2) | P = Q | ~ incident_c(R,C2) | incident_c(R,C1)), inference(lemma,[status(thm)],[c4,g_in_piece,g_rinner,g_three,l_ep,l_me1,l_me2,l_mi1,l_mi2,l_pinc,l_si,l_sp1,l_sp2])).
cnf(g_s2, plain, (~ part_of(C1,C3) | ~ part_of(C2,C3) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | ~ end_point(Q,C1) | ~ end_point(Q,C2) | P = Q | C1 = C2), inference(lemma,[status(thm)],[g_cmp,g_core,l_pa,part_of_defn])).
cnf(t2_13, plain, (~ part_of(C1,C) | ~ part_of(C2,C) | ~ open(C) | P = Q | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(Q,C1) | ~ end_point(Q,C2) | C1 = C2), inference(lemma,[status(thm)],[c2,c4,g_s2,l_c5,l_ep,l_ie,l_me1,l_me2,l_pinc,l_pt,l_si,l_sp1,l_sp2,l_t210,open_defn])).
cnf(l_sumin, plain, (~ meet(P,A,B) | ~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_scomm, plain, (~ meet(P,A,B) | sum(A,B) = sum(B,A)), inference(lemma,[status(thm)],[l_msym,sum_defn])).
cnf(q2, plain, (~ open(C) | ~ part_of(C1,C) | C1 = C | ~ end_point(P,C1) | ~ end_point(P,C) | ~ end_point(Q,C1) | P = Q | ~ end_point(Q,C)), inference(lemma,[status(thm)],[l_pr,t2_13])).
cnf(q3, plain, (~ open(C) | ~ part_of(C1,C) | ~ end_point(P,C1) | ~ end_point(Q,C1) | P = Q | ~ end_point(P,C) | ~ meet(Q,D1,D2) | C != sum(D1,D2) | ~ incident_c(P,D1) | D1 = C1), inference(lemma,[status(thm)],[l_me1,l_sp1,l_t210,t2_13])).
cnf(q3b, plain, (~ open(C) | ~ part_of(C1,C) | ~ end_point(P,C1) | ~ end_point(Q,C1) | P = Q | ~ end_point(P,C) | ~ meet(Q,D1,D2) | C != sum(D1,D2) | ~ incident_c(P,D2) | D2 = C1), inference(lemma,[status(thm)],[l_me2,l_sp2,l_t210,t2_13])).
cnf(q4, plain, (~ open(C) | ~ part_of(C1,C) | C1 = C | ~ end_point(P,C1) | ~ end_point(P,C) | ~ end_point(Q,C1) | P = Q | inner_point(Q,C)), inference(lemma,[status(thm)],[l_ep,l_ie,l_pinc,q2])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[c4,c6,l_ep,l_msym,l_scomm,l_sumin,q3,q3b,q4,theorem_2_18_neg])).
% SZS output end Refutation for GEO100+1
