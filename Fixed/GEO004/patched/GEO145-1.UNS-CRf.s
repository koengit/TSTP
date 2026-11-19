%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO145-1 (patched), with Axioms/GEO004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : PATCHED problem (between replaced by between_o, the predicate the axioms define): this is the suggested fix for the formulation bug, and this proof shows the intended theorem holds with the fixed axioms. Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004-0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for GEO145-1
% SZS output start CNFRefutation for GEO145-1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/vera-lib-3/out/GEO145-1/proof1.p
% Problem: Problems/GEO/GEO145-1.p
%------------------------------------------------------------------------------
cnf(inner_point_defn_22, axiom, (~ inner_point(A,B) | ~ end_point(A,B)), file('Problems/GEO/GEO145-1.p',inner_point_defn_22)).
cnf(between_c_defn_3, axiom, (~ between_c(A,B,C,D) | end_point(B,ax1_sk1(D,C,B,A))), file('Problems/GEO/GEO145-1.p',between_c_defn_3)).
cnf(between_c_defn_5, axiom, (~ between_c(A,B,C,D) | inner_point(C,ax1_sk1(D,C,B,A))), file('Problems/GEO/GEO145-1.p',between_c_defn_5)).
cnf(between_c_defn_4, axiom, (~ between_c(A,B,C,D) | end_point(D,ax1_sk1(D,C,B,A))), file('Problems/GEO/GEO145-1.p',between_c_defn_4)).
cnf(between_c_defn_1, axiom, (~ between_c(A,B,C,D) | B != D), file('Problems/GEO/GEO145-1.p',between_c_defn_1)).
cnf(between_c_defn_2, axiom, (~ between_c(A,B,C,D) | part_of(ax1_sk1(D,C,B,A),A)), file('Problems/GEO/GEO145-1.p',between_c_defn_2)).
cnf(between_c_defn_6, axiom, (A = B | ~ part_of(C,D) | ~ end_point(A,C) | ~ end_point(B,C) | ~ inner_point(E,C) | between_c(D,A,E,B)), file('Problems/GEO/GEO145-1.p',between_c_defn_6)).
cnf(o3_22, axiom, (~ between_o(A,B,C,D) | ~ incident_o(E,A) | incident_c(E,ax2_sk4(A,D,C,B))), file('Problems/GEO/GEO145-1.p',o3_22)).
cnf(o3_23, axiom, (~ between_o(A,B,C,D) | ~ incident_c(E,ax2_sk4(A,D,C,B)) | incident_o(E,A)), file('Problems/GEO/GEO145-1.p',o3_23)).
cnf(o3_24, axiom, (~ between_o(A,B,C,D) | between_c(ax2_sk4(A,D,C,B),B,C,D)), file('Problems/GEO/GEO145-1.p',o3_24)).
cnf(underlying_curve_defn_39, axiom, (incident_o(ax2_sk10(A,B),A) | incident_c(ax2_sk10(A,B),B) | B = underlying_curve(A)), file('Problems/GEO/GEO145-1.p',underlying_curve_defn_39)).
cnf(underlying_curve_defn_42, axiom, (~ incident_c(ax2_sk10(A,B),B) | ~ incident_o(ax2_sk10(A,B),A) | B = underlying_curve(A)), file('Problems/GEO/GEO145-1.p',underlying_curve_defn_42)).
cnf(o3_25, axiom, (incident_o(ax2_sk5(A,B,C,D,E),B) | incident_c(ax2_sk5(A,B,C,D,E),A) | ~ between_c(A,E,D,C) | between_o(B,E,D,C)), file('Problems/GEO/GEO145-1.p',o3_25)).
cnf(o3_28, axiom, (~ incident_c(ax2_sk5(A,B,C,D,E),A) | ~ incident_o(ax2_sk5(A,B,C,D,E),B) | ~ between_c(A,E,D,C) | between_o(B,E,D,C)), file('Problems/GEO/GEO145-1.p',o3_28)).
cnf(underlying_curve_defn_37, axiom, (A != underlying_curve(B) | ~ incident_o(C,B) | incident_c(C,A)), file('Problems/GEO/GEO145-1.p',underlying_curve_defn_37)).
cnf(underlying_curve_defn_38, axiom, (A != underlying_curve(B) | ~ incident_c(C,A) | incident_o(C,B)), file('Problems/GEO/GEO145-1.p',underlying_curve_defn_38)).
cnf(between_o_defn_5, axiom, (~ ordered_by(A,B,C) | ~ ordered_by(A,C,D) | between_o(A,B,C,D)), file('Problems/GEO/GEO145-1.p',between_o_defn_5)).
cnf(between_o_defn_4, axiom, (~ between_o(A,B,C,D) | ordered_by(A,C,D) | ordered_by(A,C,B)), file('Problems/GEO/GEO145-1.p',between_o_defn_4)).
cnf(between_o_defn_3, axiom, (~ between_o(A,B,C,D) | ordered_by(A,C,D) | ordered_by(A,D,C)), file('Problems/GEO/GEO145-1.p',between_o_defn_3)).
cnf(o1_17, axiom, (~ ordered_by(A,B,C) | incident_o(B,A)), file('Problems/GEO/GEO145-1.p',o1_17)).
cnf(o1_18, axiom, (~ ordered_by(A,B,C) | incident_o(C,A)), file('Problems/GEO/GEO145-1.p',o1_18)).
cnf(start_point_defn_8, axiom, (~ start_point(A,B) | A = C | ~ incident_o(C,B) | ordered_by(B,A,C)), file('Problems/GEO/GEO145-1.p',start_point_defn_8)).
cnf(theorem_4_24_133, negated_conjecture, (start_point(sk26,sk25)), file('Problems/GEO/GEO145-1.p',theorem_4_24_133)).
cnf(theorem_4_24_134, negated_conjecture, (ordered_by(sk25,sk27,sk28) | sk27 = sk26 | between_o(sk25,sk26,sk27,sk28)), file('Problems/GEO/GEO145-1.p',theorem_4_24_134)).
cnf(theorem_4_24_135, negated_conjecture, (ordered_by(sk25,sk27,sk28) | sk28 != sk26 | between_o(sk25,sk26,sk27,sk28)), file('Problems/GEO/GEO145-1.p',theorem_4_24_135)).
cnf(theorem_4_24_136, negated_conjecture, (ordered_by(sk25,sk27,sk28) | incident_o(sk28,sk25) | between_o(sk25,sk26,sk27,sk28)), file('Problems/GEO/GEO145-1.p',theorem_4_24_136)).
cnf(theorem_4_24_144, negated_conjecture, (sk27 != sk26 | sk28 = sk26 | ~ incident_o(sk28,sk25) | ~ ordered_by(sk25,sk27,sk28)), file('Problems/GEO/GEO145-1.p',theorem_4_24_144)).
cnf(theorem_4_24_145, negated_conjecture, (~ between_o(sk25,sk26,sk27,sk28) | ~ ordered_by(sk25,sk27,sk28)), file('Problems/GEO/GEO145-1.p',theorem_4_24_145)).
cnf(l_ine, plain, (~ inner_point(P,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn_22])).
cnf(bc_pq, plain, (~ between_c(C,P,Q,R) | P != Q), inference(lemma,[status(thm)],[between_c_defn_3,between_c_defn_5,l_ine])).
cnf(bc_qr, plain, (~ between_c(C,P,Q,R) | Q != R), inference(lemma,[status(thm)],[between_c_defn_4,between_c_defn_5,l_ine])).
cnf(bc_pr, plain, (~ between_c(C,P,Q,R) | P != R), inference(lemma,[status(thm)],[between_c_defn_1])).
cnf(bc_sym, plain, (~ between_c(C,P,Q,R) | between_c(C,R,Q,P)), inference(lemma,[status(thm)],[between_c_defn_1,between_c_defn_2,between_c_defn_3,between_c_defn_4,between_c_defn_5,between_c_defn_6])).
cnf(o_bo2bc, plain, (~ between_o(O,P,Q,R) | between_c(underlying_curve(O),P,Q,R)), inference(lemma,[status(thm)],[o3_22,o3_23,o3_24,underlying_curve_defn_39,underlying_curve_defn_42])).
cnf(o_bc2bo, plain, (~ between_c(underlying_curve(O),P,Q,R) | between_o(O,P,Q,R)), inference(lemma,[status(thm)],[o3_25,o3_28,underlying_curve_defn_37,underlying_curve_defn_38])).
cnf(o_bo_def1, plain, (~ ordered_by(O,P,Q) | ~ ordered_by(O,Q,R) | between_o(O,P,Q,R)), inference(lemma,[status(thm)],[between_o_defn_5])).
cnf(t4_4, plain, (~ ordered_by(O,P,P)), inference(lemma,[status(thm)],[bc_pq,o_bo2bc,o_bo_def1])).
cnf(t4_5, plain, (~ ordered_by(O,P,Q) | ~ ordered_by(O,Q,P)), inference(lemma,[status(thm)],[bc_pr,o_bo2bc,o_bo_def1])).
cnf(t4_15a, plain, (~ between_o(O,P,Q,R) | ~ ordered_by(O,P,Q) | ordered_by(O,Q,R)), inference(lemma,[status(thm)],[between_o_defn_4,t4_5])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[bc_pq,bc_qr,bc_sym,between_o_defn_3,o1_17,o1_18,o_bc2bo,o_bo2bc,o_bo_def1,start_point_defn_8,t4_15a,t4_4,theorem_4_24_133,theorem_4_24_134,theorem_4_24_135,theorem_4_24_136,theorem_4_24_144,theorem_4_24_145])).
% SZS output end CNFRefutation for GEO145-1
