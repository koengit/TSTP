%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO143-1 (patched), with Axioms/GEO004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : PATCHED problem (between replaced by between_o, the predicate the axioms define): this is the suggested fix for the formulation bug, and this proof shows the intended theorem holds with the fixed axioms. Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004-0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for GEO143-1
% SZS output start CNFRefutation for GEO143-1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/vera-lib-3/out/GEO143-1/proof1.p
% Problem: Problems/GEO/GEO143-1.p
%------------------------------------------------------------------------------
cnf(between_c_defn_1, axiom, (~ between_c(A,B,C,D) | B != D), file('Problems/GEO/GEO143-1.p',between_c_defn_1)).
cnf(o3_22, axiom, (~ between_o(A,B,C,D) | ~ incident_o(E,A) | incident_c(E,ax2_sk4(A,D,C,B))), file('Problems/GEO/GEO143-1.p',o3_22)).
cnf(o3_23, axiom, (~ between_o(A,B,C,D) | ~ incident_c(E,ax2_sk4(A,D,C,B)) | incident_o(E,A)), file('Problems/GEO/GEO143-1.p',o3_23)).
cnf(o3_24, axiom, (~ between_o(A,B,C,D) | between_c(ax2_sk4(A,D,C,B),B,C,D)), file('Problems/GEO/GEO143-1.p',o3_24)).
cnf(underlying_curve_defn_39, axiom, (incident_o(ax2_sk10(A,B),A) | incident_c(ax2_sk10(A,B),B) | B = underlying_curve(A)), file('Problems/GEO/GEO143-1.p',underlying_curve_defn_39)).
cnf(underlying_curve_defn_42, axiom, (~ incident_c(ax2_sk10(A,B),B) | ~ incident_o(ax2_sk10(A,B),A) | B = underlying_curve(A)), file('Problems/GEO/GEO143-1.p',underlying_curve_defn_42)).
cnf(between_o_defn_5, axiom, (~ ordered_by(A,B,C) | ~ ordered_by(A,C,D) | between_o(A,B,C,D)), file('Problems/GEO/GEO143-1.p',between_o_defn_5)).
cnf(between_o_defn_4, axiom, (~ between_o(A,B,C,D) | ordered_by(A,C,D) | ordered_by(A,C,B)), file('Problems/GEO/GEO143-1.p',between_o_defn_4)).
cnf(theorem_4_23_4_133, negated_conjecture, (ordered_by(sk25,sk26,sk27)), file('Problems/GEO/GEO143-1.p',theorem_4_23_4_133)).
cnf(theorem_4_23_4_134, negated_conjecture, (ordered_by(sk25,sk27,sk28) | between_o(sk25,sk26,sk27,sk28)), file('Problems/GEO/GEO143-1.p',theorem_4_23_4_134)).
cnf(theorem_4_23_4_137, negated_conjecture, (~ between_o(sk25,sk26,sk27,sk28) | ~ ordered_by(sk25,sk27,sk28)), file('Problems/GEO/GEO143-1.p',theorem_4_23_4_137)).
cnf(bc_pr, plain, (~ between_c(C,P,Q,R) | P != R), inference(lemma,[status(thm)],[between_c_defn_1])).
cnf(o_bo2bc, plain, (~ between_o(O,P,Q,R) | between_c(underlying_curve(O),P,Q,R)), inference(lemma,[status(thm)],[o3_22,o3_23,o3_24,underlying_curve_defn_39,underlying_curve_defn_42])).
cnf(o_bo_def1, plain, (~ ordered_by(O,P,Q) | ~ ordered_by(O,Q,R) | between_o(O,P,Q,R)), inference(lemma,[status(thm)],[between_o_defn_5])).
cnf(t4_5, plain, (~ ordered_by(O,P,Q) | ~ ordered_by(O,Q,P)), inference(lemma,[status(thm)],[bc_pr,o_bo2bc,o_bo_def1])).
cnf(t4_15a, plain, (~ between_o(O,P,Q,R) | ~ ordered_by(O,P,Q) | ordered_by(O,Q,R)), inference(lemma,[status(thm)],[between_o_defn_4,t4_5])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[o_bo_def1,t4_15a,theorem_4_23_4_133,theorem_4_23_4_134,theorem_4_23_4_137])).
% SZS output end CNFRefutation for GEO143-1
