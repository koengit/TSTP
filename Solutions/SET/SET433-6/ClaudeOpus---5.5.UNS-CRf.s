%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SET433-6 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for SET433-6
% SZS output start CNFRefutation for SET433-6
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/SET/SET433-6.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/SET/SET433-6.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/SET/SET433-6.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/SET/SET433-6.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/SET/SET433-6.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/SET/SET433-6.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/SET/SET433-6.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/SET/SET433-6.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/SET/SET433-6.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/SET/SET433-6.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/SET/SET433-6.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/SET/SET433-6.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/SET/SET433-6.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/SET/SET433-6.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/SET/SET433-6.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/SET/SET433-6.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/SET/SET433-6.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/SET/SET433-6.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/SET/SET433-6.p',range)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/SET/SET433-6.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/SET/SET433-6.p',flip2)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/SET/SET433-6.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/SET/SET433-6.p',image)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/SET/SET433-6.p',cartesian_product2)).
cnf(compose1, axiom, (subclass(compose(Yr,Xr),cross_product(universal_class,universal_class))), file('Problems/SET/SET433-6.p',compose1)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/SET/SET433-6.p',cartesian_product3)).
cnf(domain, axiom, (first(not_subclass_element(restrict(Z,X,singleton(Y)),null_class)) = domain(Z,X,Y)), file('Problems/SET/SET433-6.p',domain)).
cnf(single_valued_class2, axiom, (~ subclass(compose(X,inverse(X)),identity_relation) | single_valued_class(X)), file('Problems/SET/SET433-6.p',single_valued_class2)).
cnf(single_valued_term_defn1, axiom, (first(not_subclass_element(compose(X,inverse(X)),identity_relation)) = single_valued1(X)), file('Problems/SET/SET433-6.p',single_valued_term_defn1)).
cnf(single_valued_term_defn2, axiom, (second(not_subclass_element(compose(X,inverse(X)),identity_relation)) = single_valued2(X)), file('Problems/SET/SET433-6.p',single_valued_term_defn2)).
cnf(compose2, axiom, (~ member(ordered_pair(Y,Z),compose(Yr,Xr)) | member(Z,image(Yr,image(Xr,singleton(Y))))), file('Problems/SET/SET433-6.p',compose2)).
cnf(single_valued_term_defn3, axiom, (domain(X,image(inverse(X),singleton(single_valued1(X))),single_valued2(X)) = single_valued3(X)), file('Problems/SET/SET433-6.p',single_valued_term_defn3)).
cnf(function3, axiom, (~ subclass(Xf,cross_product(universal_class,universal_class)) | ~ subclass(compose(Xf,inverse(Xf)),identity_relation) | function(Xf)), file('Problems/SET/SET433-6.p',function3)).
cnf(single_valued_class1, axiom, (~ single_valued_class(X) | subclass(compose(X,inverse(X)),identity_relation)), file('Problems/SET/SET433-6.p',single_valued_class1)).
cnf(prove_function_alternate_defn2_1, negated_conjecture, (subclass(x,cross_product(universal_class,universal_class))), file('Problems/SET/SET433-6.p',prove_function_alternate_defn2_1)).
cnf(prove_function_alternate_defn2_2, negated_conjecture, (~ member(ordered_pair(single_valued3(x),single_valued1(x)),x)), file('Problems/SET/SET433-6.p',prove_function_alternate_defn2_2)).
cnf(prove_function_alternate_defn2_3, negated_conjecture, (~ function(x)), file('Problems/SET/SET433-6.p',prove_function_alternate_defn2_3)).
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
cnf(mv, plain, (~ member(Z,X) | member(Z,universal_class)), inference(lemma,[status(thm)],[class_elements_are_sets,subclass_members])).
cnf(i1, plain, (~ member(ordered_pair(U,W),inverse(X)) | member(ordered_pair(W,U),X)), inference(lemma,[status(thm)],[inverse,d1,flip2,cartesian_product1])).
cnf(r1, plain, (~ member(Z,range_of(X)) | member(ordered_pair(range(inverse(X),Z,universal_class),Z),X)), inference(lemma,[status(thm)],[range_of,d1,i1])).
cnf(im1, plain, (~ member(Z,image(X,A)) | member(ordered_pair(range(inverse(restrict(X,A,universal_class)),Z,universal_class),Z),restrict(X,A,universal_class))), inference(lemma,[status(thm)],[image,r1])).
cnf(cpw, plain, (~ member(Z,cross_product(A,B)) | ordered_pair(first(Z),second(Z)) = Z), inference(lemma,[status(thm)],[cartesian_product4])).
cnf(cps, plain, (~ member(Z,cross_product(A,B)) | member(second(Z),B)), inference(lemma,[status(thm)],[cartesian_product4,cartesian_product2])).
cnf(is1, plain, (~ member(W,image(B,singleton(Y))) | member(ordered_pair(Y,W),B)), inference(lemma,[status(thm)],[im1,rsx,rsc,cartesian_product1,sg1])).
cnf(im1a, plain, (~ member(Z,image(X,A)) | member(range(inverse(restrict(X,A,universal_class)),Z,universal_class),A)), inference(lemma,[status(thm)],[im1,rsc,cartesian_product1])).
cnf(im1x, plain, (~ member(Z,image(X,A)) | member(ordered_pair(range(inverse(restrict(X,A,universal_class)),Z,universal_class),Z),X)), inference(lemma,[status(thm)],[im1,rsx])).
cnf(cmc, plain, (~ member(W,compose(A,B)) | member(W,cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[compose1,subclass_members])).
cnf(imd1, plain, (~ member(Y,image(Z,X)) | restrict(Z,X,singleton(Y)) != null_class), inference(lemma,[status(thm)],[im1x,im1a,mv,sg2,cartesian_product3,rsi,nl])).
cnf(dm2a, plain, (restrict(Z,X,singleton(Y)) = null_class | member(not_subclass_element(restrict(Z,X,singleton(Y)),null_class),restrict(Z,X,singleton(Y)))), inference(lemma,[status(thm)],[nsn])).
cnf(dm2b, plain, (restrict(Z,X,singleton(Y)) = null_class | ordered_pair(domain(Z,X,Y),Y) = not_subclass_element(restrict(Z,X,singleton(Y)),null_class)), inference(lemma,[status(thm)],[dm2a,rsc,cpw,cps,sg1,domain])).
cnf(dm2d, plain, (restrict(Z,X,singleton(Y)) = null_class | member(ordered_pair(domain(Z,X,Y),Y),cross_product(X,singleton(Y)))), inference(lemma,[status(thm)],[dm2a,dm2b,rsc])).
cnf(dm2e, plain, (restrict(Z,X,singleton(Y)) = null_class | member(domain(Z,X,Y),X)), inference(lemma,[status(thm)],[dm2d,cartesian_product1])).
cnf(nsv0, plain, (single_valued_class(X) | member(not_subclass_element(compose(X,inverse(X)),identity_relation),compose(X,inverse(X)))), inference(lemma,[status(thm)],[single_valued_class2,not_subclass_members1])).
cnf(nsv1, plain, (single_valued_class(X) | ordered_pair(single_valued1(X),single_valued2(X)) = not_subclass_element(compose(X,inverse(X)),identity_relation)), inference(lemma,[status(thm)],[nsv0,cmc,cpw,single_valued_term_defn1,single_valued_term_defn2])).
cnf(nsv2, plain, (single_valued_class(X) | member(ordered_pair(single_valued1(X),single_valued2(X)),compose(X,inverse(X)))), inference(lemma,[status(thm)],[nsv0,nsv1])).
cnf(nsv3, plain, (single_valued_class(X) | restrict(X,image(inverse(X),singleton(single_valued1(X))),singleton(single_valued2(X))) != null_class), inference(lemma,[status(thm)],[nsv2,compose2,imd1])).
cnf(sv26a, plain, (single_valued_class(X) | member(single_valued3(X),image(inverse(X),singleton(single_valued1(X))))), inference(lemma,[status(thm)],[nsv3,dm2e,single_valued_term_defn3])).
cnf(sv26, plain, (single_valued_class(X) | member(ordered_pair(single_valued3(X),single_valued1(X)),X)), inference(lemma,[status(thm)],[sv26a,is1,i1])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[sv26,function3,single_valued_class1,prove_function_alternate_defn2_1,prove_function_alternate_defn2_2,prove_function_alternate_defn2_3])).
% SZS output end CNFRefutation for SET433-6
%------------------------------------------------------------------------------
