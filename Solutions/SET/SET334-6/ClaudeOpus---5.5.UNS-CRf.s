%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SET334-6 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for SET334-6
% SZS output start CNFRefutation for SET334-6
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/SET/SET334-6.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/SET/SET334-6.p',cartesian_product1)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/SET/SET334-6.p',cartesian_product2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/SET/SET334-6.p',cartesian_product3)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/SET/SET334-6.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/SET/SET334-6.p',not_subclass_members1)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/SET/SET334-6.p',not_subclass_members2)).
cnf(flip1, axiom, (subclass(flip(X),cross_product(cross_product(universal_class,universal_class),universal_class))), file('Problems/SET/SET334-6.p',flip1)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/SET/SET334-6.p',flip2)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/SET/SET334-6.p',flip3)).
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/SET/SET334-6.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/SET/SET334-6.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/SET/SET334-6.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/SET/SET334-6.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/SET/SET334-6.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/SET/SET334-6.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/SET/SET334-6.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/SET/SET334-6.p',class_elements_are_sets)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/SET/SET334-6.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/SET/SET334-6.p',restriction1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/SET/SET334-6.p',domain1)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/SET/SET334-6.p',domain2)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/SET/SET334-6.p',inverse)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/SET/SET334-6.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/SET/SET334-6.p',image)).
cnf(prove_monotonicity_of_image2_1, negated_conjecture, (subclass(xr,yr)), file('Problems/SET/SET334-6.p',prove_monotonicity_of_image2_1)).
cnf(prove_monotonicity_of_image2_2, negated_conjecture, (~ subclass(image(xr,z),image(yr,z))), file('Problems/SET/SET334-6.p',prove_monotonicity_of_image2_2)).
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
cnf(rg, plain, (~ subclass(X,Y) | subclass(range_of(X),range_of(Y))), inference(lemma,[status(thm)],[inv,dm,range_of])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[image,inverse,prove_monotonicity_of_image2_1,prove_monotonicity_of_image2_2,range_of,restriction1,rg,rs])).
% SZS output end CNFRefutation for SET334-6
%------------------------------------------------------------------------------
