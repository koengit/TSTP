%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SET419-6 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for SET419-6
% SZS output start CNFRefutation for SET419-6
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/SET/SET419-6.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/SET/SET419-6.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/SET/SET419-6.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/SET/SET419-6.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/SET/SET419-6.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/SET/SET419-6.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/SET/SET419-6.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/SET/SET419-6.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/SET/SET419-6.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/SET/SET419-6.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/SET/SET419-6.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/SET/SET419-6.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/SET/SET419-6.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/SET/SET419-6.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/SET/SET419-6.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/SET/SET419-6.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/SET/SET419-6.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/SET/SET419-6.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/SET/SET419-6.p',range)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/SET/SET419-6.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/SET/SET419-6.p',cartesian_product3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/SET/SET419-6.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/SET/SET419-6.p',flip2)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/SET/SET419-6.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/SET/SET419-6.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/SET/SET419-6.p',flip3)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/SET/SET419-6.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/SET/SET419-6.p',image)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/SET/SET419-6.p',cartesian_product2)).
cnf(union, axiom, (complement(intersection(complement(X),complement(Y))) = union(X,Y)), file('Problems/SET/SET419-6.p',union)).
cnf(compose2, axiom, (~ member(ordered_pair(Y,Z),compose(Yr,Xr)) | member(Z,image(Yr,image(Xr,singleton(Y))))), file('Problems/SET/SET419-6.p',compose2)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/SET/SET419-6.p',compose3)).
cnf(subset_relation, axiom, (intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))) = subset_relation), file('Problems/SET/SET419-6.p',subset_relation)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/SET/SET419-6.p',element_relation3)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/SET/SET419-6.p',element_relation2)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/SET/SET419-6.p',not_subclass_members2)).
cnf(identity_relation, axiom, (intersection(inverse(subset_relation),subset_relation) = identity_relation), file('Problems/SET/SET419-6.p',identity_relation)).
cnf(compose1, axiom, (subclass(compose(Yr,Xr),cross_product(universal_class,universal_class))), file('Problems/SET/SET419-6.p',compose1)).
cnf(function3, axiom, (~ subclass(Xf,cross_product(universal_class,universal_class)) | ~ subclass(compose(Xf,inverse(Xf)),identity_relation) | function(Xf)), file('Problems/SET/SET419-6.p',function3)).
cnf(replacement, axiom, (~ function(Xf) | ~ member(X,universal_class) | member(image(Xf,X),universal_class)), file('Problems/SET/SET419-6.p',replacement)).
cnf(power_class_definition, axiom, (complement(image(element_relation,complement(X))) = power_class(X)), file('Problems/SET/SET419-6.p',power_class_definition)).
cnf(sum_class_definition, axiom, (domain_of(restrict(element_relation,universal_class,X)) = sum_class(X)), file('Problems/SET/SET419-6.p',sum_class_definition)).
cnf(unordered_pair3, axiom, (~ member(Y,universal_class) | member(Y,unordered_pair(X,Y))), file('Problems/SET/SET419-6.p',unordered_pair3)).
cnf(sum_class2, axiom, (~ member(X,universal_class) | member(sum_class(X),universal_class)), file('Problems/SET/SET419-6.p',sum_class2)).
cnf(power_class2, axiom, (~ member(U,universal_class) | member(power_class(U),universal_class)), file('Problems/SET/SET419-6.p',power_class2)).
cnf(function2, axiom, (~ function(Xf) | subclass(compose(Xf,inverse(Xf)),identity_relation)), file('Problems/SET/SET419-6.p',function2)).
cnf(single_valued_class2, axiom, (~ subclass(compose(X,inverse(X)),identity_relation) | single_valued_class(X)), file('Problems/SET/SET419-6.p',single_valued_class2)).
cnf(single_valued_class1, axiom, (~ single_valued_class(X) | subclass(compose(X,inverse(X)),identity_relation)), file('Problems/SET/SET419-6.p',single_valued_class1)).
cnf(apply, axiom, (sum_class(image(Xf,singleton(Y))) = apply(Xf,Y)), file('Problems/SET/SET419-6.p',apply)).
cnf(definition_of_composition_function2, axiom, (~ member(ordered_pair(X,ordered_pair(Y,Z)),composition_function) | compose(X,Y) = Z), file('Problems/SET/SET419-6.p',definition_of_composition_function2)).
cnf(definition_of_composition_function1, axiom, (subclass(composition_function,cross_product(universal_class,cross_product(universal_class,universal_class)))), file('Problems/SET/SET419-6.p',definition_of_composition_function1)).
cnf(definition_of_composition_function3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | member(ordered_pair(X,ordered_pair(Y,compose(X,Y))),composition_function)), file('Problems/SET/SET419-6.p',definition_of_composition_function3)).
cnf(prove_composition_property3_1, negated_conjecture, (member(ordered_pair(x,y),cross_product(universal_class,universal_class))), file('Problems/SET/SET419-6.p',prove_composition_property3_1)).
cnf(prove_composition_property3_2, negated_conjecture, (apply(image(composition_function,singleton(x)),y) != compose(x,y)), file('Problems/SET/SET419-6.p',prove_composition_property3_2)).
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
cnf(i1, plain, (~ member(ordered_pair(U,W),inverse(X)) | member(ordered_pair(W,U),X)), inference(lemma,[status(thm)],[inverse,d1,flip2,cartesian_product1])).
cnf(opv, plain, (member(ordered_pair(U,W),universal_class)), inference(lemma,[status(thm)],[unordered_pairs_in_universal,ordered_pair])).
cnf(i2a, plain, (~ member(U,universal_class) | ~ member(ordered_pair(W,U),X) | member(ordered_pair(ordered_pair(W,U),U),cross_product(X,universal_class))), inference(lemma,[status(thm)],[cartesian_product3])).
cnf(i2b, plain, (~ member(U,universal_class) | ~ member(W,universal_class) | member(ordered_pair(ordered_pair(U,W),U),cross_product(cross_product(universal_class,universal_class),universal_class))), inference(lemma,[status(thm)],[cartesian_product3])).
cnf(i2c, plain, (~ member(U,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(W,U),X) | member(ordered_pair(ordered_pair(U,W),U),flip(cross_product(X,universal_class)))), inference(lemma,[status(thm)],[flip3,i2a,i2b])).
cnf(i2, plain, (~ member(U,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(W,U),X) | member(ordered_pair(U,W),inverse(X))), inference(lemma,[status(thm)],[i2c,d2,inverse,opv])).
cnf(r1, plain, (~ member(Z,range_of(X)) | member(ordered_pair(range(inverse(X),Z,universal_class),Z),X)), inference(lemma,[status(thm)],[range_of,d1,i1])).
cnf(r2, plain, (~ member(Z,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(W,Z),X) | member(Z,range_of(X))), inference(lemma,[status(thm)],[range_of,d2,i2])).
cnf(im1, plain, (~ member(Z,image(X,A)) | member(ordered_pair(range(inverse(restrict(X,A,universal_class)),Z,universal_class),Z),restrict(X,A,universal_class))), inference(lemma,[status(thm)],[image,r1])).
cnf(im2, plain, (~ member(Z,universal_class) | ~ member(W,A) | ~ member(ordered_pair(W,Z),X) | member(Z,image(X,A))), inference(lemma,[status(thm)],[image,r2,rsi,cartesian_product3,mv])).
cnf(d1s, plain, (~ member(Z,domain_of(X)) | member(range(X,Z,universal_class),universal_class)), inference(lemma,[status(thm)],[d1a,rsc,csg,cartesian_product2,range])).
cnf(r1s, plain, (~ member(Z,range_of(X)) | member(range(inverse(X),Z,universal_class),universal_class)), inference(lemma,[status(thm)],[range_of,d1s])).
cnf(un1, plain, (~ member(Z,union(X,Y)) | member(Z,X) | member(Z,Y)), inference(lemma,[status(thm)],[union,complement1,complement2,intersection3,mv])).
cnf(un2, plain, (~ member(Z,X) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection1,mv])).
cnf(un3, plain, (~ member(Z,Y) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection2,mv])).
cnf(cpw, plain, (~ member(Z,cross_product(A,B)) | ordered_pair(first(Z),second(Z)) = Z), inference(lemma,[status(thm)],[cartesian_product4])).
cnf(cpf, plain, (~ member(Z,cross_product(A,B)) | member(first(Z),A)), inference(lemma,[status(thm)],[cartesian_product4,cartesian_product1])).
cnf(cps, plain, (~ member(Z,cross_product(A,B)) | member(second(Z),B)), inference(lemma,[status(thm)],[cartesian_product4,cartesian_product2])).
cnf(is1, plain, (~ member(W,image(B,singleton(Y))) | member(ordered_pair(Y,W),B)), inference(lemma,[status(thm)],[im1,rsx,rsc,cartesian_product1,sg1])).
cnf(is2, plain, (~ member(Y,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(Y,W),B) | member(W,image(B,singleton(Y)))), inference(lemma,[status(thm)],[im2,sg2])).
cnf(co1a, plain, (~ member(ordered_pair(Y,Z),compose(A,B)) | member(ordered_pair(range(inverse(restrict(A,image(B,singleton(Y)),universal_class)),Z,universal_class),Z),A)), inference(lemma,[status(thm)],[compose2,im1,rsx])).
cnf(co1b, plain, (~ member(ordered_pair(Y,Z),compose(A,B)) | member(ordered_pair(Y,range(inverse(restrict(A,image(B,singleton(Y)),universal_class)),Z,universal_class)),B)), inference(lemma,[status(thm)],[compose2,im1,rsc,cartesian_product1,is1])).
cnf(co2a, plain, (~ member(Y,universal_class) | ~ member(W,universal_class) | ~ member(Z,universal_class) | ~ member(ordered_pair(Y,W),B) | ~ member(ordered_pair(W,Z),A) | member(Z,image(A,image(B,singleton(Y))))), inference(lemma,[status(thm)],[is2,im2])).
cnf(co2, plain, (~ member(Y,universal_class) | ~ member(W,universal_class) | ~ member(Z,universal_class) | ~ member(ordered_pair(Y,W),B) | ~ member(ordered_pair(W,Z),A) | member(ordered_pair(Y,Z),compose(A,B))), inference(lemma,[status(thm)],[co2a,compose3,cartesian_product3])).
cnf(pvv1, plain, (~ member(ordered_pair(U,W),cross_product(A,B)) | member(U,universal_class)), inference(lemma,[status(thm)],[cartesian_product1,mv])).
cnf(pvv2, plain, (~ member(ordered_pair(U,W),cross_product(A,B)) | member(W,universal_class)), inference(lemma,[status(thm)],[cartesian_product2,mv])).
cnf(sr0, plain, (~ member(ordered_pair(U,W),subset_relation) | ~ member(ordered_pair(U,W),compose(complement(element_relation),inverse(element_relation)))), inference(lemma,[status(thm)],[subset_relation,intersection2,complement1])).
cnf(sr0c, plain, (~ member(ordered_pair(U,W),subset_relation) | member(ordered_pair(U,W),cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[subset_relation,intersection1])).
cnf(ein, plain, (~ member(Z,U) | ~ member(U,universal_class) | member(ordered_pair(U,Z),inverse(element_relation))), inference(lemma,[status(thm)],[mv,cartesian_product3,element_relation3,i2])).
cnf(enot, plain, (member(Z,W) | ~ member(Z,universal_class) | ~ member(W,universal_class) | member(ordered_pair(Z,W),complement(element_relation))), inference(lemma,[status(thm)],[element_relation2,complement2,opv])).
cnf(sr1, plain, (~ member(ordered_pair(U,W),subset_relation) | ~ member(Z,U) | member(Z,W)), inference(lemma,[status(thm)],[sr0,sr0c,pvv1,pvv2,ein,enot,mv,co2])).
cnf(sr2, plain, (~ member(ordered_pair(U,W),subset_relation) | subclass(U,W)), inference(lemma,[status(thm)],[sr1,not_subclass_members1,not_subclass_members2])).
cnf(id0, plain, (~ member(ordered_pair(U,W),identity_relation) | member(ordered_pair(U,W),subset_relation)), inference(lemma,[status(thm)],[identity_relation,intersection2])).
cnf(id0i, plain, (~ member(ordered_pair(U,W),identity_relation) | member(ordered_pair(W,U),subset_relation)), inference(lemma,[status(thm)],[identity_relation,intersection1,i1])).
cnf(id1, plain, (~ member(ordered_pair(U,W),identity_relation) | U = W), inference(lemma,[status(thm)],[id0,id0i,sr2,subclass_implies_equal])).
cnf(nco, plain, (~ member(ordered_pair(U,U),compose(complement(element_relation),inverse(element_relation)))), inference(lemma,[status(thm)],[co1a,co1b,i1,element_relation2,complement1])).
cnf(id2a, plain, (~ member(U,universal_class) | member(ordered_pair(U,U),subset_relation)), inference(lemma,[status(thm)],[nco,cartesian_product3,complement2,opv,subset_relation,intersection3])).
cnf(id2, plain, (~ member(U,universal_class) | member(ordered_pair(U,U),identity_relation)), inference(lemma,[status(thm)],[id2a,i2,identity_relation,intersection3])).
cnf(idc, plain, (~ member(Z,identity_relation) | member(Z,cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[identity_relation,intersection2,subset_relation,intersection1])).
cnf(co1s, plain, (~ member(ordered_pair(Y,Z),compose(A,B)) | member(range(inverse(restrict(A,image(B,singleton(Y)),universal_class)),Z,universal_class),universal_class)), inference(lemma,[status(thm)],[compose2,image,r1s])).
cnf(im1a, plain, (~ member(Z,image(X,A)) | member(range(inverse(restrict(X,A,universal_class)),Z,universal_class),A)), inference(lemma,[status(thm)],[im1,rsc,cartesian_product1])).
cnf(im1x, plain, (~ member(Z,image(X,A)) | member(ordered_pair(range(inverse(restrict(X,A,universal_class)),Z,universal_class),Z),X)), inference(lemma,[status(thm)],[im1,rsx])).
cnf(cmc, plain, (~ member(W,compose(A,B)) | member(W,cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[compose1,subclass_members])).
cnf(fr1, plain, (subclass(restrict(identity_relation,X,universal_class),cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[rsx,idc,not_subclass_members1,not_subclass_members2])).
cnf(fr2p, plain, (~ member(ordered_pair(A,C),compose(restrict(identity_relation,X,universal_class),inverse(restrict(identity_relation,X,universal_class)))) | A = C), inference(lemma,[status(thm)],[co1a,co1b,i1,rsx,id1])).
cnf(fr2q, plain, (~ member(ordered_pair(A,C),compose(restrict(identity_relation,X,universal_class),inverse(restrict(identity_relation,X,universal_class)))) | member(ordered_pair(A,C),identity_relation)), inference(lemma,[status(thm)],[fr2p,cmc,pvv1,id2])).
cnf(fr2, plain, (subclass(compose(restrict(identity_relation,X,universal_class),inverse(restrict(identity_relation,X,universal_class))),identity_relation)), inference(lemma,[status(thm)],[fr2q,cmc,cpw,not_subclass_members1,not_subclass_members2])).
cnf(fr, plain, (function(restrict(identity_relation,X,universal_class))), inference(lemma,[status(thm)],[fr1,fr2,function3])).
cnf(ir1, plain, (~ member(Z,image(restrict(identity_relation,X,universal_class),Y)) | member(Z,X)), inference(lemma,[status(thm)],[im1x,rsx,rsc,id1,cartesian_product1])).
cnf(ir2, plain, (~ member(Z,X) | ~ member(Z,Y) | member(Z,image(restrict(identity_relation,X,universal_class),Y))), inference(lemma,[status(thm)],[mv,id2,cartesian_product3,rsi,im2])).
cnf(ir3, plain, (~ subclass(X,Y) | image(restrict(identity_relation,X,universal_class),Y) = X), inference(lemma,[status(thm)],[ir1,ir2,subclass_members,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(sep, plain, (~ subclass(X,Y) | ~ member(Y,universal_class) | member(X,universal_class)), inference(lemma,[status(thm)],[ir3,fr,replacement])).
cnf(pw, plain, (~ member(Z,universal_class) | ~ subclass(Z,X) | member(Z,power_class(X))), inference(lemma,[status(thm)],[power_class_definition,complement1,complement2,im1x,im1a,element_relation2,subclass_members])).
cnf(sm1, plain, (~ member(W,Z) | ~ member(Z,X) | member(W,sum_class(X))), inference(lemma,[status(thm)],[mv,cartesian_product3,element_relation3,rsi,d2,sum_class_definition])).
cnf(ub1, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | subclass(union(A,B),sum_class(unordered_pair(A,B)))), inference(lemma,[status(thm)],[un1,sm1,unordered_pair2,unordered_pair3,not_subclass_members1,not_subclass_members2])).
cnf(ub, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | member(union(A,B),universal_class)), inference(lemma,[status(thm)],[ub1,sum_class2,unordered_pairs_in_universal,sep])).
cnf(op1, plain, (~ member(W,ordered_pair(U,V)) | W = singleton(U) | W = unordered_pair(U,singleton(V))), inference(lemma,[status(thm)],[ordered_pair,unordered_pair_member])).
cnf(sgs, plain, (~ member(U,A) | subclass(singleton(U),union(A,B))), inference(lemma,[status(thm)],[sg1,un2,not_subclass_members1,not_subclass_members2])).
cnf(sgb, plain, (~ member(V,B) | subclass(singleton(V),B)), inference(lemma,[status(thm)],[sg1,not_subclass_members1,not_subclass_members2])).
cnf(sgp, plain, (~ member(V,B) | member(singleton(V),power_class(B))), inference(lemma,[status(thm)],[sgb,pw,unordered_pairs_in_universal,singleton_set])).
cnf(ups, plain, (~ member(U,A) | ~ member(V,B) | subclass(unordered_pair(U,singleton(V)),union(A,power_class(B)))), inference(lemma,[status(thm)],[unordered_pair_member,un2,un3,sgp,not_subclass_members1,not_subclass_members2])).
cnf(opp0, plain, (~ member(U,A) | ~ member(V,B) | ~ member(W,ordered_pair(U,V)) | member(W,power_class(union(A,power_class(B))))), inference(lemma,[status(thm)],[op1,sgs,ups,pw,unordered_pairs_in_universal,singleton_set])).
cnf(opp, plain, (~ member(U,A) | ~ member(V,B) | member(ordered_pair(U,V),power_class(power_class(union(A,power_class(B)))))), inference(lemma,[status(thm)],[opp0,pw,opv,not_subclass_members1,not_subclass_members2])).
cnf(cxp, plain, (subclass(cross_product(A,B),power_class(power_class(union(A,power_class(B)))))), inference(lemma,[status(thm)],[cpw,cpf,cps,opp,not_subclass_members1,not_subclass_members2])).
cnf(cxs, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | member(cross_product(A,B),universal_class)), inference(lemma,[status(thm)],[cxp,power_class2,ub,sep])).
cnf(sm3, plain, (~ member(X,sum_class(Y)) | member(ordered_pair(X,range(restrict(element_relation,universal_class,Y),X,universal_class)),restrict(element_relation,universal_class,Y))), inference(lemma,[status(thm)],[sum_class_definition,d1])).
cnf(sm4, plain, (~ member(X,sum_class(Y)) | member(X,range(restrict(element_relation,universal_class,Y),X,universal_class))), inference(lemma,[status(thm)],[sm3,rsx,element_relation2])).
cnf(sm5, plain, (~ member(X,sum_class(Y)) | member(range(restrict(element_relation,universal_class,Y),X,universal_class),Y)), inference(lemma,[status(thm)],[sm3,rsc,cartesian_product2])).
cnf(opm1, plain, (~ member(Z,universal_class) | member(singleton(Z),ordered_pair(Z,W))), inference(lemma,[status(thm)],[ordered_pair,unordered_pair2,unordered_pairs_in_universal,singleton_set])).
cnf(opm2, plain, (member(unordered_pair(Z,singleton(W)),ordered_pair(Z,W))), inference(lemma,[status(thm)],[ordered_pair,unordered_pair3,unordered_pairs_in_universal])).
cnf(dss1, plain, (~ member(Z,domain_of(X)) | member(Z,sum_class(sum_class(X)))), inference(lemma,[status(thm)],[d1,mv,opm1,sm1,sg2])).
cnf(dss, plain, (subclass(domain_of(X),sum_class(sum_class(X)))), inference(lemma,[status(thm)],[dss1,not_subclass_members1,not_subclass_members2])).
cnf(rss1, plain, (~ member(Z,range_of(X)) | member(unordered_pair(range(inverse(X),Z,universal_class),singleton(Z)),sum_class(X))), inference(lemma,[status(thm)],[r1,opm2,sm1])).
cnf(rss1b, plain, (~ member(Z,range_of(X)) | member(singleton(Z),sum_class(sum_class(X)))), inference(lemma,[status(thm)],[rss1,unordered_pair3,unordered_pairs_in_universal,singleton_set,sm1])).
cnf(rss2, plain, (~ member(Z,range_of(X)) | member(Z,sum_class(sum_class(sum_class(X))))), inference(lemma,[status(thm)],[rss1b,mv,sg2,sm1])).
cnf(rsss, plain, (subclass(range_of(X),sum_class(sum_class(sum_class(X))))), inference(lemma,[status(thm)],[rss2,not_subclass_members1,not_subclass_members2])).
cnf(dset, plain, (~ member(X,universal_class) | member(domain_of(X),universal_class)), inference(lemma,[status(thm)],[dss,sum_class2,sep])).
cnf(rset, plain, (~ member(X,universal_class) | member(range_of(X),universal_class)), inference(lemma,[status(thm)],[rsss,sum_class2,sep])).
cnf(fsv, plain, (~ function(X) | single_valued_class(X)), inference(lemma,[status(thm)],[function2,single_valued_class2])).
cnf(svp, plain, (~ single_valued_class(X) | ~ member(ordered_pair(S,P),X) | ~ member(ordered_pair(S,Q),X) | ~ member(S,universal_class) | ~ member(P,universal_class) | ~ member(Q,universal_class) | P = Q), inference(lemma,[status(thm)],[single_valued_class1,i2,co2,subclass_members,id1])).
cnf(isg1, plain, (~ single_valued_class(Z) | ~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | ~ member(W,image(Z,singleton(X))) | member(W,singleton(Y))), inference(lemma,[status(thm)],[is1,mv,svp,sg2])).
cnf(isg2, plain, (~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | ~ member(W,singleton(Y)) | member(W,image(Z,singleton(X)))), inference(lemma,[status(thm)],[sg1,is2])).
cnf(isg, plain, (~ single_valued_class(Z) | ~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | image(Z,singleton(X)) = singleton(Y)), inference(lemma,[status(thm)],[isg1,isg2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(ssg1, plain, (~ member(W,sum_class(singleton(Y))) | member(W,Y)), inference(lemma,[status(thm)],[sm4,sm5,sg1])).
cnf(ssg2, plain, (~ member(Y,universal_class) | ~ member(W,Y) | member(W,sum_class(singleton(Y)))), inference(lemma,[status(thm)],[sg2,sm1])).
cnf(ssg, plain, (~ member(Y,universal_class) | sum_class(singleton(Y)) = Y), inference(lemma,[status(thm)],[ssg1,ssg2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(ap, plain, (~ single_valued_class(Z) | ~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | apply(Z,X) = Y), inference(lemma,[status(thm)],[isg,ssg,apply])).
cnf(cf1, plain, (~ member(ordered_pair(Y,Z),image(composition_function,singleton(X))) | compose(X,Y) = Z), inference(lemma,[status(thm)],[is1,definition_of_composition_function2])).
cnf(cf2, plain, (~ member(W,image(composition_function,singleton(X))) | member(W,cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[im1x,definition_of_composition_function1,subclass_members,cartesian_product2])).
cnf(cf3, plain, (~ member(ordered_pair(P,Q),compose(image(composition_function,singleton(X)),inverse(image(composition_function,singleton(X))))) | member(ordered_pair(P,Q),identity_relation)), inference(lemma,[status(thm)],[co1a,co1b,i1,cf1,cmc,pvv1,id2])).
cnf(cfsv, plain, (subclass(compose(image(composition_function,singleton(X)),inverse(image(composition_function,singleton(X)))),identity_relation)), inference(lemma,[status(thm)],[cf3,cmc,cpw,not_subclass_members1,not_subclass_members2])).
cnf(cfvv, plain, (subclass(image(composition_function,singleton(X)),cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[cf2,not_subclass_members1,not_subclass_members2])).
cnf(cff, plain, (function(image(composition_function,singleton(X)))), inference(lemma,[status(thm)],[cfsv,cfvv,function3])).
cnf(csub1, plain, (~ member(ordered_pair(U,W),compose(A,B)) | member(ordered_pair(U,W),cross_product(domain_of(B),range_of(A)))), inference(lemma,[status(thm)],[co1a,co1b,co1s,cmc,pvv1,pvv2,d2,r2,cartesian_product3])).
cnf(csub, plain, (subclass(compose(A,B),cross_product(domain_of(B),range_of(A)))), inference(lemma,[status(thm)],[csub1,cmc,cpw,not_subclass_members1,not_subclass_members2])).
cnf(cset, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | member(compose(A,B),universal_class)), inference(lemma,[status(thm)],[csub,dset,rset,cxs,sep])).
cnf(cf4, plain, (~ member(X,universal_class) | ~ member(Y,universal_class) | member(ordered_pair(Y,compose(X,Y)),image(composition_function,singleton(X)))), inference(lemma,[status(thm)],[cartesian_product3,definition_of_composition_function3,opv,sg2,is2])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[cf4,cset,pvv1,pvv2,cff,fsv,ap,prove_composition_property3_1,prove_composition_property3_2])).
% SZS output end CNFRefutation for SET419-6
%------------------------------------------------------------------------------
