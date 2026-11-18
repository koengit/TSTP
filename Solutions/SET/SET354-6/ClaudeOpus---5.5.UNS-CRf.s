%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SET354-6 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for SET354-6
% SZS output start CNFRefutation for SET354-6
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/SET/SET354-6.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/SET/SET354-6.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/SET/SET354-6.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/SET/SET354-6.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/SET/SET354-6.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/SET/SET354-6.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/SET/SET354-6.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/SET/SET354-6.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/SET/SET354-6.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/SET/SET354-6.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/SET/SET354-6.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/SET/SET354-6.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/SET/SET354-6.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/SET/SET354-6.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/SET/SET354-6.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/SET/SET354-6.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/SET/SET354-6.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/SET/SET354-6.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/SET/SET354-6.p',range)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/SET/SET354-6.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/SET/SET354-6.p',cartesian_product3)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/SET/SET354-6.p',element_relation3)).
cnf(sum_class_definition, axiom, (domain_of(restrict(element_relation,universal_class,X)) = sum_class(X)), file('Problems/SET/SET354-6.p',sum_class_definition)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/SET/SET354-6.p',element_relation2)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/SET/SET354-6.p',cartesian_product2)).
cnf(prove_sum_of_ordered_pair_1, negated_conjecture, (member(ordered_pair(x,y),cross_product(universal_class,universal_class))), file('Problems/SET/SET354-6.p',prove_sum_of_ordered_pair_1)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/SET/SET354-6.p',ordered_pair)).
cnf(unordered_pair3, axiom, (~ member(Y,universal_class) | member(Y,unordered_pair(X,Y))), file('Problems/SET/SET354-6.p',unordered_pair3)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/SET/SET354-6.p',unordered_pairs_in_universal)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/SET/SET354-6.p',not_subclass_members2)).
cnf(prove_sum_of_ordered_pair_2, negated_conjecture, (sum_class(ordered_pair(x,y)) != unordered_pair(x,singleton(y))), file('Problems/SET/SET354-6.p',prove_sum_of_ordered_pair_2)).
cnf(nl, plain, (~ member(Z,null_class)), inference(lemma,[status(thm)],[regularity1,regularity2,intersection1,intersection2,intersection3,complement1,complement2,class_elements_are_sets,subclass_members])).
cnf(sn, plain, (~ subclass(X,null_class) | X = null_class), inference(lemma,[status(thm)],[nl,not_subclass_members1,subclass_implies_equal])).
cnf(rsx, plain, (~ member(W,restrict(X,A,B)) | member(W,X)), inference(lemma,[status(thm)],[restriction1,intersection1])).
cnf(rsc, plain, (~ member(W,restrict(X,A,B)) | member(W,cross_product(A,B))), inference(lemma,[status(thm)],[restriction1,intersection2])).
cnf(rsi, plain, (~ member(W,X) | ~ member(W,cross_product(A,B)) | member(W,restrict(X,A,B))), inference(lemma,[status(thm)],[restriction1,intersection3])).
cnf(sg1, plain, (~ member(U,singleton(Z)) | U = Z), inference(lemma,[status(thm)],[unordered_pair_member,singleton_set])).
cnf(sg2, plain, (~ member(Z,universal_class) | member(Z,singleton(Z))), inference(lemma,[status(thm)],[unordered_pair2,singleton_set])).
cnf(nsn, plain, (X = null_class | member(not_subclass_element(X,null_class),X)), inference(lemma,[status(thm)],[sn,not_subclass_members1])).
cnf(csg, plain, (~ member(W,cross_product(singleton(Z),B)) | ordered_pair(Z,second(W)) = W), inference(lemma,[status(thm)],[cartesian_product4,cartesian_product1,sg1])).
cnf(d1a, plain, (~ member(Z,domain_of(X)) | member(not_subclass_element(restrict(X,singleton(Z),universal_class),null_class),restrict(X,singleton(Z),universal_class))), inference(lemma,[status(thm)],[domain1,nsn])).
cnf(d1, plain, (~ member(Z,domain_of(X)) | member(ordered_pair(Z,range(X,Z,universal_class)),X)), inference(lemma,[status(thm)],[d1a,rsx,rsc,csg,range])).
cnf(d2, plain, (~ member(Z,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(Z,W),X) | member(Z,domain_of(X))), inference(lemma,[status(thm)],[domain2,rsi,cartesian_product3,sg2,nl])).
cnf(mv, plain, (~ member(Z,X) | member(Z,universal_class)), inference(lemma,[status(thm)],[class_elements_are_sets,subclass_members])).
cnf(pvv1, plain, (~ member(ordered_pair(U,W),cross_product(A,B)) | member(U,universal_class)), inference(lemma,[status(thm)],[cartesian_product1,mv])).
cnf(sm1, plain, (~ member(W,Z) | ~ member(Z,X) | member(W,sum_class(X))), inference(lemma,[status(thm)],[mv,cartesian_product3,element_relation3,rsi,d2,sum_class_definition])).
cnf(eqs, plain, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), inference(lemma,[status(thm)],[subclass_implies_equal])).
cnf(sm3, plain, (~ member(X,sum_class(Y)) | member(ordered_pair(X,range(restrict(element_relation,universal_class,Y),X,universal_class)),restrict(element_relation,universal_class,Y))), inference(lemma,[status(thm)],[sum_class_definition,d1])).
cnf(sm4, plain, (~ member(X,sum_class(Y)) | member(X,range(restrict(element_relation,universal_class,Y),X,universal_class))), inference(lemma,[status(thm)],[sm3,rsx,element_relation2])).
cnf(sm5, plain, (~ member(X,sum_class(Y)) | member(range(restrict(element_relation,universal_class,Y),X,universal_class),Y)), inference(lemma,[status(thm)],[sm3,rsc,cartesian_product2])).
cnf(xs, plain, (member(x,universal_class)), inference(lemma,[status(thm)],[prove_sum_of_ordered_pair_1,pvv1])).
cnf(a1, plain, (~ member(Z,sum_class(ordered_pair(x,y))) | member(Z,range(restrict(element_relation,universal_class,ordered_pair(x,y)),Z,universal_class))), inference(lemma,[status(thm)],[sm4])).
cnf(a2, plain, (~ member(Z,sum_class(ordered_pair(x,y))) | member(range(restrict(element_relation,universal_class,ordered_pair(x,y)),Z,universal_class),ordered_pair(x,y))), inference(lemma,[status(thm)],[sm5])).
cnf(a3, plain, (~ member(Z,sum_class(ordered_pair(x,y))) | range(restrict(element_relation,universal_class,ordered_pair(x,y)),Z,universal_class) = singleton(x) | range(restrict(element_relation,universal_class,ordered_pair(x,y)),Z,universal_class) = unordered_pair(x,singleton(y))), inference(lemma,[status(thm)],[a2,ordered_pair,unordered_pair_member])).
cnf(a4, plain, (~ member(Z,sum_class(ordered_pair(x,y))) | member(Z,unordered_pair(x,singleton(y)))), inference(lemma,[status(thm)],[a1,a3,sg1,unordered_pair2,xs])).
cnf(b0, plain, (member(unordered_pair(x,singleton(y)),ordered_pair(x,y))), inference(lemma,[status(thm)],[ordered_pair,unordered_pair3,unordered_pairs_in_universal])).
cnf(b1, plain, (~ member(Z,unordered_pair(x,singleton(y))) | member(Z,sum_class(ordered_pair(x,y)))), inference(lemma,[status(thm)],[b0,sm1])).
cnf(s1, plain, (subclass(sum_class(ordered_pair(x,y)),unordered_pair(x,singleton(y)))), inference(lemma,[status(thm)],[a4,not_subclass_members1,not_subclass_members2])).
cnf(s2, plain, (subclass(unordered_pair(x,singleton(y)),sum_class(ordered_pair(x,y)))), inference(lemma,[status(thm)],[b1,not_subclass_members1,not_subclass_members2])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[eqs,prove_sum_of_ordered_pair_2,s1,s2])).
% SZS output end CNFRefutation for SET354-6
%------------------------------------------------------------------------------
