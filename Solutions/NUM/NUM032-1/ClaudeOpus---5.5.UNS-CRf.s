%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM032-1 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for NUM032-1
% SZS output start CNFRefutation for NUM032-1
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/NUM/NUM032-1.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM032-1.p',cartesian_product1)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM032-1.p',cartesian_product2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM032-1.p',cartesian_product3)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM032-1.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM032-1.p',not_subclass_members1)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM032-1.p',not_subclass_members2)).
cnf(flip1, axiom, (subclass(flip(X),cross_product(cross_product(universal_class,universal_class),universal_class))), file('Problems/NUM/NUM032-1.p',flip1)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/NUM/NUM032-1.p',flip2)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/NUM/NUM032-1.p',flip3)).
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM032-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM032-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM032-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM032-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM032-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM032-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM032-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM032-1.p',class_elements_are_sets)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM032-1.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM032-1.p',restriction1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM032-1.p',domain1)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM032-1.p',domain2)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/NUM/NUM032-1.p',inverse)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/NUM/NUM032-1.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM032-1.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM032-1.p',unordered_pair2)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/NUM/NUM032-1.p',range)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/NUM/NUM032-1.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM032-1.p',ordered_pair)).
cnf(union, axiom, (complement(intersection(complement(X),complement(Y))) = union(X,Y)), file('Problems/NUM/NUM032-1.p',union)).
cnf(symmetrization, axiom, (union(X,inverse(X)) = symmetrization_of(X)), file('Problems/NUM/NUM032-1.p',symmetrization)).
cnf(prove_symmetrization_property5_1, negated_conjecture, (symmetrization_of(x) = x), file('Problems/NUM/NUM032-1.p',prove_symmetrization_property5_1)).
cnf(prove_symmetrization_property5_2, negated_conjecture, (restrict(x,universal_class,universal_class) != inverse(x)), file('Problems/NUM/NUM032-1.p',prove_symmetrization_property5_2)).
cnf(cp1, plain, (~ subclass(X,Y) | ~ member(W,cross_product(X,Z)) | member(W,cross_product(Y,Z))), inference(lemma,[status(thm)],[cartesian_product4,cartesian_product1,cartesian_product2,cartesian_product3,subclass_members])).
cnf(cp, plain, (~ subclass(X,Y) | subclass(cross_product(X,Z),cross_product(Y,Z))), inference(lemma,[status(thm)],[cp1,not_subclass_members1,not_subclass_members2])).
cnf(fl0, plain, (~ member(W,flip(X)) | ordered_pair(ordered_pair(first(first(W)),second(first(W))),second(W)) = W), inference(lemma,[status(thm)],[flip1,subclass_members,cartesian_product4,cartesian_product1])).
cnf(fl1a, plain, (~ subclass(X,Y) | ~ member(ordered_pair(ordered_pair(U,V),T),flip(X)) | member(ordered_pair(ordered_pair(U,V),T),flip(Y))), inference(lemma,[status(thm)],[flip1,flip2,flip3,subclass_members])).
cnf(fl1, plain, (~ subclass(X,Y) | ~ member(W,flip(X)) | member(W,flip(Y))), inference(lemma,[status(thm)],[fl0,fl1a])).
cnf(fl, plain, (~ subclass(X,Y) | subclass(flip(X),flip(Y))), inference(lemma,[status(thm)],[fl1,not_subclass_members1,not_subclass_members2])).
cnf(nl, plain, (~ member(Z,null_class)), inference(lemma,[status(thm)],[regularity1,regularity2,intersection1,intersection2,intersection3,complement1,complement2,class_elements_are_sets,subclass_members])).
cnf(sn, plain, (~ subclass(X,null_class) | X = null_class), inference(lemma,[status(thm)],[nl,not_subclass_members1,subclass_implies_equal])).
cnf(rs1, plain, (~ subclass(X,Y) | ~ member(W,restrict(X,A,B)) | member(W,restrict(Y,A,B))), inference(lemma,[status(thm)],[restriction1,intersection1,intersection2,intersection3,subclass_members])).
cnf(rs, plain, (~ subclass(X,Y) | subclass(restrict(X,A,B),restrict(Y,A,B))), inference(lemma,[status(thm)],[rs1,not_subclass_members1,not_subclass_members2])).
cnf(dm1, plain, (~ subclass(X,Y) | ~ member(Z,domain_of(X)) | member(Z,domain_of(Y))), inference(lemma,[status(thm)],[domain1,domain2,rs,sn,class_elements_are_sets,subclass_members])).
cnf(dm, plain, (~ subclass(X,Y) | subclass(domain_of(X),domain_of(Y))), inference(lemma,[status(thm)],[dm1,not_subclass_members1,not_subclass_members2])).
cnf(inv, plain, (~ subclass(X,Y) | subclass(inverse(X),inverse(Y))), inference(lemma,[status(thm)],[cp,fl,dm,inverse])).
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
cnf(i1, plain, (~ member(ordered_pair(U,W),inverse(X)) | member(ordered_pair(W,U),X)), inference(lemma,[status(thm)],[inverse,d1,flip2,cartesian_product1])).
cnf(opv, plain, (member(ordered_pair(U,W),universal_class)), inference(lemma,[status(thm)],[unordered_pairs_in_universal,ordered_pair])).
cnf(i2a, plain, (~ member(U,universal_class) | ~ member(ordered_pair(W,U),X) | member(ordered_pair(ordered_pair(W,U),U),cross_product(X,universal_class))), inference(lemma,[status(thm)],[cartesian_product3])).
cnf(i2b, plain, (~ member(U,universal_class) | ~ member(W,universal_class) | member(ordered_pair(ordered_pair(U,W),U),cross_product(cross_product(universal_class,universal_class),universal_class))), inference(lemma,[status(thm)],[cartesian_product3])).
cnf(i2c, plain, (~ member(U,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(W,U),X) | member(ordered_pair(ordered_pair(U,W),U),flip(cross_product(X,universal_class)))), inference(lemma,[status(thm)],[flip3,i2a,i2b])).
cnf(i2, plain, (~ member(U,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(W,U),X) | member(ordered_pair(U,W),inverse(X))), inference(lemma,[status(thm)],[i2c,d2,inverse,opv])).
cnf(un3, plain, (~ member(Z,Y) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection2,mv])).
cnf(ivc, plain, (~ member(Z,inverse(X)) | member(Z,cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[inverse,d1,flip1,subclass_members,cartesian_product1])).
cnf(cpw, plain, (~ member(Z,cross_product(A,B)) | ordered_pair(first(Z),second(Z)) = Z), inference(lemma,[status(thm)],[cartesian_product4])).
cnf(pvv1, plain, (~ member(ordered_pair(U,W),cross_product(A,B)) | member(U,universal_class)), inference(lemma,[status(thm)],[cartesian_product1,mv])).
cnf(pvv2, plain, (~ member(ordered_pair(U,W),cross_product(A,B)) | member(W,universal_class)), inference(lemma,[status(thm)],[cartesian_product2,mv])).
cnf(ii0, plain, (~ member(ordered_pair(U,W),inverse(inverse(X))) | member(ordered_pair(U,W),restrict(X,universal_class,universal_class))), inference(lemma,[status(thm)],[i1,ivc,pvv1,pvv2,cartesian_product3,rsi])).
cnf(ii1, plain, (~ member(Z,inverse(inverse(X))) | member(Z,restrict(X,universal_class,universal_class))), inference(lemma,[status(thm)],[ivc,cpw,ii0])).
cnf(ii2, plain, (~ member(ordered_pair(U,W),restrict(X,universal_class,universal_class)) | member(ordered_pair(U,W),inverse(inverse(X)))), inference(lemma,[status(thm)],[rsx,rsc,pvv1,pvv2,i2])).
cnf(ii3, plain, (~ member(Z,restrict(X,universal_class,universal_class)) | member(Z,inverse(inverse(X)))), inference(lemma,[status(thm)],[rsc,cpw,ii2])).
cnf(ii, plain, (inverse(inverse(X)) = restrict(X,universal_class,universal_class)), inference(lemma,[status(thm)],[ii1,ii3,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(ivs, plain, (subclass(inverse(X),cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[ivc,not_subclass_members1,not_subclass_members2])).
cnf(usub2, plain, (union(X,Y) != X | subclass(Y,X)), inference(lemma,[status(thm)],[un3,not_subclass_members1,not_subclass_members2])).
cnf(n032_a, plain, (symmetrization_of(X) != X | subclass(inverse(X),X)), inference(lemma,[status(thm)],[symmetrization,usub2])).
cnf(n032_b, plain, (symmetrization_of(X) != X | subclass(restrict(X,universal_class,universal_class),inverse(X))), inference(lemma,[status(thm)],[n032_a,inv,ii])).
cnf(n032_c, plain, (symmetrization_of(X) != X | subclass(inverse(X),restrict(X,universal_class,universal_class))), inference(lemma,[status(thm)],[n032_a,ivs,subclass_members,rsi,not_subclass_members1,not_subclass_members2])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[n032_b,n032_c,subclass_implies_equal,prove_symmetrization_property5_1,prove_symmetrization_property5_2])).
% SZS output end CNFRefutation for NUM032-1
%------------------------------------------------------------------------------
