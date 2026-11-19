%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GEO145+1 (patched), with Axioms/GEO004+0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : PATCHED problem (between replaced by between_o, the predicate the axioms define): this is the suggested fix for the formulation bug, and this proof shows the intended theorem holds with the fixed axioms. Lemma chain following the proofs in Kulik and Eschenbach's report (library attempts/curves/fixed/re/*.goals in the project); every step proved by E 3.2.5 or Vampire 5.1 from its listed parents; GDV-verified on the Vera cluster against the tptp4X-expanded fixed problem.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004+0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Theorem for GEO145+1
% SZS output start Refutation for GEO145+1
%------------------------------------------------------------------------------
% TSTP export of attempts/curves/vera-lib-3/out/GEO145+1/proof1.p
% Problem: Problems/GEO/GEO145+1.p
%------------------------------------------------------------------------------
fof(inner_point_defn, axiom, (! [P,C] : (inner_point(P,C) <=> (incident_c(P,C) & ~ end_point(P,C)))), file('Problems/GEO/GEO145+1.p',inner_point_defn)).
fof(between_c_defn, axiom, (! [C,P,Q,R] : (between_c(C,P,Q,R) <=> (P != R & (? [Cpp] : (part_of(Cpp,C) & end_point(P,Cpp) & end_point(R,Cpp) & inner_point(Q,Cpp)))))), file('Problems/GEO/GEO145+1.p',between_c_defn)).
fof(o3, axiom, (! [P,Q,R,O] : (between_o(O,P,Q,R) <=> (? [C] : ((! [P] : (incident_o(P,O) <=> incident_c(P,C))) & between_c(C,P,Q,R))))), file('Problems/GEO/GEO145+1.p',o3)).
fof(underlying_curve_defn, axiom, (! [C,O] : (C = underlying_curve(O) <=> (! [P] : (incident_o(P,O) <=> incident_c(P,C))))), file('Problems/GEO/GEO145+1.p',underlying_curve_defn)).
fof(between_o_defn, axiom, (! [O,P,Q,R] : (between_o(O,P,Q,R) <=> ((ordered_by(O,P,Q) & ordered_by(O,Q,R)) | (ordered_by(O,R,Q) & ordered_by(O,Q,P))))), file('Problems/GEO/GEO145+1.p',between_o_defn)).
fof(o1, axiom, (! [O,P,Q] : (ordered_by(O,P,Q) => (incident_o(P,O) & incident_o(Q,O)))), file('Problems/GEO/GEO145+1.p',o1)).
fof(start_point_defn, axiom, (! [P,O] : (start_point(P,O) <=> (incident_o(P,O) & (! [Q] : ((P != Q & incident_o(Q,O)) => ordered_by(O,P,Q)))))), file('Problems/GEO/GEO145+1.p',start_point_defn)).
fof(theorem_4_24, conjecture, (! [O,R] : (start_point(R,O) => (! [P,Q] : (ordered_by(O,P,Q) <=> ((P = R & Q != R & incident_o(Q,O)) | between_o(O,R,P,Q)))))), file('Problems/GEO/GEO145+1.p',theorem_4_24)).
fof(theorem_4_24_neg, negated_conjecture, ~ ((! [O,R] : (start_point(R,O) => (! [P,Q] : (ordered_by(O,P,Q) <=> ((P = R & Q != R & incident_o(Q,O)) | between_o(O,R,P,Q))))))), inference(negate_conjecture,[status(cth)],[theorem_4_24])).
cnf(l_ine, plain, (~ inner_point(P,C) | ~ end_point(P,C)), inference(lemma,[status(thm)],[inner_point_defn])).
cnf(bc_pq, plain, (~ between_c(C,P,Q,R) | P != Q), inference(lemma,[status(thm)],[between_c_defn,l_ine])).
cnf(bc_qr, plain, (~ between_c(C,P,Q,R) | Q != R), inference(lemma,[status(thm)],[between_c_defn,l_ine])).
cnf(bc_pr, plain, (~ between_c(C,P,Q,R) | P != R), inference(lemma,[status(thm)],[between_c_defn])).
cnf(bc_sym, plain, (~ between_c(C,P,Q,R) | between_c(C,R,Q,P)), inference(lemma,[status(thm)],[between_c_defn])).
cnf(o_bo2bc, plain, (~ between_o(O,P,Q,R) | between_c(underlying_curve(O),P,Q,R)), inference(lemma,[status(thm)],[o3,underlying_curve_defn])).
cnf(o_bc2bo, plain, (~ between_c(underlying_curve(O),P,Q,R) | between_o(O,P,Q,R)), inference(lemma,[status(thm)],[o3,underlying_curve_defn])).
cnf(o_bo_def1, plain, (~ ordered_by(O,P,Q) | ~ ordered_by(O,Q,R) | between_o(O,P,Q,R)), inference(lemma,[status(thm)],[between_o_defn])).
cnf(t4_4, plain, (~ ordered_by(O,P,P)), inference(lemma,[status(thm)],[bc_pq,o_bo2bc,o_bo_def1])).
cnf(t4_5, plain, (~ ordered_by(O,P,Q) | ~ ordered_by(O,Q,P)), inference(lemma,[status(thm)],[bc_pr,o_bo2bc,o_bo_def1])).
cnf(t4_15a, plain, (~ between_o(O,P,Q,R) | ~ ordered_by(O,P,Q) | ordered_by(O,Q,R)), inference(lemma,[status(thm)],[between_o_defn,t4_5])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[bc_qr,bc_sym,between_o_defn,o1,o_bc2bo,o_bo2bc,o_bo_def1,start_point_defn,t4_15a,t4_4,theorem_4_24_neg])).
% SZS output end Refutation for GEO145+1
