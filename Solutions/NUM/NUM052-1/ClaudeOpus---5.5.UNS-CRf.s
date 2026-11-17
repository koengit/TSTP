%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM052-1 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for NUM052-1
% SZS output start CNFRefutation for NUM052-1
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM052-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM052-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM052-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM052-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM052-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM052-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM052-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM052-1.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM052-1.p',subclass_members)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM052-1.p',restriction1)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM052-1.p',unordered_pair2)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM052-1.p',singleton_set)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM052-1.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM052-1.p',cartesian_product3)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/NUM/NUM052-1.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM052-1.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/NUM/NUM052-1.p',flip3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/NUM/NUM052-1.p',inverse)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/NUM/NUM052-1.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/NUM/NUM052-1.p',image)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/NUM/NUM052-1.p',compose3)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM052-1.p',cartesian_product1)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM052-1.p',cartesian_product2)).
cnf(transitive1, axiom, (~ transitive(Xr,Y) | subclass(compose(restrict(Xr,Y,Y),restrict(Xr,Y,Y)),restrict(Xr,Y,Y))), file('Problems/NUM/NUM052-1.p',transitive1)).
cnf(prove_transitive_ordering_property1_1, negated_conjecture, (transitive(xr,y)), file('Problems/NUM/NUM052-1.p',prove_transitive_ordering_property1_1)).
cnf(prove_transitive_ordering_property1_2, negated_conjecture, (member(ordered_pair(u,v),cross_product(y,y))), file('Problems/NUM/NUM052-1.p',prove_transitive_ordering_property1_2)).
cnf(prove_transitive_ordering_property1_3, negated_conjecture, (member(ordered_pair(u,v),xr)), file('Problems/NUM/NUM052-1.p',prove_transitive_ordering_property1_3)).
cnf(prove_transitive_ordering_property1_4, negated_conjecture, (member(ordered_pair(v,w),cross_product(y,y))), file('Problems/NUM/NUM052-1.p',prove_transitive_ordering_property1_4)).
cnf(prove_transitive_ordering_property1_5, negated_conjecture, (member(ordered_pair(v,w),xr)), file('Problems/NUM/NUM052-1.p',prove_transitive_ordering_property1_5)).
cnf(prove_transitive_ordering_property1_6, negated_conjecture, (~ member(ordered_pair(u,w),xr)), file('Problems/NUM/NUM052-1.p',prove_transitive_ordering_property1_6)).
cnf(nl, plain, (~ member(Z,null_class)), inference(lemma,[status(thm)],[regularity1,regularity2,intersection1,intersection2,intersection3,complement1,complement2,class_elements_are_sets,subclass_members])).
cnf(rsx, plain, (~ member(W,restrict(X,A,B)) | member(W,X)), inference(lemma,[status(thm)],[restriction1,intersection1])).
cnf(rsi, plain, (~ member(W,X) | ~ member(W,cross_product(A,B)) | member(W,restrict(X,A,B))), inference(lemma,[status(thm)],[restriction1,intersection3])).
cnf(sg2, plain, (~ member(Z,universal_class) | member(Z,singleton(Z))), inference(lemma,[status(thm)],[unordered_pair2,singleton_set])).
cnf(d2, plain, (~ member(Z,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(Z,W),X) | member(Z,domain_of(X))), inference(lemma,[status(thm)],[domain2,rsi,cartesian_product3,sg2,nl])).
cnf(mv, plain, (~ member(Z,X) | member(Z,universal_class)), inference(lemma,[status(thm)],[class_elements_are_sets,subclass_members])).
cnf(opv, plain, (member(ordered_pair(U,W),universal_class)), inference(lemma,[status(thm)],[unordered_pairs_in_universal,ordered_pair])).
cnf(i2a, plain, (~ member(U,universal_class) | ~ member(ordered_pair(W,U),X) | member(ordered_pair(ordered_pair(W,U),U),cross_product(X,universal_class))), inference(lemma,[status(thm)],[cartesian_product3])).
cnf(i2b, plain, (~ member(U,universal_class) | ~ member(W,universal_class) | member(ordered_pair(ordered_pair(U,W),U),cross_product(cross_product(universal_class,universal_class),universal_class))), inference(lemma,[status(thm)],[cartesian_product3])).
cnf(i2c, plain, (~ member(U,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(W,U),X) | member(ordered_pair(ordered_pair(U,W),U),flip(cross_product(X,universal_class)))), inference(lemma,[status(thm)],[flip3,i2a,i2b])).
cnf(i2, plain, (~ member(U,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(W,U),X) | member(ordered_pair(U,W),inverse(X))), inference(lemma,[status(thm)],[i2c,d2,inverse,opv])).
cnf(r2, plain, (~ member(Z,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(W,Z),X) | member(Z,range_of(X))), inference(lemma,[status(thm)],[range_of,d2,i2])).
cnf(im2, plain, (~ member(Z,universal_class) | ~ member(W,A) | ~ member(ordered_pair(W,Z),X) | member(Z,image(X,A))), inference(lemma,[status(thm)],[image,r2,rsi,cartesian_product3,mv])).
cnf(is2, plain, (~ member(Y,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(Y,W),B) | member(W,image(B,singleton(Y)))), inference(lemma,[status(thm)],[im2,sg2])).
cnf(co2a, plain, (~ member(Y,universal_class) | ~ member(W,universal_class) | ~ member(Z,universal_class) | ~ member(ordered_pair(Y,W),B) | ~ member(ordered_pair(W,Z),A) | member(Z,image(A,image(B,singleton(Y))))), inference(lemma,[status(thm)],[is2,im2])).
cnf(co2, plain, (~ member(Y,universal_class) | ~ member(W,universal_class) | ~ member(Z,universal_class) | ~ member(ordered_pair(Y,W),B) | ~ member(ordered_pair(W,Z),A) | member(ordered_pair(Y,Z),compose(A,B))), inference(lemma,[status(thm)],[co2a,compose3,cartesian_product3])).
cnf(n052_a, plain, (~ transitive(X,Y) | ~ member(ordered_pair(A,B),cross_product(Y,Y)) | ~ member(ordered_pair(A,B),X) | ~ member(ordered_pair(B,C),cross_product(Y,Y)) | ~ member(ordered_pair(B,C),X) | member(ordered_pair(A,C),X)), inference(lemma,[status(thm)],[rsi,cartesian_product1,cartesian_product2,mv,co2,transitive1,subclass_members,rsx])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[n052_a,prove_transitive_ordering_property1_1,prove_transitive_ordering_property1_2,prove_transitive_ordering_property1_3,prove_transitive_ordering_property1_4,prove_transitive_ordering_property1_5,prove_transitive_ordering_property1_6])).
% SZS output end CNFRefutation for NUM052-1
%------------------------------------------------------------------------------
