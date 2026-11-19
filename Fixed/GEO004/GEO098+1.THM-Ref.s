%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO098+1, with Axioms/GEO004+0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004+0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Theorem for GEO098+1
% SZS output start Refutation for GEO098+1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/ch2b/GEO098+1/proof1.p
% Problem: Problems/GEO/GEO098+1.p
%------------------------------------------------------------------------------
fof(part_of_defn, axiom, (! [C,C1] : (part_of(C1,C) <=> (! [P] : (incident_c(P,C1) => incident_c(P,C))))), file('Problems/GEO/GEO098+1.p',part_of_defn)).
fof(end_point_defn, axiom, (! [P,C] : (end_point(P,C) <=> (incident_c(P,C) & (! [C1,C2] : ((part_of(C1,C) & part_of(C2,C) & incident_c(P,C1) & incident_c(P,C2)) => (part_of(C1,C2) | part_of(C2,C1))))))), file('Problems/GEO/GEO098+1.p',end_point_defn)).
fof(meet_defn, axiom, (! [P,C,C1] : (meet(P,C,C1) <=> (incident_c(P,C) & incident_c(P,C1) & (! [Q] : ((incident_c(Q,C) & incident_c(Q,C1)) => (end_point(Q,C) & end_point(Q,C1))))))), file('Problems/GEO/GEO098+1.p',meet_defn)).
fof(sum_defn, axiom, (! [C,C1,C2] : ((? [P] : meet(P,C1,C2)) => (C = sum(C1,C2) <=> (! [Q] : (incident_c(Q,C) <=> (incident_c(Q,C1) | incident_c(Q,C2))))))), file('Problems/GEO/GEO098+1.p',sum_defn)).
fof(inner_point_defn, axiom, (! [P,C] : (inner_point(P,C) <=> (incident_c(P,C) & ~ end_point(P,C)))), file('Problems/GEO/GEO098+1.p',inner_point_defn)).
fof(c3, axiom, (! [C] : (? [P] : inner_point(P,C))), file('Problems/GEO/GEO098+1.p',c3)).
fof(c5, axiom, (! [C,P,Q,R] : ((end_point(P,C) & end_point(Q,C) & end_point(R,C)) => (P = Q | P = R | Q = R))), file('Problems/GEO/GEO098+1.p',c5)).
fof(open_defn, axiom, (! [C] : (open(C) <=> (? [P] : end_point(P,C)))), file('Problems/GEO/GEO098+1.p',open_defn)).
fof(c7, axiom, (! [C,C1,C2,P] : ((closed(C) & meet(P,C1,C2) & C = sum(C1,C2)) => (! [Q] : (end_point(Q,C1) => meet(Q,C1,C2))))), file('Problems/GEO/GEO098+1.p',c7)).
fof(c6, axiom, (! [C,P] : (end_point(P,C) => (? [Q] : (end_point(Q,C) & P != Q)))), file('Problems/GEO/GEO098+1.p',c6)).
fof(closed_defn, axiom, (! [C] : (closed(C) <=> ~ ((? [P] : end_point(P,C))))), file('Problems/GEO/GEO098+1.p',closed_defn)).
fof(c9, axiom, (! [C,C1] : ((! [P] : (incident_c(P,C) <=> incident_c(P,C1))) => C = C1)), file('Problems/GEO/GEO098+1.p',c9)).
fof(c4, axiom, (! [C,P] : (inner_point(P,C) => (? [C1,C2] : (meet(P,C1,C2) & C = sum(C1,C2))))), file('Problems/GEO/GEO098+1.p',c4)).
fof(theorem_2_16, conjecture, (! [C,P,Q] : ((closed(C) & incident_c(P,C) & incident_c(Q,C) & P != Q) => (? [C1,C2] : (meet(P,C1,C2) & meet(Q,C1,C2) & C = sum(C1,C2))))), file('Problems/GEO/GEO098+1.p',theorem_2_16)).
fof(theorem_2_16_neg, negated_conjecture, ~ ((! [C,P,Q] : ((closed(C) & incident_c(P,C) & incident_c(Q,C) & P != Q) => (? [C1,C2] : (meet(P,C1,C2) & meet(Q,C1,C2) & C = sum(C1,C2)))))), inference(negate_conjecture,[status(cth)],[theorem_2_16])).
cnf(l_pt, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(l_t210, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn,l_pt,part_of_defn])).
cnf(l_me1, plain, (~ meet(P,A,B) | end_point(P,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_me2, plain, (~ meet(P,A,B) | end_point(P,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_sp1, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn,sum_defn])).
cnf(l_sp2, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn,sum_defn])).
cnf(l_ep, plain, (~ end_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[end_point_defn])).
cnf(l_ie, plain, (~ incident_c(P,C) | end_point(P,C) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(l_msym, plain, (~ meet(P,A,B) | meet(P,B,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mi1, plain, (~ meet(P,A,B) | incident_c(P,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mi2, plain, (~ meet(P,A,B) | incident_c(P,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mc1, plain, (~ meet(P,A,B) | ~ incident_c(Q,A) | ~ incident_c(Q,B) | end_point(Q,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mc2, plain, (~ meet(P,A,B) | ~ incident_c(Q,A) | ~ incident_c(Q,B) | end_point(Q,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_ine, plain, (~ inner_point(P,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(l_c29, plain, (~ part_of(A,B) | ~ meet(P,A,B)), inference(lemma,[status(thm)],[c3,inner_point_defn,meet_defn,part_of_defn])).
cnf(l_c212, plain, (~ part_of(C2,C1) | ~ incident_c(P,C2) | ~ meet(P,C1,C3) | meet(P,C2,C3)), inference(lemma,[status(thm)],[l_t210,meet_defn,part_of_defn])).
cnf(l_c5, plain, (~ end_point(P,C) | ~ end_point(Q,C) | ~ end_point(R,C) | P = Q | P = R | Q = R), inference(lemma,[status(thm)],[c5])).
cnf(l_pinc, plain, (~ part_of(A,B) | ~ incident_c(P,A) | incident_c(P,B)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(t2_14_3, plain, (~ meet(P,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[end_point_defn,l_c29,l_mi1,l_mi2,l_msym])).
cnf(l_sumin, plain, (~ meet(P,A,B) | ~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_sp1s, plain, (~ meet(P,A,B) | part_of(A,sum(A,B))), inference(lemma,[status(thm)],[l_sp1])).
cnf(l_sp2s, plain, (~ meet(P,A,B) | part_of(B,sum(A,B))), inference(lemma,[status(thm)],[l_sp2])).
cnf(p14a, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | ~ incident_c(R,C1) | ~ incident_c(R,C2)), inference(lemma,[status(thm)],[end_point_defn,l_c29,l_msym,l_sp1s,l_sp2s])).
cnf(p14b, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | R != P), inference(lemma,[status(thm)],[l_sp1s,l_sp2s,t2_14_3])).
cnf(p14c, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | ~ incident_c(R,C1) | Q = P | ~ incident_c(Q,C1) | ~ incident_c(Q,C2)), inference(lemma,[status(thm)],[l_c5,l_mc1,l_me1,l_sp1s,l_t210,p14a,p14b])).
cnf(p14d, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | ~ incident_c(R,C2) | Q = P | ~ incident_c(Q,C1) | ~ incident_c(Q,C2)), inference(lemma,[status(thm)],[l_c5,l_mc2,l_me2,l_sp2s,l_t210,p14a,p14b])).
cnf(t2_14_1, plain, (~ meet(P,C1,C2) | ~ open(sum(C1,C2)) | Q = P | ~ incident_c(Q,C1) | ~ incident_c(Q,C2)), inference(lemma,[status(thm)],[l_ep,l_sumin,open_defn,p14c,p14d])).
cnf(l_scomm, plain, (~ meet(P,A,B) | sum(A,B) = sum(B,A)), inference(lemma,[status(thm)],[l_msym,sum_defn])).
cnf(k1, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ end_point(Q,C4) | meet(Q,C3,C4)), inference(lemma,[status(thm)],[c7,l_msym,l_scomm])).
cnf(k1b, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ end_point(Q,C3) | meet(Q,C3,C4)), inference(lemma,[status(thm)],[c7])).
cnf(k2, plain, (~ meet(R,C3,C4) | ~ part_of(C6,C4) | ~ incident_c(R,C6) | meet(R,C3,C6)), inference(lemma,[status(thm)],[l_c212,l_msym])).
cnf(k3, plain, (~ meet(P,C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | end_point(P,C5)), inference(lemma,[status(thm)],[l_me2,l_sp1,l_t210])).
cnf(k4b, plain, (~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ end_point(P,C5) | ~ end_point(Q,C5) | ~ end_point(R,C4) | ~ incident_c(R,C5) | P = Q | R = P | R = Q), inference(lemma,[status(thm)],[l_c5,l_sp1,l_t210])).
cnf(t2_14_5a, plain, (~ meet(P,C1,C2) | ~ end_point(Q,sum(C1,C2)) | ~ meet(Q,C1,C2)), inference(lemma,[status(thm)],[l_sp1s,l_sp2s,t2_14_3])).
cnf(t2_14_5b, plain, (~ meet(P,C1,C2) | meet(Q,C1,C2) | ~ end_point(Q,C1) | end_point(Q,sum(C1,C2))), inference(lemma,[status(thm)],[c6,c7,closed_defn,l_c5,l_ep,l_me2,l_msym,l_scomm,l_sp1s,l_sp2s,l_sumin,l_t210,t2_14_3])).
cnf(b0, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | incident_c(R,C6)), inference(lemma,[status(thm)],[k1,k3,k4b,l_mc2,l_me1,l_me2,l_mi1,l_mi2,l_msym,l_pinc,l_scomm,l_sp2,l_sumin,t2_14_5a])).
cnf(b1, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | meet(R,C3,C6)), inference(lemma,[status(thm)],[b0,k1,k2,l_sp2])).
cnf(b2, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | meet(P,C5,sum(C3,C6))), inference(lemma,[status(thm)],[b1,k1,k2,l_ine,l_mc2,l_me1,l_me2,l_mi1,l_mi2,l_msym,l_pinc,l_scomm,l_sp1,l_sp2,l_sumin,l_t210,meet_defn,open_defn,t2_14_1,t2_14_5b])).
cnf(b4, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | C = sum(C5,sum(C3,C6))), inference(lemma,[status(thm)],[b1,b2,c9,l_msym,l_scomm,l_sumin,sum_defn])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[b2,b4,c4,c6,closed_defn,inner_point_defn,k1,k1b,l_ie,l_me1,l_me2,l_mi1,l_mi2,l_msym,l_scomm,l_sumin,open_defn,theorem_2_16_neg])).
% SZS output end Refutation for GEO098+1
