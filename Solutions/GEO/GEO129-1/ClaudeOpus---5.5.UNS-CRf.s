%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO129-1 : TPTP v10.0.0. Released v2.4.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : agrees with TPTP v10.0.0 (Unsatisfiable)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: The axiom file GEO004-0 (Kulik and Eschenbach's curves)
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
% SZS status Unsatisfiable for GEO129-1
% SZS output start CNFRefutation for GEO129-1
cnf(sum_defn_5, axiom, (A != sum(B,C) | ~ incident_c(D,B) | incident_c(D,A)), file('Problems/GEO/GEO129-1.p',sum_defn_5)).
cnf(sum_defn_6, axiom, (A != sum(B,C) | ~ incident_c(D,C) | incident_c(D,A)), file('Problems/GEO/GEO129-1.p',sum_defn_6)).
cnf(sum_defn_4, axiom, (A != sum(B,C) | ~ incident_c(D,A) | incident_c(D,B) | incident_c(D,C)), file('Problems/GEO/GEO129-1.p',sum_defn_4)).
cnf(part_of_defn_2, axiom, (incident_c(ax0_sk1(A,B),A) | part_of(A,B)), file('Problems/GEO/GEO129-1.p',part_of_defn_2)).
cnf(part_of_defn_3, axiom, (~ incident_c(ax0_sk1(A,B),B) | part_of(A,B)), file('Problems/GEO/GEO129-1.p',part_of_defn_3)).
cnf(part_of_defn_1, axiom, (~ part_of(A,B) | ~ incident_c(C,A) | incident_c(C,B)), file('Problems/GEO/GEO129-1.p',part_of_defn_1)).
cnf(end_point_defn_14, axiom, (~ end_point(A,B) | ~ part_of(C,B) | ~ part_of(D,B) | ~ incident_c(A,C) | ~ incident_c(A,D) | part_of(C,D) | part_of(D,C)), file('Problems/GEO/GEO129-1.p',end_point_defn_14)).
cnf(end_point_defn_15, axiom, (~ incident_c(A,B) | part_of(ax0_sk3(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO129-1.p',end_point_defn_15)).
cnf(end_point_defn_16, axiom, (~ incident_c(A,B) | part_of(ax0_sk4(B,A),B) | end_point(A,B)), file('Problems/GEO/GEO129-1.p',end_point_defn_16)).
cnf(end_point_defn_17, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO129-1.p',end_point_defn_17)).
cnf(end_point_defn_18, axiom, (~ incident_c(A,B) | incident_c(A,ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO129-1.p',end_point_defn_18)).
cnf(end_point_defn_19, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk3(B,A),ax0_sk4(B,A)) | end_point(A,B)), file('Problems/GEO/GEO129-1.p',end_point_defn_19)).
cnf(end_point_defn_20, axiom, (~ incident_c(A,B) | ~ part_of(ax0_sk4(B,A),ax0_sk3(B,A)) | end_point(A,B)), file('Problems/GEO/GEO129-1.p',end_point_defn_20)).
cnf(inner_point_defn_21, axiom, (~ inner_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO129-1.p',inner_point_defn_21)).
cnf(inner_point_defn_22, axiom, (~ inner_point(A,B) | ~ end_point(A,B)), file('Problems/GEO/GEO129-1.p',inner_point_defn_22)).
cnf(meet_defn_26, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,B)), file('Problems/GEO/GEO129-1.p',meet_defn_26)).
cnf(meet_defn_27, axiom, (~ meet(A,B,C) | ~ incident_c(D,B) | ~ incident_c(D,C) | end_point(D,C)), file('Problems/GEO/GEO129-1.p',meet_defn_27)).
cnf(c3_37, axiom, (inner_point(ax0_sk8(A),A)), file('Problems/GEO/GEO129-1.p',c3_37)).
cnf(c4_38, axiom, (~ inner_point(A,B) | meet(A,ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO129-1.p',c4_38)).
cnf(c4_39, axiom, (~ inner_point(A,B) | B = sum(ax0_sk9(A,B),ax0_sk10(A,B))), file('Problems/GEO/GEO129-1.p',c4_39)).
cnf(end_point_defn_13, axiom, (~ end_point(A,B) | incident_c(A,B)), file('Problems/GEO/GEO129-1.p',end_point_defn_13)).
cnf(meet_defn_24, axiom, (~ meet(A,B,C) | incident_c(A,B)), file('Problems/GEO/GEO129-1.p',meet_defn_24)).
cnf(meet_defn_25, axiom, (~ meet(A,B,C) | incident_c(A,C)), file('Problems/GEO/GEO129-1.p',meet_defn_25)).
cnf(s_in1, plain, (incident_c(Q,sum(A,B)) | ~ incident_c(Q,A)), inference(lemma,[status(thm)],[sum_defn_5])).
cnf(s_in2, plain, (incident_c(Q,sum(A,B)) | ~ incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_6])).
cnf(s_out, plain, (~ incident_c(Q,sum(A,B)) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(s_eq1, plain, (C != sum(A,B) | ~ incident_c(Q,A) | incident_c(Q,C)), inference(lemma,[status(thm)],[sum_defn_5])).
cnf(s_eq2, plain, (C != sum(A,B) | ~ incident_c(Q,B) | incident_c(Q,C)), inference(lemma,[status(thm)],[sum_defn_6])).
cnf(s_eqo, plain, (C != sum(A,B) | ~ incident_c(Q,C) | incident_c(Q,A) | incident_c(Q,B)), inference(lemma,[status(thm)],[sum_defn_4])).
cnf(p_eq1, plain, (C != sum(A,B) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,s_eq1])).
cnf(p_eq2, plain, (C != sum(A,B) | part_of(B,C)), inference(lemma,[status(thm)],[part_of_defn_2,part_of_defn_3,s_eq2])).
cnf(p_sum, plain, (~ part_of(A,C) | ~ part_of(B,C) | part_of(sum(A,B),C)), inference(lemma,[status(thm)],[part_of_defn_1,part_of_defn_2,part_of_defn_3,s_out])).
cnf(p_tr, plain, (~ part_of(A,B) | ~ part_of(B,C) | part_of(A,C)), inference(lemma,[status(thm)],[part_of_defn_1,part_of_defn_2,part_of_defn_3])).
cnf(t2_10, plain, (~ part_of(D,C) | ~ end_point(P,C) | ~ incident_c(P,D) | end_point(P,D)), inference(lemma,[status(thm)],[end_point_defn_14,end_point_defn_15,end_point_defn_16,end_point_defn_17,end_point_defn_18,end_point_defn_19,end_point_defn_20,p_tr])).
cnf(g1, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ inner_point(T,D2) | ~ incident_c(T,sum(D1,C2))), inference(lemma,[status(thm)],[inner_point_defn_21,inner_point_defn_22,meet_defn_26,meet_defn_27,p_eq2,s_eq2,s_out,t2_10])).
cnf(g1b, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ inner_point(T,D1) | ~ incident_c(T,sum(D2,C2))), inference(lemma,[status(thm)],[inner_point_defn_21,inner_point_defn_22,meet_defn_26,p_eq1,s_eq1,s_out,t2_10])).
cnf(g2, plain, (~ meet(P,C1,C2) | ~ inner_point(S,C2) | ~ incident_c(S,C1)), inference(lemma,[status(thm)],[inner_point_defn_21,inner_point_defn_22,meet_defn_27])).
cnf(g2b, plain, (~ meet(P,C1,C2) | ~ inner_point(S,C1) | ~ incident_c(S,C2)), inference(lemma,[status(thm)],[inner_point_defn_21,inner_point_defn_22,meet_defn_26])).
cnf(g1c, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ inner_point(T,D2) | ~ incident_c(T,sum(C1,D1))), inference(lemma,[status(thm)],[inner_point_defn_21,inner_point_defn_22,meet_defn_27,p_eq2,s_eq2,s_out,t2_10])).
cnf(g1d, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ inner_point(T,D1) | ~ incident_c(T,sum(C1,D2))), inference(lemma,[status(thm)],[inner_point_defn_21,inner_point_defn_22,meet_defn_26,meet_defn_27,p_eq1,s_eq1,s_out,t2_10])).
cnf(a1, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ part_of(C1,sum(D1,C2))), inference(lemma,[status(thm)],[c3_37,g1,inner_point_defn_21,part_of_defn_1,s_eq2])).
cnf(a2, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ part_of(C1,sum(D2,C2))), inference(lemma,[status(thm)],[c3_37,g1b,inner_point_defn_21,part_of_defn_1,s_eq1])).
cnf(a3, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ part_of(C2,sum(C1,D1))), inference(lemma,[status(thm)],[c3_37,g1c,inner_point_defn_21,part_of_defn_1,s_eq2])).
cnf(a4, plain, (~ meet(P,C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ part_of(C2,sum(C1,D2))), inference(lemma,[status(thm)],[c3_37,g1d,inner_point_defn_21,part_of_defn_1,s_eq1])).
cnf(b1, plain, (~ meet(P,C1,C2) | ~ part_of(sum(D,C2),C1)), inference(lemma,[status(thm)],[c3_37,g2,inner_point_defn_21,part_of_defn_1,s_in2])).
cnf(b2, plain, (~ meet(P,C1,C2) | ~ part_of(sum(C1,D),C2)), inference(lemma,[status(thm)],[c3_37,g2b,inner_point_defn_21,part_of_defn_1,s_in1])).
cnf(c1v, plain, (C != sum(C1,C2) | C1 != sum(D1,D2) | part_of(sum(D1,C2),C)), inference(lemma,[status(thm)],[p_eq1,p_eq2,p_sum,p_tr])).
cnf(c2v, plain, (C != sum(C1,C2) | C1 != sum(D1,D2) | part_of(sum(D2,C2),C)), inference(lemma,[status(thm)],[p_eq1,p_eq2,p_sum,p_tr])).
cnf(c3v, plain, (C != sum(C1,C2) | C2 != sum(D1,D2) | part_of(sum(C1,D1),C)), inference(lemma,[status(thm)],[p_eq1,p_eq2,p_sum,p_tr])).
cnf(c4v, plain, (C != sum(C1,C2) | C2 != sum(D1,D2) | part_of(sum(C1,D2),C)), inference(lemma,[status(thm)],[p_eq1,p_eq2,p_sum,p_tr])).
cnf(g3, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ incident_c(E,D1) | ~ end_point(E,C)), inference(lemma,[status(thm)],[a1,b1,c1v,end_point_defn_14,p_eq1,s_in1])).
cnf(g3b, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ meet(R,D1,D2) | C1 != sum(D1,D2) | ~ incident_c(E,D2) | ~ end_point(E,C)), inference(lemma,[status(thm)],[a2,b1,c2v,end_point_defn_14,p_eq1,s_eq2,s_in1])).
cnf(h3, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ incident_c(E,D1) | ~ end_point(E,C)), inference(lemma,[status(thm)],[a3,b2,c3v,end_point_defn_14,p_eq2,s_eq1,s_in2])).
cnf(h3b, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ meet(R,D1,D2) | C2 != sum(D1,D2) | ~ incident_c(E,D2) | ~ end_point(E,C)), inference(lemma,[status(thm)],[a4,b2,c4v,end_point_defn_14,p_eq2,s_in2])).
cnf(g4, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ incident_c(E,C1) | ~ end_point(E,C)), inference(lemma,[status(thm)],[c3_37,c4_38,c4_39,g3,g3b,s_eqo])).
cnf(g5, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ incident_c(E,C2) | ~ end_point(E,C)), inference(lemma,[status(thm)],[c3_37,c4_38,c4_39,h3,h3b,s_eqo])).
cnf(g6, plain, (~ meet(P,C1,C2) | C != sum(C1,C2) | ~ end_point(E,C)), inference(lemma,[status(thm)],[end_point_defn_13,g4,g5,s_eqo])).
cnf(no_end, plain, (~ end_point(E,X)), inference(lemma,[status(thm)],[c3_37,c4_38,c4_39,g6])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[c3_37,c4_38,meet_defn_24,meet_defn_25,meet_defn_26,no_end])).
% SZS output end CNFRefutation for GEO129-1
%------------------------------------------------------------------------------
