%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM253-2 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for NUM253-2
% SZS output start CNFRefutation for NUM253-2
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM253-2.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM253-2.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM253-2.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM253-2.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM253-2.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM253-2.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM253-2.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM253-2.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM253-2.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM253-2.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM253-2.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM253-2.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/NUM/NUM253-2.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM253-2.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM253-2.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/NUM/NUM253-2.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM253-2.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM253-2.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/NUM/NUM253-2.p',range)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM253-2.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM253-2.p',cartesian_product3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/NUM/NUM253-2.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/NUM/NUM253-2.p',flip2)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/NUM/NUM253-2.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM253-2.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/NUM/NUM253-2.p',flip3)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/NUM/NUM253-2.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/NUM/NUM253-2.p',image)).
cnf(union, axiom, (complement(intersection(complement(X),complement(Y))) = union(X,Y)), file('Problems/NUM/NUM253-2.p',union)).
cnf(compose2, axiom, (~ member(ordered_pair(Y,Z),compose(Yr,Xr)) | member(Z,image(Yr,image(Xr,singleton(Y))))), file('Problems/NUM/NUM253-2.p',compose2)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/NUM/NUM253-2.p',compose3)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM253-2.p',cartesian_product2)).
cnf(subset_relation, axiom, (intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))) = subset_relation), file('Problems/NUM/NUM253-2.p',subset_relation)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/NUM/NUM253-2.p',element_relation3)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/NUM/NUM253-2.p',element_relation2)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM253-2.p',not_subclass_members2)).
cnf(identity_relation, axiom, (intersection(inverse(subset_relation),subset_relation) = identity_relation), file('Problems/NUM/NUM253-2.p',identity_relation)).
cnf(compose1, axiom, (subclass(compose(Yr,Xr),cross_product(universal_class,universal_class))), file('Problems/NUM/NUM253-2.p',compose1)).
cnf(function3, axiom, (~ subclass(Xf,cross_product(universal_class,universal_class)) | ~ subclass(compose(Xf,inverse(Xf)),identity_relation) | function(Xf)), file('Problems/NUM/NUM253-2.p',function3)).
cnf(replacement, axiom, (~ function(Xf) | ~ member(X,universal_class) | member(image(Xf,X),universal_class)), file('Problems/NUM/NUM253-2.p',replacement)).
cnf(sum_class_definition, axiom, (domain_of(restrict(element_relation,universal_class,X)) = sum_class(X)), file('Problems/NUM/NUM253-2.p',sum_class_definition)).
cnf(sum_class2, axiom, (~ member(X,universal_class) | member(sum_class(X),universal_class)), file('Problems/NUM/NUM253-2.p',sum_class2)).
cnf(function2, axiom, (~ function(Xf) | subclass(compose(Xf,inverse(Xf)),identity_relation)), file('Problems/NUM/NUM253-2.p',function2)).
cnf(single_valued_class2, axiom, (~ subclass(compose(X,inverse(X)),identity_relation) | single_valued_class(X)), file('Problems/NUM/NUM253-2.p',single_valued_class2)).
cnf(single_valued_class1, axiom, (~ single_valued_class(X) | subclass(compose(X,inverse(X)),identity_relation)), file('Problems/NUM/NUM253-2.p',single_valued_class1)).
cnf(function1, axiom, (~ function(Xf) | subclass(Xf,cross_product(universal_class,universal_class))), file('Problems/NUM/NUM253-2.p',function1)).
cnf(well_ordering3, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | member(least(Xr,U),U)), file('Problems/NUM/NUM253-2.p',well_ordering3)).
cnf(well_ordering5, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | ~ member(ordered_pair(V,least(Xr,U)),Xr)), file('Problems/NUM/NUM253-2.p',well_ordering5)).
cnf(unordered_pair3, axiom, (~ member(Y,universal_class) | member(Y,unordered_pair(X,Y))), file('Problems/NUM/NUM253-2.p',unordered_pair3)).
cnf(ordinal_numbers1, axiom, (~ member(X,ordinal_numbers) | well_ordering(element_relation,X)), file('Problems/NUM/NUM253-2.p',ordinal_numbers1)).
cnf(prove_transfinite_recursion_property9_1, negated_conjecture, (member(x,recursion_equation_functions(z))), file('Problems/NUM/NUM253-2.p',prove_transfinite_recursion_property9_1)).
cnf(recursion_equation_functions1, axiom, (~ member(X,recursion_equation_functions(Z)) | function(Z)), file('Problems/NUM/NUM253-2.p',recursion_equation_functions1)).
cnf(apply, axiom, (sum_class(image(Xf,singleton(Y))) = apply(Xf,Y)), file('Problems/NUM/NUM253-2.p',apply)).
cnf(recursion_equation_functions3, axiom, (~ member(X,recursion_equation_functions(Z)) | member(domain_of(X),ordinal_numbers)), file('Problems/NUM/NUM253-2.p',recursion_equation_functions3)).
cnf(recursion_equation_functions2, axiom, (~ member(X,recursion_equation_functions(Z)) | function(X)), file('Problems/NUM/NUM253-2.p',recursion_equation_functions2)).
cnf(prove_transfinite_recursion_property9_2, negated_conjecture, (~ function(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))), file('Problems/NUM/NUM253-2.p',prove_transfinite_recursion_property9_2)).
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
cnf(un1, plain, (~ member(Z,union(X,Y)) | member(Z,X) | member(Z,Y)), inference(lemma,[status(thm)],[union,complement1,complement2,intersection3,mv])).
cnf(cpw, plain, (~ member(Z,cross_product(A,B)) | ordered_pair(first(Z),second(Z)) = Z), inference(lemma,[status(thm)],[cartesian_product4])).
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
cnf(sm1, plain, (~ member(W,Z) | ~ member(Z,X) | member(W,sum_class(X))), inference(lemma,[status(thm)],[mv,cartesian_product3,element_relation3,rsi,d2,sum_class_definition])).
cnf(op1, plain, (~ member(W,ordered_pair(U,V)) | W = singleton(U) | W = unordered_pair(U,singleton(V))), inference(lemma,[status(thm)],[ordered_pair,unordered_pair_member])).
cnf(opm1, plain, (~ member(Z,universal_class) | member(singleton(Z),ordered_pair(Z,W))), inference(lemma,[status(thm)],[ordered_pair,unordered_pair2,unordered_pairs_in_universal,singleton_set])).
cnf(dss1, plain, (~ member(Z,domain_of(X)) | member(Z,sum_class(sum_class(X)))), inference(lemma,[status(thm)],[d1,mv,opm1,sm1,sg2])).
cnf(dss, plain, (subclass(domain_of(X),sum_class(sum_class(X)))), inference(lemma,[status(thm)],[dss1,not_subclass_members1,not_subclass_members2])).
cnf(dset, plain, (~ member(X,universal_class) | member(domain_of(X),universal_class)), inference(lemma,[status(thm)],[dss,sum_class2,sep])).
cnf(fsv, plain, (~ function(X) | single_valued_class(X)), inference(lemma,[status(thm)],[function2,single_valued_class2])).
cnf(svp, plain, (~ single_valued_class(X) | ~ member(ordered_pair(S,P),X) | ~ member(ordered_pair(S,Q),X) | ~ member(S,universal_class) | ~ member(P,universal_class) | ~ member(Q,universal_class) | P = Q), inference(lemma,[status(thm)],[single_valued_class1,i2,co2,subclass_members,id1])).
cnf(fvp, plain, (~ function(F) | ~ member(ordered_pair(T,P),F) | ~ member(ordered_pair(T,Q),F) | P = Q), inference(lemma,[status(thm)],[fsv,svp,function1,subclass_members,pvv1,pvv2])).
cnf(wa1, plain, (~ member(A,Y) | ~ member(B,Y) | subclass(unordered_pair(A,B),Y)), inference(lemma,[status(thm)],[unordered_pair_member,not_subclass_members1,not_subclass_members2])).
cnf(wa2, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | member(least(X,unordered_pair(A,B)),unordered_pair(A,B))), inference(lemma,[status(thm)],[wa1,well_ordering3,unordered_pair2,mv])).
cnf(wa3, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | least(X,unordered_pair(A,B)) = A | least(X,unordered_pair(A,B)) = B), inference(lemma,[status(thm)],[wa2,unordered_pair_member])).
cnf(wa, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | ~ member(ordered_pair(A,B),X) | ~ member(ordered_pair(B,A),X)), inference(lemma,[status(thm)],[wa1,wa3,well_ordering5,unordered_pair2,unordered_pair3,mv])).
cnf(os_sgN, plain, (member(X,universal_class) | singleton(X) = null_class), inference(lemma,[status(thm)],[nsn,sg1,mv])).
cnf(tr_irr, plain, (~ member(X,ordinal_numbers) | ~ member(A,X) | ~ member(A,A)), inference(lemma,[status(thm)],[ordinal_numbers1,wa,mv,cartesian_product3,element_relation3])).
cnf(t_j1, plain, (~ member(A,universal_class) | member(singleton(A),ordered_pair(A,B))), inference(lemma,[status(thm)],[opm1])).
cnf(t_j2, plain, (~ member(A,universal_class) | ordered_pair(A,B) != ordered_pair(X,Y) | singleton(A) = singleton(X) | singleton(A) = unordered_pair(X,singleton(Y))), inference(lemma,[status(thm)],[op1,t_j1])).
cnf(t_j3, plain, (~ member(A,universal_class) | ~ member(X,universal_class) | singleton(A) != singleton(X) | A = X), inference(lemma,[status(thm)],[sg1,sg2])).
cnf(t_j4, plain, (~ member(A,universal_class) | ~ member(X,universal_class) | singleton(A) != unordered_pair(X,singleton(Y)) | A = X), inference(lemma,[status(thm)],[sg1,singleton_set,unordered_pair2])).
cnf(t_inj1, plain, (~ member(A,universal_class) | ~ member(X,universal_class) | ordered_pair(A,B) != ordered_pair(X,Y) | A = X), inference(lemma,[status(thm)],[t_j2,t_j3,t_j4])).
cnf(t_inj2, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | ordered_pair(A,B) != ordered_pair(X,Y) | B = Y), inference(lemma,[status(thm)],[nl,ordered_pair,os_sgN,sg1,singleton_set,unordered_pair2,unordered_pair3,unordered_pair_member,unordered_pairs_in_universal])).
cnf(t_x1, plain, (member(x,universal_class)), inference(lemma,[status(thm)],[mv,prove_transfinite_recursion_property9_1])).
cnf(t_x2, plain, (member(domain_of(x),universal_class)), inference(lemma,[status(thm)],[dset,t_x1])).
cnf(t_x3, plain, (member(image(z,singleton(x)),universal_class)), inference(lemma,[status(thm)],[prove_transfinite_recursion_property9_1,recursion_equation_functions1,replacement,singleton_set,unordered_pairs_in_universal])).
cnf(t_x4, plain, (member(apply(z,x),universal_class)), inference(lemma,[status(thm)],[apply,sum_class2,t_x3])).
cnf(t_x5, plain, (member(domain_of(x),ordinal_numbers)), inference(lemma,[status(thm)],[prove_transfinite_recursion_property9_1,recursion_equation_functions3])).
cnf(t_x6, plain, (~ member(domain_of(x),domain_of(x))), inference(lemma,[status(thm)],[t_x5,tr_irr])).
cnf(t_x7, plain, (~ member(W,union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)) | W = ordered_pair(domain_of(x),apply(z,x)) | member(W,x)), inference(lemma,[status(thm)],[sg1,un1])).
cnf(t_x8, plain, (~ member(ordered_pair(P,Q),x) | member(P,domain_of(x))), inference(lemma,[status(thm)],[d2,function1,prove_transfinite_recursion_property9_1,pvv1,pvv2,recursion_equation_functions2,subclass_members])).
cnf(t_v1, plain, (subclass(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[cartesian_product3,function1,not_subclass_members1,not_subclass_members2,prove_transfinite_recursion_property9_1,recursion_equation_functions2,subclass_members,t_x2,t_x4,t_x7])).
cnf(t_v3, plain, (~ member(ordered_pair(P,Q),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)) | ordered_pair(P,Q) = ordered_pair(domain_of(x),apply(z,x)) | member(ordered_pair(P,Q),x)), inference(lemma,[status(thm)],[t_x7])).
cnf(t_v4, plain, (~ member(P,universal_class) | ordered_pair(P,Q) != ordered_pair(domain_of(x),apply(z,x)) | P = domain_of(x)), inference(lemma,[status(thm)],[t_inj1,t_x2])).
cnf(t_v5, plain, (~ member(Q,universal_class) | ~ member(P,universal_class) | ordered_pair(P,Q) != ordered_pair(domain_of(x),apply(z,x)) | Q = apply(z,x)), inference(lemma,[status(thm)],[t_inj2])).
cnf(t_v6, plain, (~ member(ordered_pair(P,Q),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)) | ~ member(ordered_pair(P,R),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)) | Q = R), inference(lemma,[status(thm)],[fvp,prove_transfinite_recursion_property9_1,pvv1,pvv2,recursion_equation_functions2,subclass_members,t_v1,t_v3,t_v4,t_v5,t_x6,t_x8])).
cnf(t_ffb1, plain, (member(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation),compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[not_subclass_members1])).
cnf(t_ffb2, plain, (ordered_pair(first(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)),second(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation))) = not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation) | subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[cartesian_product4,compose1,subclass_members,t_ffb1])).
cnf(t_ffb3, plain, (member(ordered_pair(first(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)),second(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation))),compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[t_ffb1,t_ffb2])).
cnf(t_ffb4, plain, (member(ordered_pair(range(inverse(restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),image(inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)),singleton(first(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)))),universal_class)),second(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)),universal_class),second(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation))),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)) | subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[co1a,t_ffb3])).
cnf(t_ffb5, plain, (member(ordered_pair(first(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)),range(inverse(restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),image(inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)),singleton(first(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)))),universal_class)),second(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)),universal_class)),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))) | subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[co1b,t_ffb3])).
cnf(t_ffb6, plain, (member(ordered_pair(range(inverse(restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),image(inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)),singleton(first(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)))),universal_class)),second(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)),universal_class),first(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation))),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)) | subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[i1,t_ffb5])).
cnf(t_ffb11, plain, (first(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)) = second(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)) | subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[t_ffb4,t_ffb6,t_v6])).
cnf(t_ffb12, plain, (member(first(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)),universal_class) | subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[pvv2,subclass_members,t_ffb6,t_v1])).
cnf(t_ffb13, plain, (member(not_subclass_element(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation),identity_relation) | subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[id2,t_ffb11,t_ffb12,t_ffb2])).
cnf(t_ffpb, plain, (subclass(compose(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),inverse(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),identity_relation)), inference(lemma,[status(thm)],[not_subclass_members2,t_ffb13])).
cnf(t_fffn, plain, (function(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))), inference(lemma,[status(thm)],[function3,prove_transfinite_recursion_property9_2,t_ffpb,t_v1])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[prove_transfinite_recursion_property9_2,t_fffn])).
% SZS output end CNFRefutation for NUM253-2
%------------------------------------------------------------------------------
