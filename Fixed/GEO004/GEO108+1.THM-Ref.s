%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO108+1, with Axioms/GEO004+0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified locally against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004+0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Theorem for GEO108+1
% SZS output start Refutation for GEO108+1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/fixed/re/ch3/GEO108+1/proof1.p
% Problem: Problems/GEO/GEO108+1.p
%------------------------------------------------------------------------------
fof(part_of_defn, axiom, (! [C,C1] : (part_of(C1,C) <=> (! [P] : (incident_c(P,C1) => incident_c(P,C))))), file('Problems/GEO/GEO108+1.p',part_of_defn)).
fof(end_point_defn, axiom, (! [P,C] : (end_point(P,C) <=> (incident_c(P,C) & (! [C1,C2] : ((part_of(C1,C) & part_of(C2,C) & incident_c(P,C1) & incident_c(P,C2)) => (part_of(C1,C2) | part_of(C2,C1))))))), file('Problems/GEO/GEO108+1.p',end_point_defn)).
fof(meet_defn, axiom, (! [P,C,C1] : (meet(P,C,C1) <=> (incident_c(P,C) & incident_c(P,C1) & (! [Q] : ((incident_c(Q,C) & incident_c(Q,C1)) => (end_point(Q,C) & end_point(Q,C1))))))), file('Problems/GEO/GEO108+1.p',meet_defn)).
fof(sum_defn, axiom, (! [C,C1,C2] : ((? [P] : meet(P,C1,C2)) => (C = sum(C1,C2) <=> (! [Q] : (incident_c(Q,C) <=> (incident_c(Q,C1) | incident_c(Q,C2))))))), file('Problems/GEO/GEO108+1.p',sum_defn)).
fof(inner_point_defn, axiom, (! [P,C] : (inner_point(P,C) <=> (incident_c(P,C) & ~ end_point(P,C)))), file('Problems/GEO/GEO108+1.p',inner_point_defn)).
fof(c9, axiom, (! [C,C1] : ((! [P] : (incident_c(P,C) <=> incident_c(P,C1))) => C = C1)), file('Problems/GEO/GEO108+1.p',c9)).
fof(c3, axiom, (! [C] : (? [P] : inner_point(P,C))), file('Problems/GEO/GEO108+1.p',c3)).
fof(c5, axiom, (! [C,P,Q,R] : ((end_point(P,C) & end_point(Q,C) & end_point(R,C)) => (P = Q | P = R | Q = R))), file('Problems/GEO/GEO108+1.p',c5)).
fof(c4, axiom, (! [C,P] : (inner_point(P,C) => (? [C1,C2] : (meet(P,C1,C2) & C = sum(C1,C2))))), file('Problems/GEO/GEO108+1.p',c4)).
fof(c2, axiom, (! [C,C1,C2,C3] : ((part_of(C1,C) & part_of(C2,C) & part_of(C3,C) & (? [P] : (end_point(P,C1) & end_point(P,C2) & end_point(P,C3)))) => (part_of(C2,C3) | part_of(C3,C2) | part_of(C1,C2) | part_of(C2,C1) | part_of(C1,C3) | part_of(C3,C1)))), file('Problems/GEO/GEO108+1.p',c2)).
fof(open_defn, axiom, (! [C] : (open(C) <=> (? [P] : end_point(P,C)))), file('Problems/GEO/GEO108+1.p',open_defn)).
fof(c6, axiom, (! [C,P] : (end_point(P,C) => (? [Q] : (end_point(Q,C) & P != Q)))), file('Problems/GEO/GEO108+1.p',c6)).
fof(c7, axiom, (! [C,C1,C2,P] : ((closed(C) & meet(P,C1,C2) & C = sum(C1,C2)) => (! [Q] : (end_point(Q,C1) => meet(Q,C1,C2))))), file('Problems/GEO/GEO108+1.p',c7)).
fof(closed_defn, axiom, (! [C] : (closed(C) <=> ~ ((? [P] : end_point(P,C))))), file('Problems/GEO/GEO108+1.p',closed_defn)).
fof(between_c_defn, axiom, (! [C,P,Q,R] : (between_c(C,P,Q,R) <=> (P != R & (? [Cpp] : (part_of(Cpp,C) & end_point(P,Cpp) & end_point(R,Cpp) & inner_point(Q,Cpp)))))), file('Problems/GEO/GEO108+1.p',between_c_defn)).
fof(between_c2_defn, hypothesis, (! [C,P,Q,R] : (between_c2(C,P,Q,R) <=> (P != Q & P != R & Q != R & (? [C1,C2] : (meet(Q,C1,C2) & part_of(C1,C) & part_of(C2,C) & end_point(P,C1) & end_point(R,C2)))))), file('Problems/GEO/GEO108+1.p',between_c2_defn)).
fof(between_c3_defn, hypothesis, (! [C,P,Q,R] : (between_c3(C,P,Q,R) <=> (P != Q & P != R & Q != R & (? [C1,C2] : (meet(Q,C1,C2) & sum(C1,C2) = C & incident_c(P,C1) & incident_c(R,C2)))))), file('Problems/GEO/GEO108+1.p',between_c3_defn)).
fof(theorem_3_5, conjecture, (! [C,P,Q,R] : (between_c2(C,P,Q,R) <=> between_c3(C,P,Q,R))), file('Problems/GEO/GEO108+1.p',theorem_3_5)).
fof(theorem_3_5_neg, negated_conjecture, ~ ((! [C,P,Q,R] : (between_c2(C,P,Q,R) <=> between_c3(C,P,Q,R)))), inference(negate_conjecture,[status(cth)],[theorem_3_5])).
cnf(l_pt, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(l_t210, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn,l_pt,part_of_defn])).
cnf(l_me1, plain, (~ meet(P,A,B) | end_point(P,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_me2, plain, (~ meet(P,A,B) | end_point(P,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_sp1, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn,sum_defn])).
cnf(l_sp2, plain, (~ meet(P,A,B) | C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn,sum_defn])).
cnf(l_si, plain, (~ meet(P,A,B) | C != sum(A,B) | ~ incident_c(Q,C) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_ep, plain, (~ end_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[end_point_defn])).
cnf(l_ip, plain, (~ inner_point(P,C) | incident_c(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(l_ie, plain, (~ incident_c(P,C) | end_point(P,C) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(l_pr, plain, (part_of(C,C)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(l_pa, plain, (~ part_of(A,B) | ~ part_of(B,A) | A = B), inference(lemma,[status(thm)],[c9,part_of_defn])).
cnf(l_msym, plain, (~ meet(P,A,B) | meet(P,B,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mi1, plain, (~ meet(P,A,B) | incident_c(P,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mi2, plain, (~ meet(P,A,B) | incident_c(P,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mc1, plain, (~ meet(P,A,B) | ~ incident_c(Q,A) | ~ incident_c(Q,B) | end_point(Q,A)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_mc2, plain, (~ meet(P,A,B) | ~ incident_c(Q,A) | ~ incident_c(Q,B) | end_point(Q,B)), inference(lemma,[status(thm)],[meet_defn])).
cnf(l_ine, plain, (~ inner_point(P,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(l_c29, plain, (~ part_of(A,B) | ~ meet(P,A,B)), inference(lemma,[status(thm)],[c3,inner_point_defn,meet_defn,part_of_defn])).
cnf(l_c211, plain, (~ part_of(D,C) | ~ inner_point(P,D) | inner_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn,l_t210,part_of_defn])).
cnf(l_c212, plain, (~ part_of(C2,C1) | ~ incident_c(P,C2) | ~ meet(P,C1,C3) | meet(P,C2,C3)), inference(lemma,[status(thm)],[l_t210,meet_defn,part_of_defn])).
cnf(l_c5, plain, (~ end_point(P,C) | ~ end_point(Q,C) | ~ end_point(R,C) | P = Q | P = R | Q = R), inference(lemma,[status(thm)],[c5])).
cnf(l_pinc, plain, (~ part_of(A,B) | ~ incident_c(P,A) | incident_c(P,B)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(g_cmp, plain, (~ part_of(C1,C3) | ~ part_of(C2,C3) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[end_point_defn,l_ep])).
cnf(g_rinner, plain, (~ part_of(C1,C2) | ~ end_point(P,C1) | ~ end_point(Q,C1) | ~ end_point(P,C2) | ~ end_point(Q,C2) | P = Q | ~ incident_c(R,C2) | incident_c(R,C1) | inner_point(R,C2)), inference(lemma,[status(thm)],[l_c5,l_ep,l_ie])).
cnf(g_in_piece, plain, (~ part_of(C1,C2) | ~ part_of(D,C2) | ~ end_point(P,C2) | ~ incident_c(P,C1) | ~ incident_c(P,D) | ~ incident_c(R,D) | incident_c(R,C1) | part_of(C1,D)), inference(lemma,[status(thm)],[end_point_defn,l_pinc])).
cnf(g_three, plain, (~ part_of(D,C2) | ~ end_point(P,C2) | ~ end_point(Q,C2) | ~ incident_c(P,D) | ~ incident_c(Q,D) | ~ end_point(R,D) | P = Q | R = P | R = Q), inference(lemma,[status(thm)],[l_c5,l_t210])).
cnf(g_core, plain, (~ part_of(C1,C2) | ~ end_point(P,C1) | ~ end_point(Q,C1) | ~ end_point(P,C2) | ~ end_point(Q,C2) | P = Q | ~ incident_c(R,C2) | incident_c(R,C1)), inference(lemma,[status(thm)],[c4,g_in_piece,g_rinner,g_three,l_ep,l_me1,l_me2,l_mi2,l_pinc,l_si,l_sp1,l_sp2])).
cnf(g_s2, plain, (~ part_of(C1,C3) | ~ part_of(C2,C3) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | ~ end_point(Q,C1) | ~ end_point(Q,C2) | P = Q | C1 = C2), inference(lemma,[status(thm)],[g_cmp,g_core,l_pa,part_of_defn])).
cnf(t2_13, plain, (~ part_of(C1,C) | ~ part_of(C2,C) | ~ open(C) | P = Q | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(Q,C1) | ~ end_point(Q,C2) | C1 = C2), inference(lemma,[status(thm)],[c2,c4,g_s2,l_c5,l_ep,l_ie,l_me1,l_me2,l_pinc,l_pt,l_si,l_sp1,l_sp2,l_t210,open_defn])).
cnf(t2_14_3, plain, (~ meet(P,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[end_point_defn,l_c29,l_mi1,l_mi2,l_msym])).
cnf(l_sumpart, plain, (~ meet(P,A,B) | ~ part_of(A,C) | ~ part_of(B,C) | part_of(sum(A,B),C)), inference(lemma,[status(thm)],[l_si,part_of_defn])).
cnf(l_sumself, plain, (~ meet(P,A,B) | incident_c(Q,sum(A,B)) | ~ incident_c(Q,A)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_sumself2, plain, (~ meet(P,A,B) | incident_c(Q,sum(A,B)) | ~ incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_sumin, plain, (~ meet(P,A,B) | ~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(l_sp1s, plain, (~ meet(P,A,B) | part_of(A,sum(A,B))), inference(lemma,[status(thm)],[l_sp1])).
cnf(l_sp2s, plain, (~ meet(P,A,B) | part_of(B,sum(A,B))), inference(lemma,[status(thm)],[l_sp2])).
cnf(p14a, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | ~ incident_c(R,C1) | ~ incident_c(R,C2)), inference(lemma,[status(thm)],[end_point_defn,l_c29,l_msym,l_sp1s,l_sp2s])).
cnf(p14b, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | R != P), inference(lemma,[status(thm)],[l_sp1s,l_sp2s,t2_14_3])).
cnf(p14c, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | ~ incident_c(R,C1) | Q = P | ~ incident_c(Q,C1) | ~ incident_c(Q,C2)), inference(lemma,[status(thm)],[l_c5,l_mc1,l_me1,l_sp1s,l_t210,p14a,p14b])).
cnf(p14d, plain, (~ meet(P,C1,C2) | ~ end_point(R,sum(C1,C2)) | ~ incident_c(R,C2) | Q = P | ~ incident_c(Q,C1) | ~ incident_c(Q,C2)), inference(lemma,[status(thm)],[l_c5,l_mc2,l_me2,l_sp2s,l_t210,p14a,p14b])).
cnf(t2_14_1, plain, (~ meet(P,C1,C2) | ~ open(sum(C1,C2)) | Q = P | ~ incident_c(Q,C1) | ~ incident_c(Q,C2)), inference(lemma,[status(thm)],[l_ep,l_sumin,open_defn,p14c,p14d])).
cnf(l_scomm, plain, (~ meet(P,A,B) | sum(A,B) = sum(B,A)), inference(lemma,[status(thm)],[l_msym,sum_defn])).
cnf(q2, plain, (~ open(C) | ~ part_of(C1,C) | C1 = C | ~ end_point(P,C1) | ~ end_point(P,C) | ~ end_point(Q,C1) | P = Q | ~ end_point(Q,C)), inference(lemma,[status(thm)],[l_pr,t2_13])).
cnf(q3, plain, (~ open(C) | ~ part_of(C1,C) | ~ end_point(P,C1) | ~ end_point(Q,C1) | P = Q | ~ end_point(P,C) | ~ meet(Q,D1,D2) | C != sum(D1,D2) | ~ incident_c(P,D1) | D1 = C1), inference(lemma,[status(thm)],[l_me1,l_sp1,l_t210,t2_13])).
cnf(q3b, plain, (~ open(C) | ~ part_of(C1,C) | ~ end_point(P,C1) | ~ end_point(Q,C1) | P = Q | ~ end_point(P,C) | ~ meet(Q,D1,D2) | C != sum(D1,D2) | ~ incident_c(P,D2) | D2 = C1), inference(lemma,[status(thm)],[l_me2,l_sp2,l_t210,t2_13])).
cnf(q4, plain, (~ open(C) | ~ part_of(C1,C) | C1 = C | ~ end_point(P,C1) | ~ end_point(P,C) | ~ end_point(Q,C1) | P = Q | inner_point(Q,C)), inference(lemma,[status(thm)],[l_ep,l_ie,l_pinc,q2])).
fof(t2_15f, plain, (! [P,Q,C] : ((P != Q & incident_c(P,C) & incident_c(Q,C)) => (? [D] : (part_of(D,C) & end_point(P,D) & end_point(Q,D))))), inference(lemma,[status(thm)],[c4,l_ep,l_ie,l_me1,l_me2,l_pr,l_pt,l_si,l_sp1,l_sp2,l_t210])).
fof(t2_18f, plain, (! [C,C1,P] : ((open(C) & part_of(C1,C) & C1 != C & end_point(P,C1) & end_point(P,C)) => (? [Q,C2] : (P != Q & meet(Q,C1,C2) & C = sum(C1,C2))))), inference(lemma,[status(thm)],[c4,c6,l_ep,l_msym,l_scomm,l_sumin,q3,q3b,q4])).
cnf(t2_6_1, plain, (~ part_of(C2,C3) | ~ meet(P,C1,C2) | ~ meet(P,C1,C3) | part_of(sum(C1,C2),sum(C1,C3))), inference(lemma,[status(thm)],[l_sumin,l_sumself,l_sumself2,part_of_defn])).
cnf(t2_20, plain, (~ part_of(C3,C1) | ~ part_of(C3,C2) | ~ end_point(P,C1) | ~ end_point(P,C2) | ~ end_point(P,C3) | ~ part_of(C1,C) | ~ part_of(C2,C) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[c2,l_c29,l_c5,l_me1,l_me2,l_msym,l_pt,l_sp2,open_defn,t2_18f,t2_6_1])).
cnf(t2_21, plain, (~ open(C) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C1) | ~ end_point(P,C2) | P = Q | ~ incident_c(Q,C1) | ~ incident_c(Q,C2) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[l_ep,l_pt,t2_13,t2_15f,t2_20])).
cnf(t2_22, plain, (~ end_point(P,C1) | ~ end_point(P,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ open(C) | meet(P,C1,C2) | part_of(C1,C2) | part_of(C2,C1)), inference(lemma,[status(thm)],[l_ep,l_pt,meet_defn,t2_13,t2_15f,t2_20])).
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
cnf(b3, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | meet(Q,C5,sum(C3,C6))), inference(lemma,[status(thm)],[b1,k1,k2,l_ine,l_mc2,l_me1,l_me2,l_mi1,l_mi2,l_msym,l_pinc,l_scomm,l_sp1,l_sp2,l_sumin,l_t210,meet_defn,open_defn,t2_14_1,t2_14_5b])).
cnf(b4, plain, (~ closed(C) | ~ meet(P,C3,C4) | C != sum(C3,C4) | ~ meet(Q,C5,C6) | C4 != sum(C5,C6) | ~ incident_c(P,C5) | ~ end_point(R,C4) | R = P | ~ inner_point(Q,C4) | P = Q | C = sum(C5,sum(C3,C6))), inference(lemma,[status(thm)],[b1,b2,c9,l_msym,l_pinc,l_pt,l_scomm,l_sp2,l_sumin,sum_defn])).
fof(t2_16f, plain, (! [C,P,Q] : ((closed(C) & incident_c(P,C) & incident_c(Q,C) & P != Q) => (? [C1,C2] : (meet(P,C1,C2) & meet(Q,C1,C2) & C = sum(C1,C2))))), inference(lemma,[status(thm)],[b2,b3,b4,c4,c6,closed_defn,k1,k1b,l_ie,l_me1,l_me2,l_mi1,l_mi2,l_msym,l_scomm,l_sumin,open_defn])).
fof(t2_17f, plain, (! [C,C1,P,Q] : ((closed(C) & part_of(C1,C) & end_point(P,C1) & end_point(Q,C1) & P != Q) => (? [C2] : (meet(P,C1,C2) & meet(Q,C1,C2) & C = sum(C1,C2))))), inference(lemma,[status(thm)],[c2,l_c29,l_ep,l_me1,l_me2,l_msym,l_pinc,l_pr,l_scomm,l_sp1,l_sp2,open_defn,t2_13,t2_16f])).
cnf(bc_pq, plain, (~ between_c(C,P,Q,R) | P != Q), inference(lemma,[status(thm)],[between_c_defn,l_ine])).
cnf(bc_qr, plain, (~ between_c(C,P,Q,R) | Q != R), inference(lemma,[status(thm)],[between_c_defn,l_ine])).
cnf(bc_pr, plain, (~ between_c(C,P,Q,R) | P != R), inference(lemma,[status(thm)],[between_c_defn])).
cnf(bc_ip, plain, (~ between_c(C,P,Q,R) | incident_c(P,C)), inference(lemma,[status(thm)],[between_c_defn,l_ep,l_pinc])).
cnf(bc_ir, plain, (~ between_c(C,P,Q,R) | incident_c(R,C)), inference(lemma,[status(thm)],[between_c_defn,l_ep,l_pinc])).
cnf(bc_sym, plain, (~ between_c(C,P,Q,R) | between_c(C,R,Q,P)), inference(lemma,[status(thm)],[between_c_defn])).
cnf(t2_14_5b2, plain, (~ meet(P,C1,C2) | meet(Q,C1,C2) | ~ end_point(Q,C2) | end_point(Q,sum(C1,C2))), inference(lemma,[status(thm)],[l_msym,l_scomm,t2_14_5b])).
cnf(nmP, plain, (~ meet(Q,C1,C2) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | ~ meet(P,C1,C2)), inference(lemma,[status(thm)],[l_c5,l_me2])).
cnf(nmR, plain, (~ meet(Q,C1,C2) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | ~ meet(R,C1,C2)), inference(lemma,[status(thm)],[l_c5,l_me1])).
cnf(c3b, plain, (~ meet(Q,C1,C2) | ~ part_of(C1,C) | ~ part_of(C2,C) | ~ end_point(P,C1) | ~ end_point(R,C2) | P = Q | Q = R | P = R | between_c(C,P,Q,R)), inference(lemma,[status(thm)],[between_c_defn,l_ie,l_mi1,l_sumpart,l_sumself,nmP,nmR,t2_14_5a,t2_14_5b,t2_14_5b2])).
fof(t3_3a, plain, (! [C,P,Q,R] : (between_c(C,P,Q,R) => (? [C1,C2] : (meet(Q,C1,C2) & part_of(C1,C) & part_of(C2,C) & end_point(P,C1) & end_point(R,C2))))), inference(lemma,[status(thm)],[between_c_defn,c4,l_c5,l_ep,l_ine,l_me1,l_me2,l_msym,l_pt,l_sp1,l_sp2,l_sumin,l_t210])).
cnf(t3_7, plain, (~ closed(C) | P = Q | Q = R | P = R | ~ incident_c(P,C) | ~ incident_c(Q,C) | ~ incident_c(R,C) | between_c(C,P,Q,R)), inference(lemma,[status(thm)],[between_c_defn,l_c5,l_ie,l_me1,l_me2,l_sp1,l_sp2,l_sumin,t2_16f])).
cnf(t3_8_3, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ between_c(C,Q,P,R)), inference(lemma,[status(thm)],[bc_pq,bc_sym,between_c_defn,l_ep,l_ine,l_ip,l_t210,t2_21])).
cnf(t3_8_4, plain, (~ incident_c(P,C) | ~ incident_c(Q,C) | ~ incident_c(R,C) | P = Q | Q = R | P = R | between_c(C,P,Q,R) | between_c(C,Q,P,R) | between_c(C,P,R,Q)), inference(lemma,[status(thm)],[bc_sym,between_c_defn,c3b,closed_defn,l_c5,l_ep,l_ie,l_pinc,open_defn,t2_15f,t2_22,t3_7])).
cnf(bc_in, plain, (~ between_c(D,P,Q,R) | inner_point(Q,D)), inference(lemma,[status(thm)],[between_c_defn,l_c211])).
cnf(bc_lift, plain, (~ between_c(D,P,Q,R) | ~ part_of(D,C) | between_c(C,P,Q,R)), inference(lemma,[status(thm)],[between_c_defn,l_pt])).
cnf(os1a, plain, (~ between_c(E,P,Q,R) | ~ end_point(Q,E)), inference(lemma,[status(thm)],[bc_in,l_ine])).
cnf(os1b, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ part_of(E,C) | ~ between_c(E,Q,P,R)), inference(lemma,[status(thm)],[bc_lift,t3_8_3])).
cnf(os1c, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ part_of(E,C) | ~ between_c(E,P,R,Q)), inference(lemma,[status(thm)],[bc_lift,bc_sym,t3_8_3])).
cnf(os1, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ meet(Q,E1,E2) | C != sum(E1,E2) | ~ incident_c(P,E1) | ~ incident_c(R,E1)), inference(lemma,[status(thm)],[bc_pq,bc_pr,bc_qr,l_me1,l_mi1,l_sp1,os1a,os1b,os1c,t3_8_4])).
cnf(os2, plain, (~ open(C) | ~ between_c(C,P,Q,R) | ~ meet(Q,E1,E2) | C != sum(E1,E2) | ~ incident_c(P,E2) | ~ incident_c(R,E2)), inference(lemma,[status(thm)],[l_msym,l_scomm,os1])).
fof(b3o, plain, (! [C,P,Q,R] : ((open(C) & between_c(C,P,Q,R)) => (? [C1,C2] : (meet(Q,C1,C2) & sum(C1,C2) = C & incident_c(P,C1) & incident_c(R,C2))))), inference(lemma,[status(thm)],[bc_in,bc_ip,bc_ir,c4,l_msym,l_scomm,l_si,os1,os2])).
cnf(cl1, plain, (~ meet(Q,D1,D2) | ~ end_point(P,D1) | ~ end_point(R,D2) | P = Q | Q = R | P = R | end_point(P,sum(D1,D2))), inference(lemma,[status(thm)],[nmP,t2_14_5b])).
cnf(cl2, plain, (~ meet(Q,D1,D2) | ~ end_point(P,D1) | ~ end_point(R,D2) | P = Q | Q = R | P = R | end_point(R,sum(D1,D2))), inference(lemma,[status(thm)],[nmR,t2_14_5b2])).
cnf(cl3, plain, (~ meet(Q,D1,D2) | inner_point(Q,sum(D1,D2))), inference(lemma,[status(thm)],[l_ie,l_mi1,l_sumself,t2_14_5a])).
fof(cl4, plain, (! [C,D1,D2,P,Q,R] : ((closed(C) & meet(Q,D1,D2) & part_of(D1,C) & part_of(D2,C) & end_point(P,D1) & end_point(R,D2) & P != Q & Q != R & P != R) => (? [K] : (meet(P,K,sum(D1,D2)) & C = sum(K,sum(D1,D2)))))), inference(lemma,[status(thm)],[cl1,cl2,l_msym,l_scomm,l_sumpart,t2_17f])).
fof(cl5, plain, (! [C,D1,D2,P,Q,R] : ((closed(C) & meet(Q,D1,D2) & part_of(D1,C) & part_of(D2,C) & end_point(P,D1) & end_point(R,D2) & P != Q & Q != R & P != R) => (? [E1,E2] : (meet(Q,E1,E2) & sum(E1,E2) = C & incident_c(P,E1) & incident_c(R,E2))))), inference(lemma,[status(thm)],[b1,b3,b4,cl2,cl3,cl4,l_ep,l_sumself2])).
fof(b3c, plain, (! [C,P,Q,R] : ((closed(C) & between_c(C,P,Q,R)) => (? [C1,C2] : (meet(Q,C1,C2) & sum(C1,C2) = C & incident_c(P,C1) & incident_c(R,C2))))), inference(lemma,[status(thm)],[bc_pq,bc_pr,bc_qr,cl5,t3_3a])).
fof(b23, plain, (! [C,P,Q,R] : (between_c(C,P,Q,R) => (? [C1,C2] : (meet(Q,C1,C2) & sum(C1,C2) = C & incident_c(P,C1) & incident_c(R,C2))))), inference(lemma,[status(thm)],[b3c,b3o,closed_defn,open_defn])).
cnf(m2, plain, (~ meet(Q,C1,C2) | ~ part_of(D1,C1) | ~ part_of(D2,C2) | ~ incident_c(Q,D1) | ~ incident_c(Q,D2) | meet(Q,D1,D2)), inference(lemma,[status(thm)],[k2,l_msym])).
fof(b32, plain, (! [C,C1,C2,P,Q,R] : ((meet(Q,C1,C2) & sum(C1,C2) = C & incident_c(P,C1) & incident_c(R,C2) & P != Q & Q != R) => (? [D1,D2] : (meet(Q,D1,D2) & part_of(D1,C) & part_of(D2,C) & end_point(P,D1) & end_point(R,D2))))), inference(lemma,[status(thm)],[l_ep,l_mi1,l_mi2,l_pt,l_sp1,l_sp2,m2,t2_15f])).
fof(d23, plain, (! [C,P,Q,R] : (between_c2(C,P,Q,R) => between_c3(C,P,Q,R))), inference(lemma,[status(thm)],[b23,between_c2_defn,between_c3_defn,c3b])).
fof(d32, plain, (! [C,P,Q,R] : (between_c3(C,P,Q,R) => between_c2(C,P,Q,R))), inference(lemma,[status(thm)],[b32,between_c2_defn,between_c3_defn])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[d23,d32,theorem_3_5_neg])).
% SZS output end Refutation for GEO108+1
