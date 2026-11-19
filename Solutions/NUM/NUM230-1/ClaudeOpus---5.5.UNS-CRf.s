%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM230-1 : TPTP v10.0.0. Bugfixed v2.1.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : SUGGESTED CHANGE: Unknown -> Unsatisfiable (TPTP v10.0.0 status is Unknown; this file is
%            a verified cnfrefutation)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule).
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for NUM230-1
% SZS output start CNFRefutation for NUM230-1
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM230-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM230-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM230-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM230-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM230-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM230-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM230-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM230-1.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM230-1.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM230-1.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM230-1.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM230-1.p',restriction1)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM230-1.p',not_subclass_members2)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM230-1.p',domain1)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM230-1.p',domain2)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM230-1.p',unordered_pair2)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM230-1.p',singleton_set)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM230-1.p',cartesian_product3)).
cnf(union, axiom, (complement(intersection(complement(X),complement(Y))) = union(X,Y)), file('Problems/NUM/NUM230-1.p',union)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM230-1.p',cartesian_product1)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM230-1.p',cartesian_product2)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/NUM/NUM230-1.p',element_relation3)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM230-1.p',ordered_pair)).
cnf(prove_transfinite_recursion_lemma1_3, negated_conjecture, (member(ordered_pair(u,v),x)), file('Problems/NUM/NUM230-1.p',prove_transfinite_recursion_lemma1_3)).
cnf(prove_transfinite_recursion_lemma1_5, negated_conjecture, (~ member(ordered_pair(u,v),y)), file('Problems/NUM/NUM230-1.p',prove_transfinite_recursion_lemma1_5)).
cnf(function1, axiom, (~ function(Xf) | subclass(Xf,cross_product(universal_class,universal_class))), file('Problems/NUM/NUM230-1.p',function1)).
cnf(prove_transfinite_recursion_lemma1_1, negated_conjecture, (member(x,recursion_equation_functions(z))), file('Problems/NUM/NUM230-1.p',prove_transfinite_recursion_lemma1_1)).
cnf(recursion_equation_functions2, axiom, (~ member(X,recursion_equation_functions(Z)) | function(X)), file('Problems/NUM/NUM230-1.p',recursion_equation_functions2)).
cnf(ordinal_numbers1, axiom, (~ member(X,ordinal_numbers) | well_ordering(element_relation,X)), file('Problems/NUM/NUM230-1.p',ordinal_numbers1)).
cnf(recursion_equation_functions3, axiom, (~ member(X,recursion_equation_functions(Z)) | member(domain_of(X),ordinal_numbers)), file('Problems/NUM/NUM230-1.p',recursion_equation_functions3)).
cnf(well_ordering2, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | U = null_class | member(least(Xr,U),U)), file('Problems/NUM/NUM230-1.p',well_ordering2)).
cnf(prove_transfinite_recursion_lemma1_4, negated_conjecture, (member(u,least(element_relation,domain_of(intersection(complement(y),x))))), file('Problems/NUM/NUM230-1.p',prove_transfinite_recursion_lemma1_4)).
cnf(well_ordering5, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | ~ member(ordered_pair(V,least(Xr,U)),Xr)), file('Problems/NUM/NUM230-1.p',well_ordering5)).
cnf(nl, plain, (~ member(Z,null_class)), inference(lemma,[status(thm)],[regularity1,regularity2,intersection1,intersection2,intersection3,complement1,complement2,class_elements_are_sets,subclass_members])).
cnf(sn, plain, (~ subclass(X,null_class) | X = null_class), inference(lemma,[status(thm)],[nl,not_subclass_members1,subclass_implies_equal])).
cnf(rs1, plain, (~ subclass(X,Y) | ~ member(W,restrict(X,A,B)) | member(W,restrict(Y,A,B))), inference(lemma,[status(thm)],[restriction1,intersection1,intersection2,intersection3,subclass_members])).
cnf(rs, plain, (~ subclass(X,Y) | subclass(restrict(X,A,B),restrict(Y,A,B))), inference(lemma,[status(thm)],[rs1,not_subclass_members1,not_subclass_members2])).
cnf(dm1, plain, (~ subclass(X,Y) | ~ member(Z,domain_of(X)) | member(Z,domain_of(Y))), inference(lemma,[status(thm)],[domain1,domain2,rs,sn,class_elements_are_sets,subclass_members])).
cnf(dm, plain, (~ subclass(X,Y) | subclass(domain_of(X),domain_of(Y))), inference(lemma,[status(thm)],[dm1,not_subclass_members1,not_subclass_members2])).
cnf(rsi, plain, (~ member(W,X) | ~ member(W,cross_product(A,B)) | member(W,restrict(X,A,B))), inference(lemma,[status(thm)],[restriction1,intersection3])).
cnf(sg2, plain, (~ member(Z,universal_class) | member(Z,singleton(Z))), inference(lemma,[status(thm)],[unordered_pair2,singleton_set])).
cnf(d2, plain, (~ member(Z,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(Z,W),X) | member(Z,domain_of(X))), inference(lemma,[status(thm)],[domain2,rsi,cartesian_product3,sg2,nl])).
cnf(mv, plain, (~ member(Z,X) | member(Z,universal_class)), inference(lemma,[status(thm)],[class_elements_are_sets,subclass_members])).
cnf(un1, plain, (~ member(Z,union(X,Y)) | member(Z,X) | member(Z,Y)), inference(lemma,[status(thm)],[union,complement1,complement2,intersection3,mv])).
cnf(un2, plain, (~ member(Z,X) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection1,mv])).
cnf(un3, plain, (~ member(Z,Y) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection2,mv])).
cnf(pvv1, plain, (~ member(ordered_pair(U,W),cross_product(A,B)) | member(U,universal_class)), inference(lemma,[status(thm)],[cartesian_product1,mv])).
cnf(pvv2, plain, (~ member(ordered_pair(U,W),cross_product(A,B)) | member(W,universal_class)), inference(lemma,[status(thm)],[cartesian_product2,mv])).
cnf(isub1, plain, (subclass(intersection(X,Y),X)), inference(lemma,[status(thm)],[intersection1,not_subclass_members1,not_subclass_members2])).
cnf(isub2, plain, (subclass(intersection(X,Y),Y)), inference(lemma,[status(thm)],[intersection2,not_subclass_members1,not_subclass_members2])).
cnf(eqs, plain, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), inference(lemma,[status(thm)],[subclass_implies_equal])).
cnf(uc, plain, (union(X,Y) = union(Y,X)), inference(lemma,[status(thm)],[un1,un2,un3,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(us2, plain, (subclass(X,union(X,Y))), inference(lemma,[status(thm)],[un2,not_subclass_members1,not_subclass_members2])).
cnf(os_unn, plain, (union(X,null_class) = X), inference(lemma,[status(thm)],[un1,nl,un2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(os_c1b0, plain, (~ member(X,universal_class) | ~ member(A,X) | member(ordered_pair(A,X),element_relation)), inference(lemma,[status(thm)],[mv,cartesian_product3,element_relation3])).
cnf(tr_t1, plain, (~ subclass(Y,X) | intersection(X,complement(Y)) != null_class | Y = X), inference(lemma,[status(thm)],[intersection3,complement2,mv,nl,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(a1, plain, (member(ordered_pair(u,v),intersection(complement(y),x))), inference(lemma,[status(thm)],[class_elements_are_sets,complement2,intersection3,ordered_pair,prove_transfinite_recursion_lemma1_3,prove_transfinite_recursion_lemma1_5,singleton_set,subclass_members])).
cnf(a1x, plain, (member(ordered_pair(u,v),cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[function1,prove_transfinite_recursion_lemma1_1,prove_transfinite_recursion_lemma1_3,recursion_equation_functions2,subclass_members])).
cnf(a1u, plain, (member(u,universal_class)), inference(lemma,[status(thm)],[a1x,pvv1])).
cnf(a1v, plain, (member(v,universal_class)), inference(lemma,[status(thm)],[a1x,pvv2])).
cnf(a2, plain, (member(u,domain_of(intersection(complement(y),x)))), inference(lemma,[status(thm)],[a1,a1u,a1v,d2])).
cnf(a3, plain, (subclass(domain_of(intersection(complement(y),x)),domain_of(x))), inference(lemma,[status(thm)],[dm,isub2])).
cnf(a4, plain, (well_ordering(element_relation,domain_of(x))), inference(lemma,[status(thm)],[ordinal_numbers1,prove_transfinite_recursion_lemma1_1,recursion_equation_functions3])).
cnf(a5, plain, (member(least(element_relation,domain_of(intersection(complement(y),x))),domain_of(intersection(complement(y),x)))), inference(lemma,[status(thm)],[a2,a3,a4,class_elements_are_sets,complement1,eqs,intersection1,isub1,mv,nl,os_unn,regularity1,sn,subclass_members,tr_t1,uc,union,us2,well_ordering2])).
cnf(a6, plain, (member(ordered_pair(u,least(element_relation,domain_of(intersection(complement(y),x)))),element_relation)), inference(lemma,[status(thm)],[a5,mv,ordered_pair,os_c1b0,prove_transfinite_recursion_lemma1_4,singleton_set])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[a2,a3,a4,a6,ordered_pair,singleton_set,well_ordering5])).
% SZS output end CNFRefutation for NUM230-1
%------------------------------------------------------------------------------
