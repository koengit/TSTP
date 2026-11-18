%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO050-2 : TPTP v10.0.0. Released v1.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Unsatisfiable
% Output   : Refutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : SUGGESTED CHANGE: Unknown -> Unsatisfiable (TPTP v10.0.0 status is Unknown; this file is
%            a verified refutation)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: Tarski geometry in Quaife's clause form (GEO002-0), bare
%            axioms. The argument follows Schwabhäuser, Szmielew and Tarski (Metamathematische
%            Methoden in der Geometrie, 1983), chapters 2-5; the proof plans of the longer lemmas
%            (SST 4.16-4.19 and Gupta's theorem 5.1) were taken from Beeson and Wos's OTTER proofs
%            (Finding proofs in Tarskian geometry, J. Autom. Reasoning 2017), translated into
%            Quaife's notation, with every step re-proved by E from its listed parents. The concepts
%            Col, E3, IFS and FS appear as definition steps. Statement: SST Satz 5.1 (Gupta's
%            theorem, outer connectivity of betweenness): u ≠ v, B(u,v,w), B(u,v,x) imply B(u,w,x) or
%            B(u,x,w).
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for GEO050-2
% SZS output start Refutation for GEO050-2
cnf(reflexivity_for_equidistance, axiom, (equidistant(X,Y,Y,X)), file('Problems/GEO/GEO050-2.p',reflexivity_for_equidistance)).
cnf(transitivity_for_equidistance, axiom, (~ equidistant(X,Y,Z,V) | ~ equidistant(X,Y,V2,W) | equidistant(Z,V,V2,W)), file('Problems/GEO/GEO050-2.p',transitivity_for_equidistance)).
cnf(identity_for_equidistance, axiom, (~ equidistant(X,Y,Z,Z) | X = Y), file('Problems/GEO/GEO050-2.p',identity_for_equidistance)).
cnf(segment_construction2, axiom, (equidistant(Y,extension(X,Y,W,V),W,V)), file('Problems/GEO/GEO050-2.p',segment_construction2)).
cnf(outer_five_segment, axiom, (~ equidistant(X,Y,X1,Y1) | ~ equidistant(Y,Z,Y1,Z1) | ~ equidistant(X,V,X1,V1) | ~ equidistant(Y,V,Y1,V1) | ~ between(X,Y,Z) | ~ between(X1,Y1,Z1) | X = Y | equidistant(Z,V,Z1,V1)), file('Problems/GEO/GEO050-2.p',outer_five_segment)).
cnf(segment_construction1, axiom, (between(X,Y,extension(X,Y,W,V))), file('Problems/GEO/GEO050-2.p',segment_construction1)).
cnf(identity_for_betweeness, axiom, (~ between(X,Y,X) | X = Y), file('Problems/GEO/GEO050-2.p',identity_for_betweeness)).
cnf(inner_pasch1, axiom, (~ between(U,V,W) | ~ between(Y,X,W) | between(V,inner_pasch(U,V,W,X,Y),Y)), file('Problems/GEO/GEO050-2.p',inner_pasch1)).
cnf(inner_pasch2, axiom, (~ between(U,V,W) | ~ between(Y,X,W) | between(X,inner_pasch(U,V,W,X,Y),U)), file('Problems/GEO/GEO050-2.p',inner_pasch2)).
cnf(v_between_u_and_w, hypothesis, (between(u,v,w)), file('Problems/GEO/GEO050-2.p',v_between_u_and_w)).
cnf(v_between_u_and_x, hypothesis, (between(u,v,x)), file('Problems/GEO/GEO050-2.p',v_between_u_and_x)).
cnf(prove_x_between_u_and_w, negated_conjecture, (~ between(u,x,w)), file('Problems/GEO/GEO050-2.p',prove_x_between_u_and_w)).
cnf(w_not_between_u_and_x, hypothesis, (~ between(u,w,x)), file('Problems/GEO/GEO050-2.p',w_not_between_u_and_x)).
cnf(u_not_v, hypothesis, (u != v), file('Problems/GEO/GEO050-2.p',u_not_v)).
cnf(t2_1, plain, (equidistant(X,Y,X,Y)), inference(lemma,[status(thm)],[reflexivity_for_equidistance,transitivity_for_equidistance])).
cnf(t2_2, plain, (~ equidistant(X,Y,Z,W) | equidistant(Z,W,X,Y)), inference(lemma,[status(thm)],[t2_1,transitivity_for_equidistance])).
cnf(t2_3, plain, (~ equidistant(X,Y,Z,W) | ~ equidistant(Z,W,U,V) | equidistant(X,Y,U,V)), inference(lemma,[status(thm)],[t2_2,transitivity_for_equidistance])).
cnf(t2_4, plain, (~ equidistant(X,Y,Z,W) | equidistant(Y,X,Z,W)), inference(lemma,[status(thm)],[reflexivity_for_equidistance,t2_2,transitivity_for_equidistance])).
cnf(t2_5, plain, (~ equidistant(X,Y,Z,W) | equidistant(X,Y,W,Z)), inference(lemma,[status(thm)],[t2_2,t2_4])).
cnf(t2_8, plain, (equidistant(X,X,Y,Y)), inference(lemma,[status(thm)],[identity_for_equidistance,segment_construction2])).
cnf(t2_11, plain, (~ between(A,B,C) | ~ between(A1,B1,C1) | ~ equidistant(A,B,A1,B1) | ~ equidistant(B,C,B1,C1) | equidistant(A,C,A1,C1)), inference(lemma,[status(thm)],[identity_for_equidistance,outer_five_segment,t2_2,t2_4,t2_5,t2_8])).
cnf(t2_12, plain, (Q = A | ~ between(Q,A,X) | ~ equidistant(A,X,B,C) | ~ between(Q,A,Y) | ~ equidistant(A,Y,B,C) | X = Y), inference(lemma,[status(thm)],[identity_for_equidistance,outer_five_segment,t2_1,t2_2,t2_3,t2_4,t2_5])).
cnf(t3_1, plain, (between(A,B,B)), inference(lemma,[status(thm)],[identity_for_equidistance,segment_construction1,segment_construction2])).
cnf(t3_2, plain, (~ between(A,B,C) | between(C,B,A)), inference(lemma,[status(thm)],[identity_for_betweeness,inner_pasch1,inner_pasch2,t3_1])).
cnf(t3_3, plain, (between(A,A,B)), inference(lemma,[status(thm)],[t3_1,t3_2])).
cnf(t3_4, plain, (~ between(A,B,C) | ~ between(B,A,C) | A = B), inference(lemma,[status(thm)],[identity_for_betweeness,inner_pasch1,inner_pasch2])).
cnf(t3_5a, plain, (~ between(A,B,D) | ~ between(B,C,D) | between(A,B,C)), inference(lemma,[status(thm)],[identity_for_betweeness,inner_pasch1,inner_pasch2,t3_2])).
cnf(t3_6a, plain, (~ between(A,B,C) | ~ between(A,C,D) | between(B,C,D)), inference(lemma,[status(thm)],[t3_2,t3_5a])).
cnf(t3_7c, plain, (~ between(A,B,C) | between(B,C,extension(A,C,C,D))), inference(lemma,[status(thm)],[segment_construction1,t3_6a])).
cnf(t3_7d, plain, (~ between(A,B,C) | ~ between(B,C,D) | B = C | extension(A,C,C,D) = D), inference(lemma,[status(thm)],[segment_construction2,t2_1,t2_12,t3_7c])).
cnf(t3_7a, plain, (~ between(A,B,C) | ~ between(B,C,D) | B = C | between(A,C,D)), inference(lemma,[status(thm)],[segment_construction1,t3_7d])).
cnf(t3_5b, plain, (~ between(A,B,D) | ~ between(B,C,D) | between(A,C,D)), inference(lemma,[status(thm)],[t3_5a,t3_7a])).
cnf(t3_6b, plain, (~ between(A,B,C) | ~ between(A,C,D) | between(A,B,D)), inference(lemma,[status(thm)],[t3_2,t3_5b])).
cnf(f1, plain, (equidistant(C,extension(A,C,A,C),C1,extension(A1,C1,A,C))), inference(lemma,[status(thm)],[segment_construction2,t2_2,t2_3])).
cnf(f3, plain, (~ equidistant(A,C,A1,C1) | ~ equidistant(A,D,A1,D1) | ~ equidistant(C,D,C1,D1) | A = C | equidistant(extension(A,C,A,C),D,extension(A1,C1,A,C),D1)), inference(lemma,[status(thm)],[f1,outer_five_segment,segment_construction1])).
cnf(f4b, plain, (~ between(A1,B1,C1) | between(extension(A1,C1,A,C),C1,B1)), inference(lemma,[status(thm)],[segment_construction1,t3_2,t3_6a])).
cnf(f5, plain, (A = C | extension(A,C,A,C) != C), inference(lemma,[status(thm)],[identity_for_equidistance,segment_construction2,t2_2])).
cnf(f6, plain, (~ between(A,B,C) | ~ between(A1,B1,C1) | ~ equidistant(A,C,A1,C1) | ~ equidistant(B,C,B1,C1) | ~ equidistant(A,D,A1,D1) | ~ equidistant(C,D,C1,D1) | A = C | equidistant(B,D,B1,D1)), inference(lemma,[status(thm)],[f1,f3,f4b,f5,outer_five_segment,t2_4,t2_5])).
cnf(t4_2, plain, (~ between(A,B,C) | ~ between(A1,B1,C1) | ~ equidistant(A,C,A1,C1) | ~ equidistant(B,C,B1,C1) | ~ equidistant(A,D,A1,D1) | ~ equidistant(C,D,C1,D1) | equidistant(B,D,B1,D1)), inference(lemma,[status(thm)],[f6,identity_for_betweeness,identity_for_equidistance,t2_2])).
cnf(t4_3, plain, (~ between(A,B,C) | ~ between(A1,B1,C1) | ~ equidistant(A,C,A1,C1) | ~ equidistant(B,C,B1,C1) | equidistant(A,B,A1,B1)), inference(lemma,[status(thm)],[t2_4,t2_5,t2_8,t4_2])).
fof(def_col, definition, (! [X,Y,Z] : (col(X,Y,Z) <=> (between(X,Y,Z) | between(Y,Z,X) | between(Z,X,Y)))), introduced(definition,[new_symbols(definition,[col])],[])).
fof(def_e3, definition, (! [A1,A2,A3,B1,B2,B3] : (e3(A1,A2,A3,B1,B2,B3) <=> (equidistant(A1,A2,B1,B2) & equidistant(A1,A3,B1,B3) & equidistant(A2,A3,B2,B3)))), introduced(definition,[new_symbols(definition,[e3])],[])).
fof(def_ifs, definition, (! [A,B,C,D,A1,B1,C1,D1] : (ifs(A,B,C,D,A1,B1,C1,D1) <=> (between(A,B,C) & between(A1,B1,C1) & equidistant(A,C,A1,C1) & equidistant(B,C,B1,C1) & equidistant(A,D,A1,D1) & equidistant(C,D,C1,D1)))), introduced(definition,[new_symbols(definition,[ifs])],[])).
fof(def_fs, definition, (! [A,B,C,D,A1,B1,C1,D1] : (fs(A,B,C,D,A1,B1,C1,D1) <=> (col(A,B,C) & e3(A,B,C,A1,B1,C1) & equidistant(A,D,A1,D1) & equidistant(B,D,B1,D1)))), introduced(definition,[new_symbols(definition,[fs])],[])).
cnf(t2_13, plain, (~ equidistant(B,C,A,A) | B = C), inference(lemma,[status(thm)],[identity_for_equidistance])).
cnf(t2_14, plain, (~ equidistant(A,B,C,D) | equidistant(B,A,D,C)), inference(lemma,[status(thm)],[t2_4,t2_5])).
cnf(l_ifs, plain, (~ ifs(A,B,C,D,A1,B1,C1,D1) | equidistant(B,D,B1,D1)), inference(lemma,[status(thm)],[def_ifs,t4_2])).
cnf(l_ifs_i, plain, (~ between(A,B,C) | ~ between(A1,B1,C1) | ~ equidistant(A,C,A1,C1) | ~ equidistant(B,C,B1,C1) | ~ equidistant(A,D,A1,D1) | ~ equidistant(C,D,C1,D1) | ifs(A,B,C,D,A1,B1,C1,D1)), inference(lemma,[status(thm)],[def_ifs])).
cnf(l_e3_i, plain, (~ equidistant(A1,A2,B1,B2) | ~ equidistant(A1,A3,B1,B3) | ~ equidistant(A2,A3,B2,B3) | e3(A1,A2,A3,B1,B2,B3)), inference(lemma,[status(thm)],[def_e3])).
cnf(l_e3_1, plain, (~ e3(A1,A2,A3,B1,B2,B3) | equidistant(A1,A2,B1,B2)), inference(lemma,[status(thm)],[def_e3])).
cnf(l_e3_2, plain, (~ e3(A1,A2,A3,B1,B2,B3) | equidistant(A1,A3,B1,B3)), inference(lemma,[status(thm)],[def_e3])).
cnf(l_e3_3, plain, (~ e3(A1,A2,A3,B1,B2,B3) | equidistant(A2,A3,B2,B3)), inference(lemma,[status(thm)],[def_e3])).
cnf(l_col_e, plain, (~ col(A,B,C) | between(A,B,C) | between(B,C,A) | between(C,A,B)), inference(lemma,[status(thm)],[def_col])).
cnf(l_col_1, plain, (col(A,B,C) | ~ between(A,B,C)), inference(lemma,[status(thm)],[def_col])).
cnf(l_col_2, plain, (col(A,B,C) | ~ between(B,C,A)), inference(lemma,[status(thm)],[def_col])).
cnf(l_col_3, plain, (col(A,B,C) | ~ between(C,A,B)), inference(lemma,[status(thm)],[def_col])).
cnf(l_col_p1, plain, (~ col(A,B,C) | col(B,A,C)), inference(lemma,[status(thm)],[def_col,t3_2])).
cnf(l_col_p2, plain, (~ col(A,B,C) | col(A,C,B)), inference(lemma,[status(thm)],[def_col,t3_2])).
cnf(l_fs_1, plain, (~ fs(A,B,C,D,A1,B1,C1,D1) | col(A,B,C)), inference(lemma,[status(thm)],[def_fs])).
cnf(l_fs_2, plain, (~ fs(A,B,C,D,A1,B1,C1,D1) | e3(A,B,C,A1,B1,C1)), inference(lemma,[status(thm)],[def_fs])).
cnf(l_fs_3, plain, (~ fs(A,B,C,D,A1,B1,C1,D1) | equidistant(A,D,A1,D1)), inference(lemma,[status(thm)],[def_fs])).
cnf(l_fs_4, plain, (~ fs(A,B,C,D,A1,B1,C1,D1) | equidistant(B,D,B1,D1)), inference(lemma,[status(thm)],[def_fs])).
cnf(l_fs_i, plain, (~ col(A,B,C) | ~ e3(A,B,C,A1,B1,C1) | ~ equidistant(A,D,A1,D1) | ~ equidistant(B,D,B1,D1) | fs(A,B,C,D,A1,B1,C1,D1)), inference(lemma,[status(thm)],[def_fs])).
cnf(t4_6, plain, (~ between(A,B,C) | ~ e3(A,B,C,A1,B1,C1) | between(A1,B1,C1)), inference(lemma,[status(thm)],[l_e3_1,l_e3_2,l_e3_3,outer_five_segment,segment_construction1,segment_construction2,t2_13,t2_2,t3_3])).
cnf(t4_16_113, plain, (equidistant(B,D,B1,D1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_fs_4])).
cnf(t4_16_114, plain, (equidistant(A,D,A1,D1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_fs_3])).
cnf(t4_16_115, plain, (e3(A,B,C,A1,B1,C1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_fs_2])).
cnf(t4_16_116, plain, (col(A,B,C) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_fs_1])).
cnf(t4_16_190, plain, (equidistant(B,C,B1,C1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_e3_3,t4_16_115])).
cnf(t4_16_191, plain, (equidistant(A,C,A1,C1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_e3_2,t4_16_115])).
cnf(t4_16_192, plain, (equidistant(A,B,A1,B1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_e3_1,t4_16_115])).
cnf(t4_16_195, plain, (between(A,B,C) | between(B,C,A) | between(C,A,B) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_col_e,t4_16_116])).
cnf(t4_16_230, plain, (equidistant(C,A,C1,A1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t2_14,t4_16_191])).
cnf(t4_16_257, plain, (equidistant(B,A,B1,A1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t2_14,t4_16_192])).
cnf(t4_16_292, plain, (between(B,C,A) | between(C,A,B) | between(A1,B1,C1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t4_16_115,t4_16_195,t4_6])).
cnf(t4_16_359, plain, (e3(B,C,A,B1,C1,A1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_e3_i,t4_16_190,t4_16_230,t4_16_257])).
cnf(t4_16_360, plain, (e3(B,A,C,B1,A1,C1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_e3_i,t4_16_190,t4_16_191,t4_16_257])).
cnf(t4_16_427, plain, (between(B,C,A) | between(C,A,B) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[outer_five_segment,t4_16_113,t4_16_114,t4_16_190,t4_16_192,t4_16_195,t4_16_292])).
cnf(t4_16_429, plain, (~ between(B,C,A) | between(B1,C1,A1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t4_16_359,t4_6])).
cnf(t4_16_431, plain, (~ between(B,A,C) | between(B1,A1,C1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t4_16_360,t4_6])).
cnf(t4_16_435, plain, (between(B,C,A) | between(B,A,C) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t3_2,t4_16_427])).
cnf(t4_16_2028, plain, (between(B,C,A) | between(B1,A1,C1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t4_16_431,t4_16_435])).
cnf(t4_16_4971, plain, (between(B,C,A) | B = A | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[outer_five_segment,t4_16_113,t4_16_114,t4_16_191,t4_16_2028,t4_16_257,t4_16_435])).
cnf(t4_16_4976, plain, (between(B,C,A) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t4_16_4971])).
cnf(t4_16_4978, plain, (between(B1,C1,A1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t4_16_429,t4_16_4976])).
cnf(t4_16_5062, plain, (ifs(B,C,A,D,B1,C1,A1,D1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_ifs_i,t4_16_113,t4_16_114,t4_16_230,t4_16_257,t4_16_4976,t4_16_4978])).
cnf(t4_16_11399, plain, (equidistant(C,D,C1,D1) | ~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[l_ifs,t4_16_5062])).
cnf(t4_16, plain, (~ fs(A,B,C,D,A1,B1,C1,D1) | A = B | equidistant(C,D,C1,D1)), inference(lemma,[status(thm)],[t4_16_11399])).
cnf(t4_17_283, plain, (~ fs(A,B,C,P,V_x,V_y,C,Q) | A = B | ~ col(A,B,C) | ~ equidistant(A,P,A,Q) | ~ equidistant(B,P,B,Q) | equidistant(C,P,C,Q)), inference(lemma,[status(thm)],[t4_16])).
cnf(t4_17_20037, plain, (~ e3(A,B,C,A,B,C) | A = B | ~ col(A,B,C) | ~ equidistant(A,P,A,Q) | ~ equidistant(B,P,B,Q) | equidistant(C,P,C,Q)), inference(lemma,[status(thm)],[l_fs_i,t4_17_283])).
cnf(t4_17, plain, (A = B | ~ col(A,B,C) | ~ equidistant(A,P,A,Q) | ~ equidistant(B,P,B,Q) | equidistant(C,P,C,Q)), inference(lemma,[status(thm)],[l_e3_i,t2_1,t4_17_20037])).
cnf(t4_18_90, plain, (~ col(A,B,V_x) | ~ equidistant(A,V_y,A,V_z) | ~ equidistant(B,V_y,B,V_z) | equidistant(V_x,V_y,V_x,V_z) | A = B | ~ col(A,B,C) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_17])).
cnf(t4_18_156, plain, (equidistant(A,C1,A,C) | A = B | ~ col(A,B,C) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t2_2])).
cnf(t4_18_214, plain, (equidistant(B,C1,B,C) | A = B | ~ col(A,B,C) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t2_2])).
cnf(t4_18_281, plain, (~ equidistant(C,C1,V_x,V_x) | A = B | ~ col(A,B,C) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t2_13])).
cnf(t4_18_1088, plain, (equidistant(C,C1,C,C) | A = B | ~ col(A,B,C) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_18_156,t4_18_214,t4_18_90])).
cnf(t4_18, plain, (A = B | ~ col(A,B,C) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_18_1088,t4_18_281])).
cnf(t4_19_91, plain, (col(B,A,C) | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[l_col_2])).
cnf(t4_19_231, plain, (equidistant(C,A,C1,A) | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t2_14])).
cnf(t4_19_360, plain, (~ between(C,C1,C) | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[identity_for_betweeness])).
cnf(t4_19_404, plain, (B = A | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_18,t4_19_91])).
cnf(t4_19_410, plain, (between(A,C,A) | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_19_404])).
cnf(t4_19_637, plain, (between(V_x,C,A) | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t3_1,t3_5b,t4_19_410])).
cnf(t4_19_641, plain, (C = A | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t3_1,t3_4,t4_19_410])).
cnf(t4_19_660, plain, (~ between(C,C1,A) | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_19_360,t4_19_641])).
cnf(t4_19_668, plain, (B = C | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_19_404,t4_19_641])).
cnf(t4_19_1645, plain, (~ between(B,C1,A) | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_19_660,t4_19_668])).
cnf(t4_19_4696, plain, (~ e3(V_x,C,A,B,C1,A) | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_19_1645,t4_19_637,t4_6])).
cnf(t4_19_5303, plain, (e3(B,C,A,B,C1,A) | ~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[l_e3_i,t2_1,t4_19_231])).
cnf(t4_19, plain, (~ between(A,C,B) | ~ equidistant(A,C,A,C1) | ~ equidistant(B,C,B,C1) | C = C1), inference(lemma,[status(thm)],[t4_19_4696,t4_19_5303])).
cnf(g51_275, plain, (between(v,w,extension(u,w,V_x,V_y))), inference(lemma,[status(thm)],[segment_construction1,t3_6a,v_between_u_and_w])).
cnf(g51_296, plain, (between(x,v,u)), inference(lemma,[status(thm)],[t3_2,v_between_u_and_x])).
cnf(g51_304, plain, (between(v,x,extension(u,x,V_x,V_y))), inference(lemma,[status(thm)],[segment_construction1,t3_6a,v_between_u_and_x])).
cnf(g51_358, plain, (equidistant(x,extension(u,x,w,x),w,x)), inference(lemma,[status(thm)],[segment_construction2])).
cnf(g51_359, plain, (between(u,x,extension(u,x,w,x))), inference(lemma,[status(thm)],[segment_construction1])).
cnf(g51_361, plain, (equidistant(w,extension(u,w,w,x),w,x)), inference(lemma,[status(thm)],[segment_construction2])).
cnf(g51_362, plain, (between(u,w,extension(u,w,w,x))), inference(lemma,[status(thm)],[segment_construction1])).
cnf(g51_364, plain, (equidistant(w,extension(extension(u,x,w,x),w,w,x),w,x)), inference(lemma,[status(thm)],[segment_construction2])).
cnf(g51_365, plain, (between(extension(u,x,w,x),w,extension(extension(u,x,w,x),w,w,x))), inference(lemma,[status(thm)],[segment_construction1])).
cnf(g51_367, plain, (equidistant(w,extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)))), inference(lemma,[status(thm)],[segment_construction2])).
cnf(g51_368, plain, (between(extension(u,w,w,x),w,extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))))), inference(lemma,[status(thm)],[segment_construction1])).
cnf(g51_370, plain, (equidistant(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x))), inference(lemma,[status(thm)],[segment_construction2])).
cnf(g51_371, plain, (between(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[segment_construction1])).
cnf(g51_373, plain, (equidistant(extension(u,x,w,x),extension(u,extension(u,x,w,x),w,v),w,v)), inference(lemma,[status(thm)],[segment_construction2])).
cnf(g51_374, plain, (between(u,extension(u,x,w,x),extension(u,extension(u,x,w,x),w,v))), inference(lemma,[status(thm)],[segment_construction1])).
cnf(g51_376, plain, (equidistant(extension(u,w,w,x),extension(u,extension(u,w,w,x),x,v),x,v)), inference(lemma,[status(thm)],[segment_construction2])).
cnf(g51_377, plain, (between(u,extension(u,w,w,x),extension(u,extension(u,w,w,x),x,v))), inference(lemma,[status(thm)],[segment_construction1])).
cnf(g51_379, plain, (~ between(extension(u,x,w,x),x,v) | ~ between(extension(u,w,w,x),w,v) | between(w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,x,w,x))), inference(lemma,[status(thm)],[inner_pasch2])).
cnf(g51_381, plain, (w != extension(u,x,w,x)), inference(lemma,[status(thm)],[g51_359,prove_x_between_u_and_w])).
cnf(g51_388, plain, (between(v,w,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_275])).
cnf(g51_418, plain, (between(extension(u,x,V_x,V_y),x,v)), inference(lemma,[status(thm)],[g51_304,t3_2])).
cnf(g51_419, plain, (between(v,x,extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_304])).
cnf(g51_420, plain, (~ equidistant(x,V_x,w,V_y) | ~ equidistant(V_x,extension(u,x,w,x),V_y,x) | e3(x,V_x,extension(u,x,w,x),w,V_y,x)), inference(lemma,[status(thm)],[g51_358,l_e3_i])).
cnf(g51_422, plain, (equidistant(x,extension(u,x,w,x),x,w)), inference(lemma,[status(thm)],[g51_358,t2_5])).
cnf(g51_430, plain, (equidistant(w,x,extension(u,x,w,x),x)), inference(lemma,[status(thm)],[g51_358,reflexivity_for_equidistance,transitivity_for_equidistance])).
cnf(g51_458, plain, (between(extension(u,x,w,x),x,u)), inference(lemma,[status(thm)],[g51_359,t3_2])).
cnf(g51_463, plain, (between(u,v,extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_359,t3_6b,v_between_u_and_x])).
cnf(g51_477, plain, (equidistant(extension(u,w,w,x),w,w,x)), inference(lemma,[status(thm)],[g51_361,t2_4])).
cnf(g51_478, plain, (equidistant(w,x,w,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_361,t2_2])).
cnf(g51_484, plain, (equidistant(w,x,extension(u,w,w,x),w)), inference(lemma,[status(thm)],[g51_361,reflexivity_for_equidistance,transitivity_for_equidistance])).
cnf(g51_486, plain, (col(w,extension(u,w,w,x),u)), inference(lemma,[status(thm)],[g51_362,l_col_3])).
cnf(g51_504, plain, (between(u,v,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_362,t3_6b,v_between_u_and_w])).
cnf(g51_515, plain, (~ between(w,x,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_362,t3_5a,w_not_between_u_and_x])).
cnf(g51_520, plain, (~ equidistant(w,x,V_x,V_y) | equidistant(w,extension(extension(u,x,w,x),w,w,x),V_x,V_y)), inference(lemma,[status(thm)],[g51_364,t2_3])).
cnf(g51_526, plain, (equidistant(w,x,extension(extension(u,x,w,x),w,w,x),w)), inference(lemma,[status(thm)],[g51_364,reflexivity_for_equidistance,transitivity_for_equidistance])).
cnf(g51_543, plain, (col(extension(u,x,w,x),w,extension(extension(u,x,w,x),w,w,x))), inference(lemma,[status(thm)],[g51_365,l_col_1])).
cnf(g51_568, plain, (equidistant(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),w)), inference(lemma,[status(thm)],[g51_367,t2_14])).
cnf(g51_571, plain, (equidistant(w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),w,extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))))), inference(lemma,[status(thm)],[g51_367,t2_2])).
cnf(g51_579, plain, (col(w,extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_368,l_col_3])).
cnf(g51_592, plain, (between(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),w,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_368,t3_2])).
cnf(g51_611, plain, (equidistant(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_370,t2_2])).
cnf(g51_646, plain, (equidistant(extension(u,extension(u,x,w,x),w,v),extension(u,x,w,x),v,w)), inference(lemma,[status(thm)],[g51_373,t2_14])).
cnf(g51_669, plain, (between(extension(u,extension(u,x,w,x),w,v),extension(u,x,w,x),u)), inference(lemma,[status(thm)],[g51_374,t3_2])).
cnf(g51_686, plain, (equidistant(extension(u,extension(u,w,w,x),x,v),extension(u,w,w,x),v,x)), inference(lemma,[status(thm)],[g51_376,t2_14])).
cnf(g51_722, plain, (between(u,w,extension(u,extension(u,w,w,x),x,v))), inference(lemma,[status(thm)],[g51_362,g51_377,t3_6b])).
cnf(g51_725, plain, (between(w,extension(u,w,w,x),extension(u,extension(u,w,w,x),x,v))), inference(lemma,[status(thm)],[g51_362,g51_377,t3_6a])).
cnf(g51_735, plain, (~ between(extension(u,w,w,x),w,v) | between(w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_379,g51_419,t3_2])).
cnf(g51_747, plain, (col(w,extension(u,w,w,x),v)), inference(lemma,[status(thm)],[g51_388,l_col_3])).
cnf(g51_760, plain, (between(extension(u,w,w,x),w,v)), inference(lemma,[status(thm)],[g51_388,t3_2])).
cnf(g51_796, plain, (between(extension(u,x,w,x),x,v)), inference(lemma,[status(thm)],[g51_418])).
cnf(g51_825, plain, (equidistant(x,w,x,extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_422,t2_2])).
cnf(g51_841, plain, (equidistant(w,extension(u,w,w,x),extension(u,x,w,x),x)), inference(lemma,[status(thm)],[g51_361,g51_430,t2_3])).
cnf(g51_862, plain, (between(extension(u,x,w,x),v,u)), inference(lemma,[status(thm)],[g51_296,g51_458,t3_5b])).
cnf(g51_875, plain, (col(u,v,extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_463,l_col_1])).
cnf(g51_890, plain, (between(u,v,extension(u,extension(u,x,w,x),w,v))), inference(lemma,[status(thm)],[g51_374,g51_463,t3_6b])).
cnf(g51_931, plain, (e3(w,extension(u,w,w,x),x,w,x,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_361,g51_478,l_e3_i,reflexivity_for_equidistance])).
cnf(g51_935, plain, (equidistant(w,extension(extension(u,x,w,x),w,w,x),w,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_364,g51_478,t2_3])).
cnf(g51_936, plain, (equidistant(x,extension(u,x,w,x),w,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_358,g51_478,t2_3])).
cnf(g51_937, plain, (equidistant(extension(u,x,w,x),x,w,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_430,g51_478,transitivity_for_equidistance])).
cnf(g51_972, plain, (between(u,v,extension(u,extension(u,w,w,x),x,v))), inference(lemma,[status(thm)],[g51_377,g51_504,t3_6b])).
cnf(g51_1043, plain, (equidistant(extension(u,w,w,x),w,extension(extension(u,x,w,x),w,w,x),w)), inference(lemma,[status(thm)],[g51_477,g51_526,t2_3])).
cnf(g51_1051, plain, (col(w,extension(u,x,w,x),extension(extension(u,x,w,x),w,w,x))), inference(lemma,[status(thm)],[g51_543,l_col_p1])).
cnf(g51_1057, plain, (equidistant(inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),w,extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),w)), inference(lemma,[status(thm)],[g51_568,t2_2])).
cnf(g51_1117, plain, (equidistant(v,w,extension(u,extension(u,x,w,x),w,v),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_646,t2_2])).
cnf(g51_1149, plain, (between(extension(u,extension(u,x,w,x),w,v),extension(u,x,w,x),x)), inference(lemma,[status(thm)],[g51_458,g51_669,t3_5a])).
cnf(g51_1158, plain, (equidistant(v,x,extension(u,extension(u,w,w,x),x,v),extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_686,t2_2])).
cnf(g51_1190, plain, (between(v,w,extension(u,extension(u,w,w,x),x,v))), inference(lemma,[status(thm)],[g51_722,t3_6a,v_between_u_and_w])).
cnf(g51_1237, plain, (between(w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_388,g51_735,t3_2])).
cnf(g51_1251, plain, (between(extension(u,x,w,x),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),w)), inference(lemma,[status(thm)],[g51_735,g51_760,t3_2])).
cnf(g51_1314, plain, (between(x,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_760,g51_796,inner_pasch1])).
cnf(g51_1342, plain, (equidistant(w,extension(u,extension(u,w,w,x),x,v),extension(u,x,w,x),v)), inference(lemma,[status(thm)],[g51_376,g51_725,g51_796,g51_841,t2_11])).
cnf(g51_1371, plain, (between(extension(u,extension(u,x,w,x),w,v),extension(u,x,w,x),v)), inference(lemma,[status(thm)],[g51_669,g51_862,t3_5a])).
cnf(g51_1424, plain, (~ between(w,extension(u,w,w,x),x)), inference(lemma,[status(thm)],[g51_515,g51_931,t4_6])).
cnf(g51_1555, plain, (equidistant(extension(u,extension(u,x,w,x),w,v),x,v,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_1149,g51_388,g51_646,g51_937,t2_11])).
cnf(g51_1630, plain, (col(w,extension(u,x,w,x),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)))), inference(lemma,[status(thm)],[g51_1251,l_col_2])).
cnf(g51_1649, plain, (between(inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),w,extension(extension(u,x,w,x),w,w,x))), inference(lemma,[status(thm)],[g51_1251,g51_365,t3_6a])).
cnf(g51_1674, plain, (between(extension(u,w,w,x),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),x)), inference(lemma,[status(thm)],[g51_1314,t3_2])).
cnf(g51_1728, plain, (equidistant(v,extension(u,extension(u,w,w,x),x,v),extension(u,extension(u,x,w,x),w,v),v)), inference(lemma,[status(thm)],[g51_1117,g51_1190,g51_1342,g51_1371,t2_11])).
cnf(g51_1782, plain, (~ e3(V_x,V_y,V_y,w,extension(u,w,w,x),x)), inference(lemma,[status(thm)],[g51_1424,t3_1,t4_6])).
cnf(g51_1824, plain, (between(extension(extension(u,x,w,x),w,w,x),w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)))), inference(lemma,[status(thm)],[g51_1649,t3_2])).
cnf(g51_1883, plain, (equidistant(v,extension(u,extension(u,w,w,x),x,v),v,extension(u,extension(u,x,w,x),w,v))), inference(lemma,[status(thm)],[g51_1728,t2_5])).
cnf(g51_1896, plain, (~ equidistant(extension(u,x,w,x),extension(u,x,w,x),extension(u,w,w,x),x)), inference(lemma,[status(thm)],[g51_1782,g51_420,g51_936])).
cnf(g51_1926, plain, (extension(u,w,w,x) = w | equidistant(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_1043,g51_1824,g51_367,g51_368,g51_935,outer_five_segment,reflexivity_for_equidistance])).
cnf(g51_1952, plain, (equidistant(extension(u,extension(u,w,w,x),x,v),V_x,extension(u,extension(u,x,w,x),w,v),V_x)), inference(lemma,[status(thm)],[g51_1883,g51_890,g51_972,outer_five_segment,t2_1,u_not_v])).
cnf(g51_1960, plain, (~ equidistant(V_x,V_x,extension(u,w,w,x),x)), inference(lemma,[status(thm)],[g51_1896,t2_3,t2_8])).
cnf(g51_1966, plain, (equidistant(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_1424,g51_1926,t3_3])).
cnf(g51_1967, plain, (equidistant(V_x,extension(u,extension(u,w,w,x),x,v),V_x,extension(u,extension(u,x,w,x),w,v))), inference(lemma,[status(thm)],[g51_1952,t2_14])).
cnf(g51_1984, plain, (equidistant(extension(u,extension(u,w,w,x),x,v),x,v,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_1555,g51_1952,t2_3])).
cnf(g51_2009, plain, (equidistant(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(u,w,w,x),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)))), inference(lemma,[status(thm)],[g51_1966,t2_14])).
cnf(g51_2020, plain, (equidistant(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_1966,g51_370,t2_3])).
cnf(g51_2021, plain, (equidistant(inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_1966,g51_611,transitivity_for_equidistance])).
cnf(g51_2025, plain, (extension(u,extension(u,x,w,x),w,v) = extension(u,extension(u,w,w,x),x,v)), inference(lemma,[status(thm)],[g51_1967,t2_13])).
cnf(g51_2127, plain, (equidistant(extension(u,w,w,x),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))))), inference(lemma,[status(thm)],[g51_2009,t2_2])).
cnf(g51_2190, plain, (between(extension(u,extension(u,w,w,x),x,v),extension(u,x,w,x),v)), inference(lemma,[status(thm)],[g51_1371,g51_2025])).
cnf(g51_2225, plain, (ifs(v,w,extension(u,extension(u,w,w,x),x,v),x,extension(u,extension(u,w,w,x),x,v),extension(u,x,w,x),v,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_1158,g51_1190,g51_1342,g51_1984,g51_2190,l_ifs_i,reflexivity_for_equidistance])).
cnf(g51_2245, plain, (equidistant(w,x,extension(u,x,w,x),extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_2225,l_ifs])).
cnf(g51_2267, plain, (equidistant(extension(u,x,w,x),extension(u,w,w,x),extension(u,w,w,x),w)), inference(lemma,[status(thm)],[g51_2245,g51_484,transitivity_for_equidistance])).
cnf(g51_2269, plain, (equidistant(extension(u,x,w,x),extension(u,w,w,x),extension(u,x,w,x),x)), inference(lemma,[status(thm)],[g51_2245,g51_430,transitivity_for_equidistance])).
cnf(g51_2281, plain, (equidistant(extension(u,w,w,x),w,extension(u,w,w,x),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_2267,reflexivity_for_equidistance,transitivity_for_equidistance])).
cnf(g51_2294, plain, (equidistant(inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,w,w,x),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),x)), inference(lemma,[status(thm)],[g51_1630,g51_2269,g51_361,g51_381,t4_17])).
cnf(g51_2299, plain, (~ col(w,extension(u,x,w,x),extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_1960,g51_2269,g51_361,g51_381,t4_17])).
cnf(g51_2309, plain, (ifs(x,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,w,w,x),w,x,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,w,w,x),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_1314,g51_2281,g51_825,l_ifs_i,t2_1])).
cnf(g51_2316, plain, (~ equidistant(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),w,extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_2281,g51_381,g51_592,t4_19])).
cnf(g51_2336, plain, (equidistant(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)),inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),x)), inference(lemma,[status(thm)],[g51_2020,g51_2294,t2_3])).
cnf(g51_2338, plain, (equidistant(inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),x,extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2021,g51_2294,transitivity_for_equidistance])).
cnf(g51_2348, plain, (~ col(w,extension(u,w,w,x),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_2299,l_col_p2])).
cnf(g51_2365, plain, (extension(u,w,w,x) != inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))), inference(lemma,[status(thm)],[g51_1630,g51_2299])).
cnf(g51_2366, plain, (equidistant(inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_2309,l_ifs])).
cnf(g51_2370, plain, (~ equidistant(w,extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(u,x,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))))), inference(lemma,[status(thm)],[g51_2316,t2_14])).
cnf(g51_2384, plain, (equidistant(extension(extension(u,x,w,x),w,w,x),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)),extension(u,w,w,x),x)), inference(lemma,[status(thm)],[g51_1674,g51_2009,g51_2336,g51_371,t2_11])).
cnf(g51_2396, plain, (equidistant(x,w,extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)),w)), inference(lemma,[status(thm)],[g51_1043,g51_1057,g51_1674,g51_2127,g51_2338,g51_2365,g51_371,outer_five_segment])).
cnf(g51_2399, plain, (~ between(w,extension(u,w,w,x),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_2348,l_col_1])).
cnf(g51_2449, plain, (equidistant(extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)),extension(u,x,w,x))), inference(lemma,[status(thm)],[g51_2366,g51_568,t2_3])).
cnf(g51_2463, plain, (~ equidistant(extension(u,x,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),w,extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))))), inference(lemma,[status(thm)],[g51_2370,t2_2])).
cnf(g51_2479, plain, (~ equidistant(V_x,V_x,extension(extension(u,x,w,x),w,w,x),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_1960,g51_2384,t2_3])).
cnf(g51_2485, plain, (equidistant(w,x,w,extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2396,t2_14])).
cnf(g51_2563, plain, (~ equidistant(extension(u,x,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x)))), inference(lemma,[status(thm)],[g51_2463,g51_571,t2_3])).
cnf(g51_2580, plain, (equidistant(w,extension(extension(u,x,w,x),w,w,x),w,extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2485,g51_520])).
cnf(g51_2610, plain, (~ between(extension(u,x,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),w)), inference(lemma,[status(thm)],[g51_1237,g51_2449,g51_2563,reflexivity_for_equidistance,t4_3])).
cnf(g51_2620, plain, (w = extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))) | equidistant(extension(u,w,w,x),extension(extension(u,x,w,x),w,w,x),extension(u,w,w,x),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2580,g51_579,g51_611,t4_17])).
cnf(g51_2623, plain, (~ equidistant(extension(u,x,w,x),extension(extension(u,x,w,x),w,w,x),extension(u,x,w,x),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_1051,g51_2479,g51_2580,g51_381,t4_17])).
cnf(g51_2716, plain, (equidistant(extension(u,w,w,x),extension(extension(u,x,w,x),w,w,x),extension(u,w,w,x),extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2610,g51_2620,t3_1])).
cnf(g51_2737, plain, (w = extension(u,w,w,x) | equidistant(v,extension(extension(u,x,w,x),w,w,x),v,extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2580,g51_2716,g51_747,t4_17])).
cnf(g51_2738, plain, (w = extension(u,w,w,x) | equidistant(u,extension(extension(u,x,w,x),w,w,x),u,extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2580,g51_2716,g51_486,t4_17])).
cnf(g51_2780, plain, (equidistant(v,extension(extension(u,x,w,x),w,w,x),v,extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2399,g51_2737,t3_3])).
cnf(g51_2785, plain, (equidistant(u,extension(extension(u,x,w,x),w,w,x),u,extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2399,g51_2738,t3_3])).
cnf(g51_2803, plain, (~ equidistant(u,extension(extension(u,x,w,x),w,w,x),u,extension(extension(extension(u,x,w,x),w,w,x),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,w,w,x),w,w,inner_pasch(extension(u,x,w,x),x,v,w,extension(u,w,w,x))),extension(extension(u,x,w,x),w,w,x)))), inference(lemma,[status(thm)],[g51_2623,g51_2780,g51_875,t4_17,u_not_v])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[g51_2785,g51_2803])).
% SZS output end Refutation for GEO050-2
%------------------------------------------------------------------------------
