%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM132-1 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for NUM132-1
% SZS output start CNFRefutation for NUM132-1
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM132-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM132-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM132-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM132-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM132-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM132-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM132-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM132-1.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM132-1.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM132-1.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM132-1.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM132-1.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/NUM/NUM132-1.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM132-1.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM132-1.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/NUM/NUM132-1.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM132-1.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM132-1.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/NUM/NUM132-1.p',range)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM132-1.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM132-1.p',cartesian_product3)).
cnf(union, axiom, (complement(intersection(complement(X),complement(Y))) = union(X,Y)), file('Problems/NUM/NUM132-1.p',union)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/NUM/NUM132-1.p',element_relation3)).
cnf(sum_class_definition, axiom, (domain_of(restrict(element_relation,universal_class,X)) = sum_class(X)), file('Problems/NUM/NUM132-1.p',sum_class_definition)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/NUM/NUM132-1.p',element_relation2)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM132-1.p',cartesian_product2)).
cnf(successor, axiom, (union(X,singleton(X)) = successor(X)), file('Problems/NUM/NUM132-1.p',successor)).
cnf(ordinal_numbers2, axiom, (~ member(X,ordinal_numbers) | subclass(sum_class(X),X)), file('Problems/NUM/NUM132-1.p',ordinal_numbers2)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM132-1.p',not_subclass_members2)).
cnf(prove_union_of_successor_ordinal_1, negated_conjecture, (member(x,ordinal_numbers)), file('Problems/NUM/NUM132-1.p',prove_union_of_successor_ordinal_1)).
cnf(prove_union_of_successor_ordinal_2, negated_conjecture, (sum_class(successor(x)) != x), file('Problems/NUM/NUM132-1.p',prove_union_of_successor_ordinal_2)).
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
cnf(un1, plain, (~ member(Z,union(X,Y)) | member(Z,X) | member(Z,Y)), inference(lemma,[status(thm)],[union,complement1,complement2,intersection3,mv])).
cnf(un3, plain, (~ member(Z,Y) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection2,mv])).
cnf(sm1, plain, (~ member(W,Z) | ~ member(Z,X) | member(W,sum_class(X))), inference(lemma,[status(thm)],[mv,cartesian_product3,element_relation3,rsi,d2,sum_class_definition])).
cnf(sm3, plain, (~ member(X,sum_class(Y)) | member(ordered_pair(X,range(restrict(element_relation,universal_class,Y),X,universal_class)),restrict(element_relation,universal_class,Y))), inference(lemma,[status(thm)],[sum_class_definition,d1])).
cnf(sm4, plain, (~ member(X,sum_class(Y)) | member(X,range(restrict(element_relation,universal_class,Y),X,universal_class))), inference(lemma,[status(thm)],[sm3,rsx,element_relation2])).
cnf(sm5, plain, (~ member(X,sum_class(Y)) | member(range(restrict(element_relation,universal_class,Y),X,universal_class),Y)), inference(lemma,[status(thm)],[sm3,rsc,cartesian_product2])).
cnf(os_sxx, plain, (~ member(X,universal_class) | member(X,successor(X))), inference(lemma,[status(thm)],[sg2,un3,successor])).
cnf(os_sux, plain, (~ member(A,successor(X)) | member(A,X) | A = X), inference(lemma,[status(thm)],[successor,un1,sg1])).
cnf(os_usx1, plain, (~ member(X,ordinal_numbers) | ~ member(Z,sum_class(successor(X))) | member(Z,X)), inference(lemma,[status(thm)],[sm4,sm5,os_sux,sm1,ordinal_numbers2,subclass_members])).
cnf(os_usx2, plain, (~ member(X,ordinal_numbers) | ~ member(Z,X) | member(Z,sum_class(successor(X)))), inference(lemma,[status(thm)],[os_sxx,mv,sm1])).
cnf(os_usx, plain, (~ member(X,ordinal_numbers) | sum_class(successor(X)) = X), inference(lemma,[status(thm)],[os_usx1,os_usx2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[os_usx,prove_union_of_successor_ordinal_1,prove_union_of_successor_ordinal_2])).
% SZS output end CNFRefutation for NUM132-1
%------------------------------------------------------------------------------
