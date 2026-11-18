%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO090+1 : TPTP v10.0.0. Released v2.4.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : ContradictoryAxioms
% Output   : Refutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : agrees with TPTP v10.0.0 (Theorem)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: The axiom file GEO004+0 (Kulik and Eschenbach's curves)
%            is inconsistent: it makes sum a total function, while in Kulik and Eschenbach's report
%            the sum of two curves exists only when they meet. This 36-step refutation uses only the
%            axioms (sum_defn, part_of_defn, end_point_defn, inner_point_defn, meet_defn, c3, c4),
%            not the problem's own formulas: with a total sum, no curve has an endpoint, while c4
%            splits every curve into two curves that meet at an endpoint.
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status ContradictoryAxioms for GEO090+1
% SZS output start Refutation for GEO090+1
fof(sum_defn, axiom, (! [C,C1,C2] : (C = sum(C1,C2) <=> (! [Q] : (incident_c(Q,C) <=> (incident_c(Q,C1) | incident_c(Q,C2)))))), file('Problems/GEO/GEO090+1.p',sum_defn)).
fof(part_of_defn, axiom, (! [C,C1] : (part_of(C1,C) <=> (! [P] : (incident_c(P,C1) => incident_c(P,C))))), file('Problems/GEO/GEO090+1.p',part_of_defn)).
fof(end_point_defn, axiom, (! [P,C] : (end_point(P,C) <=> (incident_c(P,C) & (! [C1,C2] : ((part_of(C1,C) & part_of(C2,C) & incident_c(P,C1) & incident_c(P,C2)) => (part_of(C1,C2) | part_of(C2,C1))))))), file('Problems/GEO/GEO090+1.p',end_point_defn)).
fof(inner_point_defn, axiom, (! [P,C] : (inner_point(P,C) <=> (incident_c(P,C) & ~ end_point(P,C)))), file('Problems/GEO/GEO090+1.p',inner_point_defn)).
fof(meet_defn, axiom, (! [P,C,C1] : (meet(P,C,C1) <=> (incident_c(P,C) & incident_c(P,C1) & (! [Q] : ((incident_c(Q,C) & incident_c(Q,C1)) => (end_point(Q,C) & end_point(Q,C1))))))), file('Problems/GEO/GEO090+1.p',meet_defn)).
fof(c3, axiom, (! [C] : (? [P] : inner_point(P,C))), file('Problems/GEO/GEO090+1.p',c3)).
fof(c4, axiom, (! [C,P] : (inner_point(P,C) => (? [C1,C2] : (meet(P,C1,C2) & C = sum(C1,C2))))), file('Problems/GEO/GEO090+1.p',c4)).
cnf(s_in1, plain, (incident_c(Q,sum(A,B)) | ~ incident_c(Q,A)), inference(lemma,[status(thm)],[sum_defn])).
cnf(s_in2, plain, (incident_c(Q,sum(A,B)) | ~ incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(s_out, plain, (~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(s_eq1, plain, (C != sum(A,B) | ~ incident_c(Q,A) | incident_c(Q,C)), inference(lemma,[status(thm)],[sum_defn])).
cnf(s_eq2, plain, (C != sum(A,B) | ~ incident_c(Q,B) | incident_c(Q,C)), inference(lemma,[status(thm)],[sum_defn])).
cnf(s_eqo, plain, (C != sum(A,B) | ~ incident_c(Q,C) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn])).
cnf(p_eq1, plain, (C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn,s_eq1])).
cnf(p_eq2, plain, (C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn,s_eq2])).
cnf(p_sum, plain, (~ part_of(A,C) | ~ part_of(B,C) | part_of(sum(A,B),C)), inference(lemma,[status(thm)],[part_of_defn,s_out])).
cnf(p_tr, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn])).
cnf(t2_10, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn,p_tr,part_of_defn])).
cnf(g1, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ inner_point(T,D2) | ~ incident_c(T,sum(D1,C2))), inference(lemma,[status(thm)],[inner_point_defn,meet_defn,p_eq2,s_eq2,s_out,t2_10])).
cnf(g1b, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ inner_point(T,D1) | ~ incident_c(T,sum(D2,C2))), inference(lemma,[status(thm)],[inner_point_defn,meet_defn,p_eq1,s_eq1,s_out,t2_10])).
cnf(g2, plain, (~ meet(P,C1,C2) | ~ inner_point(S,C2) | ~ incident_c(S,C1)), inference(lemma,[status(thm)],[inner_point_defn,meet_defn])).
cnf(g2b, plain, (~ meet(P,C1,C2) | ~ inner_point(S,C1) | ~ incident_c(S,C2)), inference(lemma,[status(thm)],[inner_point_defn,meet_defn])).
cnf(g1c, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ inner_point(T,D2) | ~ incident_c(T,sum(C1,D1))), inference(lemma,[status(thm)],[inner_point_defn,meet_defn,p_eq2,s_eq2,s_out,t2_10])).
cnf(g1d, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ inner_point(T,D1) | ~ incident_c(T,sum(C1,D2))), inference(lemma,[status(thm)],[inner_point_defn,meet_defn,p_eq1,s_eq1,s_out,t2_10])).
cnf(a1, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ part_of(C1,sum(D1,C2))), inference(lemma,[status(thm)],[c3,g1,inner_point_defn,part_of_defn,s_eq2])).
cnf(a2, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ part_of(C1,sum(D2,C2))), inference(lemma,[status(thm)],[c3,g1b,inner_point_defn,part_of_defn,s_eq1])).
cnf(a3, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ part_of(C2,sum(C1,D1))), inference(lemma,[status(thm)],[c3,g1c,inner_point_defn,part_of_defn,s_eq2])).
cnf(a4, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ part_of(C2,sum(C1,D2))), inference(lemma,[status(thm)],[c3,g1d,inner_point_defn,part_of_defn,s_eq1])).
cnf(b1, plain, (~ meet(P,C1,C2) | ~ part_of(sum(D,C2),C1)), inference(lemma,[status(thm)],[c3,g2,inner_point_defn,part_of_defn,s_in2])).
cnf(b2, plain, (~ meet(P,C1,C2) | ~ part_of(sum(C1,D),C2)), inference(lemma,[status(thm)],[c3,g2b,inner_point_defn,part_of_defn,s_in1])).
cnf(c1v, plain, (C != sum(C1,C2) | C1 != sum(D1,D2) | part_of(sum(D1,C2),C)), inference(lemma,[status(thm)],[p_eq1,p_eq2,p_sum,p_tr])).
cnf(c2v, plain, (C != sum(C1,C2) | C1 != sum(D1,D2) | part_of(sum(D2,C2),C)), inference(lemma,[status(thm)],[p_eq1,p_eq2,p_sum,p_tr])).
cnf(c3v, plain, (C != sum(C1,C2) | C2 != sum(D1,D2) | part_of(sum(C1,D1),C)), inference(lemma,[status(thm)],[p_eq1,p_eq2,p_sum,p_tr])).
cnf(c4v, plain, (C != sum(C1,C2) | C2 != sum(D1,D2) | part_of(sum(C1,D2),C)), inference(lemma,[status(thm)],[p_eq1,p_eq2,p_sum,p_tr])).
cnf(g3, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ incident_c(E,D1) | ~ end_point(E,C)), inference(lemma,[status(thm)],[a1,b1,c1v,end_point_defn,p_eq1,s_in1])).
cnf(g3b, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ incident_c(E,D2) | ~ end_point(E,C)), inference(lemma,[status(thm)],[a2,b1,c2v,end_point_defn,p_eq1,s_eq2,s_in1])).
cnf(h3, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ incident_c(E,D1) | ~ end_point(E,C)), inference(lemma,[status(thm)],[a3,b2,c3v,end_point_defn,p_eq2,s_eq1,s_in2])).
cnf(h3b, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ incident_c(E,D2) | ~ end_point(E,C)), inference(lemma,[status(thm)],[a4,b2,c4v,end_point_defn,p_eq2,s_in2])).
cnf(g4, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ incident_c(E,C1) | ~ end_point(E,C)), inference(lemma,[status(thm)],[c3,c4,g3,g3b,s_eqo])).
cnf(g5, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ incident_c(E,C2) | ~ end_point(E,C)), inference(lemma,[status(thm)],[c3,c4,h3,h3b,s_eqo])).
cnf(g6, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ end_point(E,C)), inference(lemma,[status(thm)],[end_point_defn,g4,g5,s_eqo])).
cnf(no_end, plain, (~ end_point(E,X)), inference(lemma,[status(thm)],[c3,c4,g6])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[c3,c4,meet_defn,no_end])).
% SZS output end Refutation for GEO090+1
%------------------------------------------------------------------------------
