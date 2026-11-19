%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM256-1, with Axioms/NUM004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the problem with the fixed axioms
% Comments : hand lemma chain (attempts/num004_fixed/hand/NUM256-1.goals in the project); cites rest_of4 (fixed form), if at all, only where the restriction is a set
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for NUM256-1
% SZS output start CNFRefutation for NUM256-1
%------------------------------------------------------------------------------
% TSTP export of attempts/num004_fixed/hand/gdv/TPTP-fixed/NUM256-1/proof1.p
% Problem: Problems/NUM/NUM256-1.p
%------------------------------------------------------------------------------
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM256-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM256-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM256-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM256-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM256-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM256-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM256-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM256-1.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM256-1.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM256-1.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM256-1.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM256-1.p',restriction1)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM256-1.p',not_subclass_members2)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/NUM/NUM256-1.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM256-1.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM256-1.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/NUM/NUM256-1.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM256-1.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM256-1.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/NUM/NUM256-1.p',range)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM256-1.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM256-1.p',cartesian_product3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/NUM/NUM256-1.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/NUM/NUM256-1.p',flip2)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/NUM/NUM256-1.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM256-1.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/NUM/NUM256-1.p',flip3)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/NUM/NUM256-1.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/NUM/NUM256-1.p',image)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM256-1.p',cartesian_product2)).
cnf(union, axiom, (complement(intersection(complement(X),complement(Y))) = union(X,Y)), file('Problems/NUM/NUM256-1.p',union)).
cnf(compose2, axiom, (~ member(ordered_pair(Y,Z),compose(Yr,Xr)) | member(Z,image(Yr,image(Xr,singleton(Y))))), file('Problems/NUM/NUM256-1.p',compose2)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/NUM/NUM256-1.p',compose3)).
cnf(subset_relation, axiom, (intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))) = subset_relation), file('Problems/NUM/NUM256-1.p',subset_relation)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/NUM/NUM256-1.p',element_relation3)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/NUM/NUM256-1.p',element_relation2)).
cnf(identity_relation, axiom, (intersection(inverse(subset_relation),subset_relation) = identity_relation), file('Problems/NUM/NUM256-1.p',identity_relation)).
cnf(compose1, axiom, (subclass(compose(Yr,Xr),cross_product(universal_class,universal_class))), file('Problems/NUM/NUM256-1.p',compose1)).
cnf(function3, axiom, (~ subclass(Xf,cross_product(universal_class,universal_class)) | ~ subclass(compose(Xf,inverse(Xf)),identity_relation) | function(Xf)), file('Problems/NUM/NUM256-1.p',function3)).
cnf(replacement, axiom, (~ function(Xf) | ~ member(X,universal_class) | member(image(Xf,X),universal_class)), file('Problems/NUM/NUM256-1.p',replacement)).
cnf(sum_class_definition, axiom, (domain_of(restrict(element_relation,universal_class,X)) = sum_class(X)), file('Problems/NUM/NUM256-1.p',sum_class_definition)).
cnf(sum_class2, axiom, (~ member(X,universal_class) | member(sum_class(X),universal_class)), file('Problems/NUM/NUM256-1.p',sum_class2)).
cnf(function2, axiom, (~ function(Xf) | subclass(compose(Xf,inverse(Xf)),identity_relation)), file('Problems/NUM/NUM256-1.p',function2)).
cnf(single_valued_class2, axiom, (~ subclass(compose(X,inverse(X)),identity_relation) | single_valued_class(X)), file('Problems/NUM/NUM256-1.p',single_valued_class2)).
cnf(single_valued_class1, axiom, (~ single_valued_class(X) | subclass(compose(X,inverse(X)),identity_relation)), file('Problems/NUM/NUM256-1.p',single_valued_class1)).
cnf(apply, axiom, (sum_class(image(Xf,singleton(Y))) = apply(Xf,Y)), file('Problems/NUM/NUM256-1.p',apply)).
cnf(well_ordering3, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | member(least(Xr,U),U)), file('Problems/NUM/NUM256-1.p',well_ordering3)).
cnf(well_ordering5, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | ~ member(ordered_pair(V,least(Xr,U)),Xr)), file('Problems/NUM/NUM256-1.p',well_ordering5)).
cnf(unordered_pair3, axiom, (~ member(Y,universal_class) | member(Y,unordered_pair(X,Y))), file('Problems/NUM/NUM256-1.p',unordered_pair3)).
cnf(successor, axiom, (union(X,singleton(X)) = successor(X)), file('Problems/NUM/NUM256-1.p',successor)).
cnf(ordinal_numbers1, axiom, (~ member(X,ordinal_numbers) | well_ordering(element_relation,X)), file('Problems/NUM/NUM256-1.p',ordinal_numbers1)).
cnf(prove_transfinite_recursion_property12_2, negated_conjecture, (member(x,domain_of(z))), file('Problems/NUM/NUM256-1.p',prove_transfinite_recursion_property12_2)).
cnf(prove_transfinite_recursion_property12_1, negated_conjecture, (member(x,recursion_equation_functions(z))), file('Problems/NUM/NUM256-1.p',prove_transfinite_recursion_property12_1)).
cnf(recursion_equation_functions1, axiom, (~ member(X,recursion_equation_functions(Z)) | function(Z)), file('Problems/NUM/NUM256-1.p',recursion_equation_functions1)).
cnf(recursion_equation_functions3, axiom, (~ member(X,recursion_equation_functions(Z)) | member(domain_of(X),ordinal_numbers)), file('Problems/NUM/NUM256-1.p',recursion_equation_functions3)).
cnf(function1, axiom, (~ function(Xf) | subclass(Xf,cross_product(universal_class,universal_class))), file('Problems/NUM/NUM256-1.p',function1)).
cnf(recursion_equation_functions2, axiom, (~ member(X,recursion_equation_functions(Z)) | function(X)), file('Problems/NUM/NUM256-1.p',recursion_equation_functions2)).
cnf(rest_of4, axiom, (~ member(U,domain_of(X)) | restrict(X,U,universal_class) != V | ~ member(V,universal_class) | member(ordered_pair(U,V),rest_of(X))), file('Problems/NUM/NUM256-1.p',rest_of4)).
cnf(recursion_equation_functions4, axiom, (~ member(X,recursion_equation_functions(Z)) | compose(Z,rest_of(X)) = X), file('Problems/NUM/NUM256-1.p',recursion_equation_functions4)).
cnf(rest_of3, axiom, (~ member(ordered_pair(U,V),rest_of(X)) | restrict(X,U,universal_class) = V), file('Problems/NUM/NUM256-1.p',rest_of3)).
cnf(ordinal_numbers2, axiom, (~ member(X,ordinal_numbers) | subclass(sum_class(X),X)), file('Problems/NUM/NUM256-1.p',ordinal_numbers2)).
cnf(rest_of2, axiom, (~ member(ordered_pair(U,V),rest_of(X)) | member(U,domain_of(X))), file('Problems/NUM/NUM256-1.p',rest_of2)).
cnf(prove_transfinite_recursion_property12_3, negated_conjecture, (compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))) != union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)), file('Problems/NUM/NUM256-1.p',prove_transfinite_recursion_property12_3)).
cnf(nl, plain, (~ member(Z,null_class)), inference(lemma,[status(thm)],[regularity1,regularity2,intersection1,intersection2,intersection3,complement1,complement2,class_elements_are_sets,subclass_members])).
cnf(sn, plain, (~ subclass(X,null_class) | X = null_class), inference(lemma,[status(thm)],[nl,not_subclass_members1,subclass_implies_equal])).
cnf(rs1, plain, (~ subclass(X,Y) | ~ member(W,restrict(X,A,B)) | member(W,restrict(Y,A,B))), inference(lemma,[status(thm)],[restriction1,intersection1,intersection2,intersection3,subclass_members])).
cnf(rs, plain, (~ subclass(X,Y) | subclass(restrict(X,A,B),restrict(Y,A,B))), inference(lemma,[status(thm)],[rs1,not_subclass_members1,not_subclass_members2])).
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
cnf(un1, plain, (~ member(Z,union(X,Y)) | member(Z,X) | member(Z,Y)), inference(lemma,[status(thm)],[union,complement1,complement2,intersection3,mv])).
cnf(un2, plain, (~ member(Z,X) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection1,mv])).
cnf(un3, plain, (~ member(Z,Y) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection2,mv])).
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
cnf(rsub, plain, (subclass(restrict(X,A,B),X)), inference(lemma,[status(thm)],[rsx,not_subclass_members1,not_subclass_members2])).
cnf(sm3, plain, (~ member(X,sum_class(Y)) | member(ordered_pair(X,range(restrict(element_relation,universal_class,Y),X,universal_class)),restrict(element_relation,universal_class,Y))), inference(lemma,[status(thm)],[sum_class_definition,d1])).
cnf(sm4, plain, (~ member(X,sum_class(Y)) | member(X,range(restrict(element_relation,universal_class,Y),X,universal_class))), inference(lemma,[status(thm)],[sm3,rsx,element_relation2])).
cnf(sm5, plain, (~ member(X,sum_class(Y)) | member(range(restrict(element_relation,universal_class,Y),X,universal_class),Y)), inference(lemma,[status(thm)],[sm3,rsc,cartesian_product2])).
cnf(opm1, plain, (~ member(Z,universal_class) | member(singleton(Z),ordered_pair(Z,W))), inference(lemma,[status(thm)],[ordered_pair,unordered_pair2,unordered_pairs_in_universal,singleton_set])).
cnf(dss1, plain, (~ member(Z,domain_of(X)) | member(Z,sum_class(sum_class(X)))), inference(lemma,[status(thm)],[d1,mv,opm1,sm1,sg2])).
cnf(dss, plain, (subclass(domain_of(X),sum_class(sum_class(X)))), inference(lemma,[status(thm)],[dss1,not_subclass_members1,not_subclass_members2])).
cnf(dset, plain, (~ member(X,universal_class) | member(domain_of(X),universal_class)), inference(lemma,[status(thm)],[dss,sum_class2,sep])).
cnf(fsv, plain, (~ function(X) | single_valued_class(X)), inference(lemma,[status(thm)],[function2,single_valued_class2])).
cnf(svp, plain, (~ single_valued_class(X) | ~ member(ordered_pair(S,P),X) | ~ member(ordered_pair(S,Q),X) | ~ member(S,universal_class) | ~ member(P,universal_class) | ~ member(Q,universal_class) | P = Q), inference(lemma,[status(thm)],[single_valued_class1,i2,co2,subclass_members,id1])).
cnf(isg1, plain, (~ single_valued_class(Z) | ~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | ~ member(W,image(Z,singleton(X))) | member(W,singleton(Y))), inference(lemma,[status(thm)],[is1,mv,svp,sg2])).
cnf(isg2, plain, (~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | ~ member(W,singleton(Y)) | member(W,image(Z,singleton(X)))), inference(lemma,[status(thm)],[sg1,is2])).
cnf(isg, plain, (~ single_valued_class(Z) | ~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | image(Z,singleton(X)) = singleton(Y)), inference(lemma,[status(thm)],[isg1,isg2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(ssg1, plain, (~ member(W,sum_class(singleton(Y))) | member(W,Y)), inference(lemma,[status(thm)],[sm4,sm5,sg1])).
cnf(ssg2, plain, (~ member(Y,universal_class) | ~ member(W,Y) | member(W,sum_class(singleton(Y)))), inference(lemma,[status(thm)],[sg2,sm1])).
cnf(ssg, plain, (~ member(Y,universal_class) | sum_class(singleton(Y)) = Y), inference(lemma,[status(thm)],[ssg1,ssg2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(ap, plain, (~ single_valued_class(Z) | ~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | apply(Z,X) = Y), inference(lemma,[status(thm)],[isg,ssg,apply])).
cnf(wa1, plain, (~ member(A,Y) | ~ member(B,Y) | subclass(unordered_pair(A,B),Y)), inference(lemma,[status(thm)],[unordered_pair_member,not_subclass_members1,not_subclass_members2])).
cnf(wa2, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | member(least(X,unordered_pair(A,B)),unordered_pair(A,B))), inference(lemma,[status(thm)],[wa1,well_ordering3,unordered_pair2,mv])).
cnf(wa3, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | least(X,unordered_pair(A,B)) = A | least(X,unordered_pair(A,B)) = B), inference(lemma,[status(thm)],[wa2,unordered_pair_member])).
cnf(wa, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | ~ member(ordered_pair(A,B),X) | ~ member(ordered_pair(B,A),X)), inference(lemma,[status(thm)],[wa1,wa3,well_ordering5,unordered_pair2,unordered_pair3,mv])).
cnf(os_sxx, plain, (~ member(X,universal_class) | member(X,successor(X))), inference(lemma,[status(thm)],[sg2,un3,successor])).
cnf(os_sux, plain, (~ member(A,successor(X)) | member(A,X) | A = X), inference(lemma,[status(thm)],[successor,un1,sg1])).
cnf(tr_irr, plain, (~ member(X,ordinal_numbers) | ~ member(A,X) | ~ member(A,A)), inference(lemma,[status(thm)],[ordinal_numbers1,wa,mv,cartesian_product3,element_relation3])).
cnf(t_j1, plain, (~ member(A,universal_class) | member(singleton(A),ordered_pair(A,B))), inference(lemma,[status(thm)],[opm1])).
cnf(t_j2, plain, (~ member(A,universal_class) | ordered_pair(A,B) != ordered_pair(X,Y) | singleton(A) = singleton(X) | singleton(A) = unordered_pair(X,singleton(Y))), inference(lemma,[status(thm)],[op1,t_j1])).
cnf(t_j3, plain, (~ member(A,universal_class) | ~ member(X,universal_class) | singleton(A) != singleton(X) | A = X), inference(lemma,[status(thm)],[sg1,sg2])).
cnf(t_j4, plain, (~ member(A,universal_class) | ~ member(X,universal_class) | singleton(A) != unordered_pair(X,singleton(Y)) | A = X), inference(lemma,[status(thm)],[sg1,singleton_set,unordered_pair2])).
cnf(t_inj1, plain, (~ member(A,universal_class) | ~ member(X,universal_class) | ordered_pair(A,B) != ordered_pair(X,Y) | A = X), inference(lemma,[status(thm)],[t_j2,t_j3,t_j4])).
cnf(t_x1, plain, (member(x,universal_class)), inference(lemma,[status(thm)],[mv,prove_transfinite_recursion_property12_2])).
cnf(t_x2, plain, (member(domain_of(x),universal_class)), inference(lemma,[status(thm)],[dset,t_x1])).
cnf(t_x3, plain, (member(image(z,singleton(x)),universal_class)), inference(lemma,[status(thm)],[prove_transfinite_recursion_property12_1,recursion_equation_functions1,replacement,singleton_set,unordered_pairs_in_universal])).
cnf(t_x4, plain, (member(apply(z,x),universal_class)), inference(lemma,[status(thm)],[apply,sum_class2,t_x3])).
cnf(t_x5, plain, (member(domain_of(x),ordinal_numbers)), inference(lemma,[status(thm)],[prove_transfinite_recursion_property12_1,recursion_equation_functions3])).
cnf(t_x6, plain, (~ member(domain_of(x),domain_of(x))), inference(lemma,[status(thm)],[t_x5,tr_irr])).
cnf(t_x7, plain, (~ member(W,union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)) | W = ordered_pair(domain_of(x),apply(z,x)) | member(W,x)), inference(lemma,[status(thm)],[sg1,un1])).
cnf(t_x8, plain, (~ member(ordered_pair(P,Q),x) | member(P,domain_of(x))), inference(lemma,[status(thm)],[d2,function1,prove_transfinite_recursion_property12_1,pvv1,pvv2,recursion_equation_functions2,subclass_members])).
cnf(t_y1, plain, (~ member(U,domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))) | member(ordered_pair(U,range(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),U,universal_class)),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))), inference(lemma,[status(thm)],[d1])).
cnf(t_y2, plain, (~ member(U,domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))) | member(U,universal_class)), inference(lemma,[status(thm)],[mv])).
cnf(t_y3, plain, (~ member(U,domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))) | U = domain_of(x) | member(U,domain_of(x))), inference(lemma,[status(thm)],[t_inj1,t_x2,t_x7,t_x8,t_y1,t_y2])).
cnf(t_y4, plain, (~ member(U,domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))) | member(U,successor(domain_of(x)))), inference(lemma,[status(thm)],[os_sxx,successor,t_y2,t_y3,un2])).
cnf(t_ys1, plain, (subclass(domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)),successor(domain_of(x)))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_y4])).
cnf(t_z1, plain, (member(ordered_pair(domain_of(x),apply(z,x)),universal_class)), inference(lemma,[status(thm)],[cartesian_product3,mv,t_x2,t_x4])).
cnf(t_z2, plain, (member(ordered_pair(domain_of(x),apply(z,x)),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))), inference(lemma,[status(thm)],[sg2,t_z1,un2])).
cnf(t_z3, plain, (member(domain_of(x),domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))), inference(lemma,[status(thm)],[d2,t_x2,t_x4,t_z2])).
cnf(t_z4, plain, (~ member(U,domain_of(x)) | member(U,domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))), inference(lemma,[status(thm)],[d1,d1s,d2,mv,un3])).
cnf(t_z5, plain, (~ member(U,successor(domain_of(x))) | member(U,domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))), inference(lemma,[status(thm)],[os_sux,t_z3,t_z4])).
cnf(t_zs, plain, (subclass(successor(domain_of(x)),domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_z5])).
cnf(t_eqd, plain, (domain_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)) = successor(domain_of(x))), inference(lemma,[status(thm)],[subclass_implies_equal,t_ys1,t_zs])).
cnf(t_e1, plain, (~ member(G,recursion_equation_functions(z)) | member(restrict(G,U,universal_class),universal_class)), inference(lemma,[status(thm)],[mv,rsub,sep])).
cnf(t_e3, plain, (~ member(G,recursion_equation_functions(z)) | ~ member(U,domain_of(G)) | member(ordered_pair(U,restrict(G,U,universal_class)),rest_of(G))), inference(lemma,[status(thm)],[rest_of4,t_e1])).
cnf(t_e5a, plain, (~ member(G,recursion_equation_functions(z)) | ~ member(ordered_pair(U,W),G) | member(ordered_pair(U,W),compose(z,rest_of(G)))), inference(lemma,[status(thm)],[recursion_equation_functions4])).
cnf(t_e5b, plain, (~ member(G,recursion_equation_functions(z)) | ~ member(ordered_pair(U,W),G) | member(ordered_pair(range(inverse(restrict(z,image(rest_of(G),singleton(U)),universal_class)),W,universal_class),W),z)), inference(lemma,[status(thm)],[co1a,t_e5a])).
cnf(t_e5c, plain, (~ member(G,recursion_equation_functions(z)) | ~ member(ordered_pair(U,W),G) | member(ordered_pair(U,range(inverse(restrict(z,image(rest_of(G),singleton(U)),universal_class)),W,universal_class)),rest_of(G))), inference(lemma,[status(thm)],[co1b,t_e5a])).
cnf(t_e5, plain, (~ member(G,recursion_equation_functions(z)) | ~ member(ordered_pair(U,W),G) | member(ordered_pair(restrict(G,U,universal_class),W),z)), inference(lemma,[status(thm)],[rest_of3,t_e5b,t_e5c])).
cnf(t_e6a, plain, (~ member(G,recursion_equation_functions(z)) | ~ member(ordered_pair(R,W),z) | member(W,universal_class)), inference(lemma,[status(thm)],[function1,pvv2,recursion_equation_functions1,subclass_members])).
cnf(t_e6, plain, (~ member(G,recursion_equation_functions(z)) | ~ member(U,domain_of(G)) | ~ member(ordered_pair(restrict(G,U,universal_class),W),z) | member(ordered_pair(U,W),G)), inference(lemma,[status(thm)],[co2,mv,recursion_equation_functions4,t_e1,t_e3,t_e6a])).
cnf(t_tr0, plain, (~ member(U,domain_of(x)) | ~ member(domain_of(x),U)), inference(lemma,[status(thm)],[ordinal_numbers2,sm1,subclass_members,t_x5,t_x6])).
cnf(t_tr1a, plain, (~ member(W,restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),U,universal_class)) | W = ordered_pair(domain_of(x),apply(z,x)) | member(W,x)), inference(lemma,[status(thm)],[rsx,t_x7])).
cnf(t_tr1b, plain, (~ member(U,domain_of(x)) | ~ member(W,restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),U,universal_class)) | member(W,x)), inference(lemma,[status(thm)],[cartesian_product1,rsc,t_tr0,t_tr1a])).
cnf(t_tr1c, plain, (~ member(U,domain_of(x)) | ~ member(W,restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),U,universal_class)) | member(W,restrict(x,U,universal_class))), inference(lemma,[status(thm)],[rsc,rsi,t_tr1b])).
cnf(t_tr1d, plain, (subclass(x,union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,un3])).
cnf(t_tr1e, plain, (~ member(U,domain_of(x)) | subclass(restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),U,universal_class),restrict(x,U,universal_class))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_tr1c])).
cnf(t_tr1f, plain, (subclass(restrict(x,U,universal_class),restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),U,universal_class))), inference(lemma,[status(thm)],[rs,t_tr1d])).
cnf(t_tr1, plain, (~ member(U,domain_of(x)) | restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),U,universal_class) = restrict(x,U,universal_class)), inference(lemma,[status(thm)],[subclass_implies_equal,t_tr1e,t_tr1f])).
cnf(t_tr2a, plain, (~ member(W,restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),domain_of(x),universal_class)) | member(W,x)), inference(lemma,[status(thm)],[cartesian_product1,rsc,t_tr1a,t_x6])).
cnf(t_tr2b, plain, (subclass(restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),domain_of(x),universal_class),x)), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_tr2a])).
cnf(t_tr2c1, plain, (~ member(W,x) | ordered_pair(first(W),second(W)) = W), inference(lemma,[status(thm)],[cartesian_product4,function1,prove_transfinite_recursion_property12_1,recursion_equation_functions2,subclass_members])).
cnf(t_tr2c2, plain, (~ member(W,x) | member(W,cross_product(domain_of(x),universal_class))), inference(lemma,[status(thm)],[cartesian_product3,function1,prove_transfinite_recursion_property12_1,pvv2,recursion_equation_functions2,subclass_members,t_tr2c1,t_x8])).
cnf(t_tr2c, plain, (~ member(W,x) | member(W,restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),domain_of(x),universal_class))), inference(lemma,[status(thm)],[rsi,subclass_members,t_tr1d,t_tr2c2])).
cnf(t_tr2d, plain, (subclass(x,restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),domain_of(x),universal_class))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_tr2c])).
cnf(t_tr2, plain, (restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),domain_of(x),universal_class) = x), inference(lemma,[status(thm)],[subclass_implies_equal,t_tr2b,t_tr2d])).
cnf(t_q1, plain, (~ member(ordered_pair(U,W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | member(ordered_pair(range(inverse(restrict(z,image(rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)),singleton(U)),universal_class)),W,universal_class),W),z)), inference(lemma,[status(thm)],[co1a])).
cnf(t_q2, plain, (~ member(ordered_pair(U,W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | member(ordered_pair(U,range(inverse(restrict(z,image(rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)),singleton(U)),universal_class)),W,universal_class)),rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))), inference(lemma,[status(thm)],[co1b])).
cnf(t_q3, plain, (~ member(ordered_pair(U,W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | range(inverse(restrict(z,image(rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)),singleton(U)),universal_class)),W,universal_class) = restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),U,universal_class)), inference(lemma,[status(thm)],[rest_of3,t_q2])).
cnf(t_q4, plain, (~ member(ordered_pair(U,W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | member(U,successor(domain_of(x)))), inference(lemma,[status(thm)],[rest_of2,t_eqd,t_q2])).
cnf(t_q5, plain, (~ member(ordered_pair(U,W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | member(U,domain_of(x)) | U = domain_of(x)), inference(lemma,[status(thm)],[os_sux,t_q4])).
cnf(t_q6, plain, (~ member(ordered_pair(U,W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | ~ member(U,domain_of(x)) | member(ordered_pair(U,W),x)), inference(lemma,[status(thm)],[prove_transfinite_recursion_property12_1,t_e6,t_q1,t_q3,t_tr1])).
cnf(t_q7, plain, (~ member(ordered_pair(domain_of(x),W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | member(ordered_pair(x,W),z)), inference(lemma,[status(thm)],[t_q1,t_q3,t_tr2])).
cnf(t_q8, plain, (~ member(ordered_pair(x,W),z) | W = apply(z,x)), inference(lemma,[status(thm)],[ap,fsv,function1,prove_transfinite_recursion_property12_1,pvv2,recursion_equation_functions1,subclass_members,t_x1])).
cnf(t_q9a, plain, (~ member(ordered_pair(domain_of(x),W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | member(ordered_pair(domain_of(x),W),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))), inference(lemma,[status(thm)],[t_q7,t_q8,t_z2])).
cnf(t_q9, plain, (~ member(ordered_pair(U,W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | member(ordered_pair(U,W),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))), inference(lemma,[status(thm)],[subclass_members,t_q5,t_q6,t_q9a,t_tr1d])).
cnf(t_q10, plain, (~ member(Q,compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))) | member(Q,union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))), inference(lemma,[status(thm)],[cartesian_product4,compose1,subclass_members,t_q9])).
cnf(t_qs, plain, (subclass(compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))),union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_q10])).
cnf(t_s1, plain, (member(ordered_pair(domain_of(x),x),rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))), inference(lemma,[status(thm)],[rest_of4,t_tr2,t_x1,t_z3])).
cnf(t_s3, plain, (member(ordered_pair(x,range(z,x,universal_class)),z)), inference(lemma,[status(thm)],[d1,prove_transfinite_recursion_property12_2])).
cnf(t_s4, plain, (member(range(z,x,universal_class),universal_class)), inference(lemma,[status(thm)],[d1s,prove_transfinite_recursion_property12_2])).
cnf(t_s5, plain, (apply(z,x) = range(z,x,universal_class)), inference(lemma,[status(thm)],[ap,fsv,prove_transfinite_recursion_property12_1,recursion_equation_functions1,t_s3,t_s4,t_x1])).
cnf(t_s6, plain, (member(ordered_pair(domain_of(x),apply(z,x)),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))))), inference(lemma,[status(thm)],[co2,t_s1,t_s3,t_s5,t_x1,t_x2,t_x4])).
cnf(t_s7, plain, (~ member(ordered_pair(U,W),x) | member(ordered_pair(restrict(x,U,universal_class),W),z)), inference(lemma,[status(thm)],[prove_transfinite_recursion_property12_1,t_e5])).
cnf(t_s8, plain, (~ member(ordered_pair(U,W),x) | member(ordered_pair(U,restrict(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),U,universal_class)),rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)))), inference(lemma,[status(thm)],[prove_transfinite_recursion_property12_1,rest_of4,t_e1,t_tr1,t_x8,t_z4])).
cnf(t_s9, plain, (~ member(ordered_pair(U,W),x) | member(ordered_pair(U,W),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))))), inference(lemma,[status(thm)],[co2,function1,mv,prove_transfinite_recursion_property12_1,pvv2,recursion_equation_functions2,subclass_members,t_e1,t_s7,t_s8,t_tr1,t_x8])).
cnf(t_s10, plain, (~ member(Q,union(singleton(ordered_pair(domain_of(x),apply(z,x))),x)) | member(Q,compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))))), inference(lemma,[status(thm)],[t_s6,t_s9,t_tr2c1,t_x7])).
cnf(t_ss, plain, (subclass(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x),compose(z,rest_of(union(singleton(ordered_pair(domain_of(x),apply(z,x))),x))))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_s10])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[prove_transfinite_recursion_property12_3,subclass_implies_equal,t_qs,t_ss])).
% SZS output end CNFRefutation for NUM256-1
