%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SET320-6 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for SET320-6
% SZS output start CNFRefutation for SET320-6
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/SET/SET320-6.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/SET/SET320-6.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/SET/SET320-6.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/SET/SET320-6.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/SET/SET320-6.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/SET/SET320-6.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/SET/SET320-6.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/SET/SET320-6.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/SET/SET320-6.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/SET/SET320-6.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/SET/SET320-6.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/SET/SET320-6.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/SET/SET320-6.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/SET/SET320-6.p',singleton_set)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/SET/SET320-6.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/SET/SET320-6.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/SET/SET320-6.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/SET/SET320-6.p',range)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/SET/SET320-6.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/SET/SET320-6.p',flip2)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/SET/SET320-6.p',range_of)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/SET/SET320-6.p',cartesian_product2)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/SET/SET320-6.p',not_subclass_members2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/SET/SET320-6.p',cartesian_product3)).
cnf(prove_corollary_4_to_range_property4_1, negated_conjecture, (~ subclass(cross_product(range_of(restrict(x1,y1,z1)),range_of(restrict(x2,y2,z2))),cross_product(z1,z2))), file('Problems/SET/SET320-6.p',prove_corollary_4_to_range_property4_1)).
cnf(nl, plain, (~ member(Z,null_class)), inference(lemma,[status(thm)],[regularity1,regularity2,intersection1,intersection2,intersection3,complement1,complement2,class_elements_are_sets,subclass_members])).
cnf(sn, plain, (~ subclass(X,null_class) | X = null_class), inference(lemma,[status(thm)],[nl,not_subclass_members1,subclass_implies_equal])).
cnf(rsx, plain, (~ member(W,restrict(X,A,B)) | member(W,X)), inference(lemma,[status(thm)],[restriction1,intersection1])).
cnf(rsc, plain, (~ member(W,restrict(X,A,B)) | member(W,cross_product(A,B))), inference(lemma,[status(thm)],[restriction1,intersection2])).
cnf(sg1, plain, (~ member(U,singleton(Z)) | U = Z), inference(lemma,[status(thm)],[unordered_pair_member,singleton_set])).
cnf(nsn, plain, (X = null_class | member(not_subclass_element(X,null_class),X)), inference(lemma,[status(thm)],[sn,not_subclass_members1])).
cnf(csg, plain, (~ member(W,cross_product(singleton(Z),B)) | ordered_pair(Z,second(W)) = W), inference(lemma,[status(thm)],[cartesian_product4,cartesian_product1,sg1])).
cnf(d1a, plain, (~ member(Z,domain_of(X)) | member(not_subclass_element(restrict(X,singleton(Z),universal_class),null_class),restrict(X,singleton(Z),universal_class))), inference(lemma,[status(thm)],[domain1,nsn])).
cnf(d1, plain, (~ member(Z,domain_of(X)) | member(ordered_pair(Z,range(X,Z,universal_class)),X)), inference(lemma,[status(thm)],[d1a,rsx,rsc,csg,range])).
cnf(i1, plain, (~ member(ordered_pair(U,W),inverse(X)) | member(ordered_pair(W,U),X)), inference(lemma,[status(thm)],[inverse,d1,flip2,cartesian_product1])).
cnf(r1, plain, (~ member(Z,range_of(X)) | member(ordered_pair(range(inverse(X),Z,universal_class),Z),X)), inference(lemma,[status(thm)],[range_of,d1,i1])).
cnf(cpw, plain, (~ member(Z,cross_product(A,B)) | ordered_pair(first(Z),second(Z)) = Z), inference(lemma,[status(thm)],[cartesian_product4])).
cnf(cpf, plain, (~ member(Z,cross_product(A,B)) | member(first(Z),A)), inference(lemma,[status(thm)],[cartesian_product4,cartesian_product1])).
cnf(cps, plain, (~ member(Z,cross_product(A,B)) | member(second(Z),B)), inference(lemma,[status(thm)],[cartesian_product4,cartesian_product2])).
cnf(rr0, plain, (~ member(A,range_of(restrict(X,Y,Z))) | member(ordered_pair(range(inverse(restrict(X,Y,Z)),A,universal_class),A),restrict(X,Y,Z))), inference(lemma,[status(thm)],[r1])).
cnf(rr1, plain, (~ member(A,range_of(restrict(X,Y,Z))) | member(A,Z)), inference(lemma,[status(thm)],[cartesian_product2,rr0,rsc])).
cnf(rz, plain, (subclass(range_of(restrict(X,Y,Z)),Z)), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,rr1])).
cnf(cb1, plain, (~ subclass(A,C) | ~ subclass(B,D) | ~ member(W,cross_product(A,B)) | member(W,cross_product(C,D))), inference(lemma,[status(thm)],[cartesian_product3,cpf,cps,cpw,subclass_members])).
cnf(cb, plain, (~ subclass(A,C) | ~ subclass(B,D) | subclass(cross_product(A,B),cross_product(C,D))), inference(lemma,[status(thm)],[cb1,not_subclass_members1,not_subclass_members2])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[cb,prove_corollary_4_to_range_property4_1,rz])).
% SZS output end CNFRefutation for SET320-6
%------------------------------------------------------------------------------
