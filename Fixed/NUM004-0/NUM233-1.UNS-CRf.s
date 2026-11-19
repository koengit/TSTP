%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM233-1, with Axioms/NUM004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the problem with the fixed axioms
% Comments : hand lemma chain (attempts/num004_fixed/hand/NUM233-1.goals in the project); cites rest_of4 (fixed form), if at all, only where the restriction is a set
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for NUM233-1
% SZS output start CNFRefutation for NUM233-1
%------------------------------------------------------------------------------
% TSTP export of attempts/num004_fixed/hand/gdv/TPTP-fixed/NUM233-1/proof1.p
% Problem: Problems/NUM/NUM233-1.p
%------------------------------------------------------------------------------
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM233-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM233-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM233-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM233-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM233-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM233-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM233-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM233-1.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM233-1.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM233-1.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM233-1.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM233-1.p',restriction1)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM233-1.p',not_subclass_members2)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM233-1.p',domain1)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM233-1.p',domain2)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/NUM/NUM233-1.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM233-1.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM233-1.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/NUM/NUM233-1.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM233-1.p',cartesian_product1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/NUM/NUM233-1.p',range)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM233-1.p',cartesian_product3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/NUM/NUM233-1.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/NUM/NUM233-1.p',flip2)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/NUM/NUM233-1.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM233-1.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/NUM/NUM233-1.p',flip3)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/NUM/NUM233-1.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/NUM/NUM233-1.p',image)).
cnf(compose2, axiom, (~ member(ordered_pair(Y,Z),compose(Yr,Xr)) | member(Z,image(Yr,image(Xr,singleton(Y))))), file('Problems/NUM/NUM233-1.p',compose2)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/NUM/NUM233-1.p',compose3)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM233-1.p',cartesian_product2)).
cnf(subset_relation, axiom, (intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))) = subset_relation), file('Problems/NUM/NUM233-1.p',subset_relation)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/NUM/NUM233-1.p',element_relation3)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/NUM/NUM233-1.p',element_relation2)).
cnf(identity_relation, axiom, (intersection(inverse(subset_relation),subset_relation) = identity_relation), file('Problems/NUM/NUM233-1.p',identity_relation)).
cnf(compose1, axiom, (subclass(compose(Yr,Xr),cross_product(universal_class,universal_class))), file('Problems/NUM/NUM233-1.p',compose1)).
cnf(function3, axiom, (~ subclass(Xf,cross_product(universal_class,universal_class)) | ~ subclass(compose(Xf,inverse(Xf)),identity_relation) | function(Xf)), file('Problems/NUM/NUM233-1.p',function3)).
cnf(replacement, axiom, (~ function(Xf) | ~ member(X,universal_class) | member(image(Xf,X),universal_class)), file('Problems/NUM/NUM233-1.p',replacement)).
cnf(sum_class_definition, axiom, (domain_of(restrict(element_relation,universal_class,X)) = sum_class(X)), file('Problems/NUM/NUM233-1.p',sum_class_definition)).
cnf(function2, axiom, (~ function(Xf) | subclass(compose(Xf,inverse(Xf)),identity_relation)), file('Problems/NUM/NUM233-1.p',function2)).
cnf(single_valued_class2, axiom, (~ subclass(compose(X,inverse(X)),identity_relation) | single_valued_class(X)), file('Problems/NUM/NUM233-1.p',single_valued_class2)).
cnf(single_valued_class1, axiom, (~ single_valued_class(X) | subclass(compose(X,inverse(X)),identity_relation)), file('Problems/NUM/NUM233-1.p',single_valued_class1)).
cnf(function1, axiom, (~ function(Xf) | subclass(Xf,cross_product(universal_class,universal_class))), file('Problems/NUM/NUM233-1.p',function1)).
cnf(prove_transfinite_recursion_lemma4_1, negated_conjecture, (member(x,recursion_equation_functions(z))), file('Problems/NUM/NUM233-1.p',prove_transfinite_recursion_lemma4_1)).
cnf(recursion_equation_functions2, axiom, (~ member(X,recursion_equation_functions(Z)) | function(X)), file('Problems/NUM/NUM233-1.p',recursion_equation_functions2)).
cnf(prove_transfinite_recursion_lemma4_4, negated_conjecture, (~ subclass(x,y)), file('Problems/NUM/NUM233-1.p',prove_transfinite_recursion_lemma4_4)).
cnf(ordinal_numbers1, axiom, (~ member(X,ordinal_numbers) | well_ordering(element_relation,X)), file('Problems/NUM/NUM233-1.p',ordinal_numbers1)).
cnf(recursion_equation_functions3, axiom, (~ member(X,recursion_equation_functions(Z)) | member(domain_of(X),ordinal_numbers)), file('Problems/NUM/NUM233-1.p',recursion_equation_functions3)).
cnf(well_ordering3, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | member(least(Xr,U),U)), file('Problems/NUM/NUM233-1.p',well_ordering3)).
cnf(ordinal_numbers2, axiom, (~ member(X,ordinal_numbers) | subclass(sum_class(X),X)), file('Problems/NUM/NUM233-1.p',ordinal_numbers2)).
cnf(well_ordering5, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | ~ member(ordered_pair(V,least(Xr,U)),Xr)), file('Problems/NUM/NUM233-1.p',well_ordering5)).
cnf(prove_transfinite_recursion_lemma4_2, negated_conjecture, (member(y,recursion_equation_functions(z))), file('Problems/NUM/NUM233-1.p',prove_transfinite_recursion_lemma4_2)).
cnf(prove_transfinite_recursion_lemma4_3, negated_conjecture, (member(domain_of(x),domain_of(y))), file('Problems/NUM/NUM233-1.p',prove_transfinite_recursion_lemma4_3)).
cnf(rest_of4, axiom, (~ member(U,domain_of(X)) | restrict(X,U,universal_class) != V | ~ member(V,universal_class) | member(ordered_pair(U,V),rest_of(X))), file('Problems/NUM/NUM233-1.p',rest_of4)).
cnf(rest_of3, axiom, (~ member(ordered_pair(U,V),rest_of(X)) | restrict(X,U,universal_class) = V), file('Problems/NUM/NUM233-1.p',rest_of3)).
cnf(recursion_equation_functions4, axiom, (~ member(X,recursion_equation_functions(Z)) | compose(Z,rest_of(X)) = X), file('Problems/NUM/NUM233-1.p',recursion_equation_functions4)).
cnf(apply, axiom, (sum_class(image(Xf,singleton(Y))) = apply(Xf,Y)), file('Problems/NUM/NUM233-1.p',apply)).
cnf(prove_transfinite_recursion_lemma4_5, negated_conjecture, (apply(y,least(element_relation,domain_of(intersection(complement(y),x)))) != apply(x,least(element_relation,domain_of(intersection(complement(y),x))))), file('Problems/NUM/NUM233-1.p',prove_transfinite_recursion_lemma4_5)).
cnf(nl, plain, (~ member(Z,null_class)), inference(lemma,[status(thm)],[regularity1,regularity2,intersection1,intersection2,intersection3,complement1,complement2,class_elements_are_sets,subclass_members])).
cnf(sn, plain, (~ subclass(X,null_class) | X = null_class), inference(lemma,[status(thm)],[nl,not_subclass_members1,subclass_implies_equal])).
cnf(rs1, plain, (~ subclass(X,Y) | ~ member(W,restrict(X,A,B)) | member(W,restrict(Y,A,B))), inference(lemma,[status(thm)],[restriction1,intersection1,intersection2,intersection3,subclass_members])).
cnf(rs, plain, (~ subclass(X,Y) | subclass(restrict(X,A,B),restrict(Y,A,B))), inference(lemma,[status(thm)],[rs1,not_subclass_members1,not_subclass_members2])).
cnf(dm1, plain, (~ subclass(X,Y) | ~ member(Z,domain_of(X)) | member(Z,domain_of(Y))), inference(lemma,[status(thm)],[domain1,domain2,rs,sn,class_elements_are_sets,subclass_members])).
cnf(dm, plain, (~ subclass(X,Y) | subclass(domain_of(X),domain_of(Y))), inference(lemma,[status(thm)],[dm1,not_subclass_members1,not_subclass_members2])).
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
cnf(isub2, plain, (subclass(intersection(X,Y),Y)), inference(lemma,[status(thm)],[intersection2,not_subclass_members1,not_subclass_members2])).
cnf(fsv, plain, (~ function(X) | single_valued_class(X)), inference(lemma,[status(thm)],[function2,single_valued_class2])).
cnf(svp, plain, (~ single_valued_class(X) | ~ member(ordered_pair(S,P),X) | ~ member(ordered_pair(S,Q),X) | ~ member(S,universal_class) | ~ member(P,universal_class) | ~ member(Q,universal_class) | P = Q), inference(lemma,[status(thm)],[single_valued_class1,i2,co2,subclass_members,id1])).
cnf(fvp, plain, (~ function(F) | ~ member(ordered_pair(T,P),F) | ~ member(ordered_pair(T,Q),F) | P = Q), inference(lemma,[status(thm)],[fsv,svp,function1,subclass_members,pvv1,pvv2])).
cnf(t_bx, plain, (subclass(x,cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[function1,prove_transfinite_recursion_lemma4_1,recursion_equation_functions2])).
cnf(t_b0, plain, (member(not_subclass_element(x,y),x)), inference(lemma,[status(thm)],[not_subclass_members1,prove_transfinite_recursion_lemma4_4])).
cnf(t_b0b, plain, (~ member(not_subclass_element(x,y),y)), inference(lemma,[status(thm)],[not_subclass_members2,prove_transfinite_recursion_lemma4_4])).
cnf(t_b2, plain, (member(not_subclass_element(x,y),cross_product(universal_class,universal_class))), inference(lemma,[status(thm)],[subclass_members,t_b0,t_bx])).
cnf(t_b1, plain, (member(not_subclass_element(x,y),intersection(complement(y),x))), inference(lemma,[status(thm)],[complement2,intersection3,mv,t_b0,t_b0b,t_b2])).
cnf(t_b3, plain, (ordered_pair(first(not_subclass_element(x,y)),second(not_subclass_element(x,y))) = not_subclass_element(x,y)), inference(lemma,[status(thm)],[cartesian_product4,t_b2])).
cnf(t_b5, plain, (member(first(not_subclass_element(x,y)),universal_class)), inference(lemma,[status(thm)],[pvv1,t_b2,t_b3])).
cnf(t_b5b, plain, (member(second(not_subclass_element(x,y)),universal_class)), inference(lemma,[status(thm)],[pvv2,t_b2,t_b3])).
cnf(t_b6, plain, (member(first(not_subclass_element(x,y)),domain_of(intersection(complement(y),x)))), inference(lemma,[status(thm)],[d2,t_b1,t_b3,t_b5,t_b5b])).
cnf(t_a3, plain, (subclass(domain_of(intersection(complement(y),x)),domain_of(x))), inference(lemma,[status(thm)],[dm,isub2])).
cnf(t_a4, plain, (well_ordering(element_relation,domain_of(x))), inference(lemma,[status(thm)],[ordinal_numbers1,prove_transfinite_recursion_lemma4_1,recursion_equation_functions3])).
cnf(t_a5, plain, (member(least(element_relation,domain_of(intersection(complement(y),x))),domain_of(intersection(complement(y),x)))), inference(lemma,[status(thm)],[t_a3,t_a4,t_b6,well_ordering3])).
cnf(t_c1, plain, (subclass(sum_class(domain_of(x)),domain_of(x))), inference(lemma,[status(thm)],[ordinal_numbers2,prove_transfinite_recursion_lemma4_1,recursion_equation_functions3])).
cnf(t_c2, plain, (member(least(element_relation,domain_of(intersection(complement(y),x))),domain_of(x))), inference(lemma,[status(thm)],[subclass_members,t_a3,t_a5])).
cnf(t_l1a, plain, (~ member(ordered_pair(U,V),x) | member(ordered_pair(U,V),y) | member(U,domain_of(intersection(complement(y),x)))), inference(lemma,[status(thm)],[complement2,d2,intersection3,mv,pvv1,pvv2,subclass_members,t_bx])).
cnf(t_l1b, plain, (~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | ~ member(U,domain_of(intersection(complement(y),x)))), inference(lemma,[status(thm)],[cartesian_product3,element_relation3,mv,t_a3,t_a4,t_a5,well_ordering5])).
cnf(t_l1, plain, (~ member(ordered_pair(U,V),x) | ~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(ordered_pair(U,V),y)), inference(lemma,[status(thm)],[t_l1a,t_l1b])).
cnf(t_l2a, plain, (~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(U,domain_of(x))), inference(lemma,[status(thm)],[sm1,subclass_members,t_c1,t_c2])).
cnf(t_l2b, plain, (~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(ordered_pair(U,range(x,U,universal_class)),x)), inference(lemma,[status(thm)],[d1,t_l2a])).
cnf(t_l2c, plain, (~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(ordered_pair(U,range(x,U,universal_class)),y)), inference(lemma,[status(thm)],[t_l1,t_l2b])).
cnf(t_l2, plain, (~ member(ordered_pair(U,V),y) | ~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(ordered_pair(U,V),x)), inference(lemma,[status(thm)],[fvp,prove_transfinite_recursion_lemma4_2,recursion_equation_functions2,t_l2b,t_l2c])).
cnf(t_r0, plain, (~ member(W,cross_product(least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(first(W),least(element_relation,domain_of(intersection(complement(y),x))))), inference(lemma,[status(thm)],[cartesian_product1,cartesian_product4])).
cnf(t_r1d, plain, (~ member(W,restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(W,y)), inference(lemma,[status(thm)],[cartesian_product4,rsc,rsx,t_l1,t_r0])).
cnf(t_r1e, plain, (~ member(W,restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(W,restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class))), inference(lemma,[status(thm)],[rsc,rsi,t_r1d])).
cnf(t_r1, plain, (subclass(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_r1e])).
cnf(t_r2d, plain, (~ member(W,restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(W,x)), inference(lemma,[status(thm)],[cartesian_product4,rsc,rsx,t_l2,t_r0])).
cnf(t_r2e, plain, (~ member(W,restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(W,restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class))), inference(lemma,[status(thm)],[rsc,rsi,t_r2d])).
cnf(t_r2, plain, (subclass(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_r2e])).
cnf(t_e1, plain, (subclass(sum_class(domain_of(y)),domain_of(y))), inference(lemma,[status(thm)],[ordinal_numbers2,prove_transfinite_recursion_lemma4_2,recursion_equation_functions3])).
cnf(t_e2, plain, (member(least(element_relation,domain_of(intersection(complement(y),x))),domain_of(y))), inference(lemma,[status(thm)],[prove_transfinite_recursion_lemma4_3,sm1,subclass_members,t_c2,t_e1])).
cnf(t_hx1, plain, (member(x,universal_class)), inference(lemma,[status(thm)],[mv,prove_transfinite_recursion_lemma4_1])).
cnf(t_hx2, plain, (member(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),universal_class)), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,rsx,sep,t_hx1])).
cnf(t_hx3, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)),rest_of(x))), inference(lemma,[status(thm)],[rest_of4,t_c2,t_hx2])).
cnf(t_hx4, plain, (~ member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),R),rest_of(x)) | R = restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)), inference(lemma,[status(thm)],[rest_of3])).
cnf(t_hx5, plain, (~ member(W,image(x,singleton(least(element_relation,domain_of(intersection(complement(y),x)))))) | member(W,image(z,singleton(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class))))), inference(lemma,[status(thm)],[co1a,co1b,is1,is2,mv,prove_transfinite_recursion_lemma4_1,recursion_equation_functions4,t_hx2,t_hx4])).
cnf(t_hx6, plain, (~ member(W,image(z,singleton(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)))) | member(W,image(x,singleton(least(element_relation,domain_of(intersection(complement(y),x))))))), inference(lemma,[status(thm)],[co2,is1,is2,mv,prove_transfinite_recursion_lemma4_1,recursion_equation_functions4,t_c2,t_hx2,t_hx3])).
cnf(t_hx7, plain, (image(x,singleton(least(element_relation,domain_of(intersection(complement(y),x))))) = image(z,singleton(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,subclass_implies_equal,t_hx5,t_hx6])).
cnf(t_hy1, plain, (member(y,universal_class)), inference(lemma,[status(thm)],[mv,prove_transfinite_recursion_lemma4_2])).
cnf(t_hy2, plain, (member(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),universal_class)), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,rsx,sep,t_hy1])).
cnf(t_hy3, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)),rest_of(y))), inference(lemma,[status(thm)],[rest_of4,t_e2,t_hy2])).
cnf(t_hy4, plain, (~ member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),R),rest_of(y)) | R = restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)), inference(lemma,[status(thm)],[rest_of3])).
cnf(t_hy5, plain, (~ member(W,image(y,singleton(least(element_relation,domain_of(intersection(complement(y),x)))))) | member(W,image(z,singleton(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class))))), inference(lemma,[status(thm)],[co1a,co1b,is1,is2,mv,prove_transfinite_recursion_lemma4_2,recursion_equation_functions4,t_hy2,t_hy4])).
cnf(t_hy6, plain, (~ member(W,image(z,singleton(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)))) | member(W,image(y,singleton(least(element_relation,domain_of(intersection(complement(y),x))))))), inference(lemma,[status(thm)],[co2,is1,is2,mv,prove_transfinite_recursion_lemma4_2,recursion_equation_functions4,t_e2,t_hy2,t_hy3])).
cnf(t_hy7, plain, (image(y,singleton(least(element_relation,domain_of(intersection(complement(y),x))))) = image(z,singleton(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,subclass_implies_equal,t_hy5,t_hy6])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[apply,prove_transfinite_recursion_lemma4_5,subclass_implies_equal,t_hx7,t_hy7,t_r1,t_r2])).
% SZS output end CNFRefutation for NUM233-1
