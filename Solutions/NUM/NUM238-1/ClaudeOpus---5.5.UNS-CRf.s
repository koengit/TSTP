%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM238-1 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for NUM238-1
% SZS output start CNFRefutation for NUM238-1
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM238-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM238-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM238-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM238-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM238-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM238-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM238-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM238-1.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM238-1.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM238-1.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM238-1.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM238-1.p',restriction1)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM238-1.p',not_subclass_members2)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM238-1.p',domain1)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM238-1.p',domain2)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/NUM/NUM238-1.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM238-1.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM238-1.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/NUM/NUM238-1.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM238-1.p',cartesian_product1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/NUM/NUM238-1.p',range)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM238-1.p',cartesian_product3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/NUM/NUM238-1.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/NUM/NUM238-1.p',flip2)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/NUM/NUM238-1.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM238-1.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/NUM/NUM238-1.p',flip3)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/NUM/NUM238-1.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/NUM/NUM238-1.p',image)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM238-1.p',cartesian_product2)).
cnf(compose2, axiom, (~ member(ordered_pair(Y,Z),compose(Yr,Xr)) | member(Z,image(Yr,image(Xr,singleton(Y))))), file('Problems/NUM/NUM238-1.p',compose2)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/NUM/NUM238-1.p',compose3)).
cnf(subset_relation, axiom, (intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))) = subset_relation), file('Problems/NUM/NUM238-1.p',subset_relation)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/NUM/NUM238-1.p',element_relation3)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/NUM/NUM238-1.p',element_relation2)).
cnf(identity_relation, axiom, (intersection(inverse(subset_relation),subset_relation) = identity_relation), file('Problems/NUM/NUM238-1.p',identity_relation)).
cnf(compose1, axiom, (subclass(compose(Yr,Xr),cross_product(universal_class,universal_class))), file('Problems/NUM/NUM238-1.p',compose1)).
cnf(function3, axiom, (~ subclass(Xf,cross_product(universal_class,universal_class)) | ~ subclass(compose(Xf,inverse(Xf)),identity_relation) | function(Xf)), file('Problems/NUM/NUM238-1.p',function3)).
cnf(replacement, axiom, (~ function(Xf) | ~ member(X,universal_class) | member(image(Xf,X),universal_class)), file('Problems/NUM/NUM238-1.p',replacement)).
cnf(sum_class_definition, axiom, (domain_of(restrict(element_relation,universal_class,X)) = sum_class(X)), file('Problems/NUM/NUM238-1.p',sum_class_definition)).
cnf(function2, axiom, (~ function(Xf) | subclass(compose(Xf,inverse(Xf)),identity_relation)), file('Problems/NUM/NUM238-1.p',function2)).
cnf(single_valued_class2, axiom, (~ subclass(compose(X,inverse(X)),identity_relation) | single_valued_class(X)), file('Problems/NUM/NUM238-1.p',single_valued_class2)).
cnf(single_valued_class1, axiom, (~ single_valued_class(X) | subclass(compose(X,inverse(X)),identity_relation)), file('Problems/NUM/NUM238-1.p',single_valued_class1)).
cnf(apply, axiom, (sum_class(image(Xf,singleton(Y))) = apply(Xf,Y)), file('Problems/NUM/NUM238-1.p',apply)).
cnf(function1, axiom, (~ function(Xf) | subclass(Xf,cross_product(universal_class,universal_class))), file('Problems/NUM/NUM238-1.p',function1)).
cnf(ordinal_numbers2, axiom, (~ member(X,ordinal_numbers) | subclass(sum_class(X),X)), file('Problems/NUM/NUM238-1.p',ordinal_numbers2)).
cnf(prove_transfinite_recursion_lemma7_1, negated_conjecture, (member(x,recursion_equation_functions(z))), file('Problems/NUM/NUM238-1.p',prove_transfinite_recursion_lemma7_1)).
cnf(recursion_equation_functions2, axiom, (~ member(X,recursion_equation_functions(Z)) | function(X)), file('Problems/NUM/NUM238-1.p',recursion_equation_functions2)).
cnf(ordinal_numbers1, axiom, (~ member(X,ordinal_numbers) | well_ordering(element_relation,X)), file('Problems/NUM/NUM238-1.p',ordinal_numbers1)).
cnf(recursion_equation_functions3, axiom, (~ member(X,recursion_equation_functions(Z)) | member(domain_of(X),ordinal_numbers)), file('Problems/NUM/NUM238-1.p',recursion_equation_functions3)).
cnf(well_ordering3, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | member(least(Xr,U),U)), file('Problems/NUM/NUM238-1.p',well_ordering3)).
cnf(well_ordering5, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | ~ member(ordered_pair(V,least(Xr,U)),Xr)), file('Problems/NUM/NUM238-1.p',well_ordering5)).
cnf(prove_transfinite_recursion_lemma7_2, negated_conjecture, (member(y,recursion_equation_functions(z))), file('Problems/NUM/NUM238-1.p',prove_transfinite_recursion_lemma7_2)).
cnf(rest_of4, axiom, (~ member(U,domain_of(X)) | restrict(X,U,universal_class) != V | member(ordered_pair(U,V),rest_of(X))), file('Problems/NUM/NUM238-1.p',rest_of4)).
cnf(rest_of3, axiom, (~ member(ordered_pair(U,V),rest_of(X)) | restrict(X,U,universal_class) = V), file('Problems/NUM/NUM238-1.p',rest_of3)).
cnf(recursion_equation_functions4, axiom, (~ member(X,recursion_equation_functions(Z)) | compose(Z,rest_of(X)) = X), file('Problems/NUM/NUM238-1.p',recursion_equation_functions4)).
cnf(prove_transfinite_recursion_lemma7_3, negated_conjecture, (member(domain_of(x),domain_of(y))), file('Problems/NUM/NUM238-1.p',prove_transfinite_recursion_lemma7_3)).
cnf(prove_transfinite_recursion_lemma7_4, negated_conjecture, (member(u,domain_of(x))), file('Problems/NUM/NUM238-1.p',prove_transfinite_recursion_lemma7_4)).
cnf(prove_transfinite_recursion_lemma7_5, negated_conjecture, (restrict(x,u,universal_class) != restrict(y,u,universal_class)), file('Problems/NUM/NUM238-1.p',prove_transfinite_recursion_lemma7_5)).
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
cnf(d1s, plain, (~ member(Z,domain_of(X)) | member(range(X,Z,universal_class),universal_class)), inference(lemma,[status(thm)],[d1a,rsc,csg,cartesian_product2,range])).
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
cnf(sm3, plain, (~ member(X,sum_class(Y)) | member(ordered_pair(X,range(restrict(element_relation,universal_class,Y),X,universal_class)),restrict(element_relation,universal_class,Y))), inference(lemma,[status(thm)],[sum_class_definition,d1])).
cnf(sm4, plain, (~ member(X,sum_class(Y)) | member(X,range(restrict(element_relation,universal_class,Y),X,universal_class))), inference(lemma,[status(thm)],[sm3,rsx,element_relation2])).
cnf(sm5, plain, (~ member(X,sum_class(Y)) | member(range(restrict(element_relation,universal_class,Y),X,universal_class),Y)), inference(lemma,[status(thm)],[sm3,rsc,cartesian_product2])).
cnf(fsv, plain, (~ function(X) | single_valued_class(X)), inference(lemma,[status(thm)],[function2,single_valued_class2])).
cnf(svp, plain, (~ single_valued_class(X) | ~ member(ordered_pair(S,P),X) | ~ member(ordered_pair(S,Q),X) | ~ member(S,universal_class) | ~ member(P,universal_class) | ~ member(Q,universal_class) | P = Q), inference(lemma,[status(thm)],[single_valued_class1,i2,co2,subclass_members,id1])).
cnf(isg1, plain, (~ single_valued_class(Z) | ~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | ~ member(W,image(Z,singleton(X))) | member(W,singleton(Y))), inference(lemma,[status(thm)],[is1,mv,svp,sg2])).
cnf(isg2, plain, (~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | ~ member(W,singleton(Y)) | member(W,image(Z,singleton(X)))), inference(lemma,[status(thm)],[sg1,is2])).
cnf(isg, plain, (~ single_valued_class(Z) | ~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | image(Z,singleton(X)) = singleton(Y)), inference(lemma,[status(thm)],[isg1,isg2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(ssg1, plain, (~ member(W,sum_class(singleton(Y))) | member(W,Y)), inference(lemma,[status(thm)],[sm4,sm5,sg1])).
cnf(ssg2, plain, (~ member(Y,universal_class) | ~ member(W,Y) | member(W,sum_class(singleton(Y)))), inference(lemma,[status(thm)],[sg2,sm1])).
cnf(ssg, plain, (~ member(Y,universal_class) | sum_class(singleton(Y)) = Y), inference(lemma,[status(thm)],[ssg1,ssg2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(ap, plain, (~ single_valued_class(Z) | ~ member(ordered_pair(X,Y),Z) | ~ member(X,universal_class) | ~ member(Y,universal_class) | apply(Z,X) = Y), inference(lemma,[status(thm)],[isg,ssg,apply])).
cnf(fvp, plain, (~ function(F) | ~ member(ordered_pair(T,P),F) | ~ member(ordered_pair(T,Q),F) | P = Q), inference(lemma,[status(thm)],[fsv,svp,function1,subclass_members,pvv1,pvv2])).
cnf(osub, plain, (~ member(X,ordinal_numbers) | ~ member(Y,X) | subclass(Y,X)), inference(lemma,[status(thm)],[ordinal_numbers2,sm1,subclass_members,not_subclass_members1,not_subclass_members2])).
cnf(t_ubx, plain, (subclass(x,cross_product(universal_class,universal_class)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[function1,prove_transfinite_recursion_lemma7_1,recursion_equation_functions2])).
cnf(t_ub0, plain, (member(not_subclass_element(x,y),x) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[not_subclass_members1])).
cnf(t_ub0b, plain, (~ member(not_subclass_element(x,y),y) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[not_subclass_members2])).
cnf(t_ub2, plain, (member(not_subclass_element(x,y),cross_product(universal_class,universal_class)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[subclass_members,t_ub0,t_ubx])).
cnf(t_ub1, plain, (member(not_subclass_element(x,y),intersection(complement(y),x)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[complement2,intersection3,mv,t_ub0,t_ub0b])).
cnf(t_ub3, plain, (ordered_pair(first(not_subclass_element(x,y)),second(not_subclass_element(x,y))) = not_subclass_element(x,y) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[cartesian_product4,t_ub2])).
cnf(t_ub5, plain, (member(first(not_subclass_element(x,y)),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[pvv1,t_ub2,t_ub3])).
cnf(t_ub5b, plain, (member(second(not_subclass_element(x,y)),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[pvv2,t_ub2,t_ub3])).
cnf(t_ub6, plain, (member(first(not_subclass_element(x,y)),domain_of(intersection(complement(y),x))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[d2,t_ub1,t_ub3,t_ub5,t_ub5b])).
cnf(t_ua3, plain, (subclass(domain_of(intersection(complement(y),x)),domain_of(x)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[dm,isub2])).
cnf(t_ua4, plain, (well_ordering(element_relation,domain_of(x)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[ordinal_numbers1,prove_transfinite_recursion_lemma7_1,recursion_equation_functions3])).
cnf(t_ua5, plain, (member(least(element_relation,domain_of(intersection(complement(y),x))),domain_of(intersection(complement(y),x))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[t_ua3,t_ua4,t_ub6,well_ordering3])).
cnf(t_uc1, plain, (subclass(sum_class(domain_of(x)),domain_of(x)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[ordinal_numbers2,prove_transfinite_recursion_lemma7_1,recursion_equation_functions3])).
cnf(t_uc2, plain, (member(least(element_relation,domain_of(intersection(complement(y),x))),domain_of(x)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[subclass_members,t_ua3,t_ua5])).
cnf(t_ul1a, plain, (~ member(ordered_pair(U,V),x) | member(ordered_pair(U,V),y) | member(U,domain_of(intersection(complement(y),x))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[complement2,d2,intersection3,mv,pvv1,pvv2,subclass_members,t_ubx])).
cnf(t_ul1b, plain, (~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | ~ member(U,domain_of(intersection(complement(y),x))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[cartesian_product3,element_relation3,mv,t_ua3,t_ua4,t_ua5,well_ordering5])).
cnf(t_ul1, plain, (~ member(ordered_pair(U,V),x) | ~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(ordered_pair(U,V),y) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[t_ul1a,t_ul1b])).
cnf(t_ul2a, plain, (~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(U,domain_of(x)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[sm1,subclass_members,t_uc1,t_uc2])).
cnf(t_ul2b, plain, (~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(ordered_pair(U,range(x,U,universal_class)),x) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[d1,t_ul2a])).
cnf(t_ul2c, plain, (~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(ordered_pair(U,range(x,U,universal_class)),y) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[t_ul1,t_ul2b])).
cnf(t_ul2, plain, (~ member(ordered_pair(U,V),y) | ~ member(U,least(element_relation,domain_of(intersection(complement(y),x)))) | member(ordered_pair(U,V),x) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[fvp,prove_transfinite_recursion_lemma7_2,recursion_equation_functions2,t_ul2b,t_ul2c])).
cnf(t_ur0, plain, (~ member(W,cross_product(least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(first(W),least(element_relation,domain_of(intersection(complement(y),x)))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[cartesian_product1,cartesian_product4])).
cnf(t_ur1d, plain, (~ member(W,restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(W,y) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[cartesian_product4,rsc,rsx,t_ul1,t_ur0])).
cnf(t_ur1e, plain, (~ member(W,restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(W,restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[rsc,rsi,t_ur1d])).
cnf(t_ur1, plain, (subclass(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_ur1e])).
cnf(t_ur2d, plain, (~ member(W,restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(W,x) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[cartesian_product4,rsc,rsx,t_ul2,t_ur0])).
cnf(t_ur2e, plain, (~ member(W,restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | member(W,restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[rsc,rsi,t_ur2d])).
cnf(t_ur2, plain, (subclass(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,t_ur2e])).
cnf(t_ue2, plain, (member(least(element_relation,domain_of(intersection(complement(y),x))),domain_of(y)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[subclass_members,t_uc2])).
cnf(t_uhx1, plain, (member(x,universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[mv,prove_transfinite_recursion_lemma7_1])).
cnf(t_uhx2, plain, (member(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,rsx,sep,t_uhx1])).
cnf(t_uhx3, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)),rest_of(x)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[rest_of4,t_uc2,t_uhx2])).
cnf(t_uhx4, plain, (~ member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),R),rest_of(x)) | R = restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[rest_of3])).
cnf(t_uhx5, plain, (~ member(W,image(x,singleton(least(element_relation,domain_of(intersection(complement(y),x)))))) | member(W,image(z,singleton(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[co1a,co1b,is1,is2,mv,prove_transfinite_recursion_lemma7_1,recursion_equation_functions4,t_uhx2,t_uhx4])).
cnf(t_uhx6, plain, (~ member(W,image(z,singleton(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)))) | member(W,image(x,singleton(least(element_relation,domain_of(intersection(complement(y),x)))))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[co2,is1,is2,mv,prove_transfinite_recursion_lemma7_1,recursion_equation_functions4,t_uc2,t_uhx2,t_uhx3])).
cnf(t_uhx7, plain, (image(x,singleton(least(element_relation,domain_of(intersection(complement(y),x))))) = image(z,singleton(restrict(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,subclass_implies_equal,t_uhx5,t_uhx6])).
cnf(t_uhy1, plain, (member(y,universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[mv,prove_transfinite_recursion_lemma7_2])).
cnf(t_uhy2, plain, (member(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,rsx,sep,t_uhy1])).
cnf(t_uhy3, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)),rest_of(y)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[rest_of4,t_ue2,t_uhy2])).
cnf(t_uhy4, plain, (~ member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),R),rest_of(y)) | R = restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[rest_of3])).
cnf(t_uhy5, plain, (~ member(W,image(y,singleton(least(element_relation,domain_of(intersection(complement(y),x)))))) | member(W,image(z,singleton(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[co1a,co1b,is1,is2,mv,prove_transfinite_recursion_lemma7_2,recursion_equation_functions4,t_uhy2,t_uhy4])).
cnf(t_uhy6, plain, (~ member(W,image(z,singleton(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)))) | member(W,image(y,singleton(least(element_relation,domain_of(intersection(complement(y),x)))))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[co2,is1,is2,mv,prove_transfinite_recursion_lemma7_2,recursion_equation_functions4,t_ue2,t_uhy2,t_uhy3])).
cnf(t_uhy7, plain, (image(y,singleton(least(element_relation,domain_of(intersection(complement(y),x))))) = image(z,singleton(restrict(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,subclass_implies_equal,t_uhy5,t_uhy6])).
cnf(t_uq, plain, (apply(y,least(element_relation,domain_of(intersection(complement(y),x)))) = apply(x,least(element_relation,domain_of(intersection(complement(y),x)))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[apply,subclass_implies_equal,t_uhx7,t_uhy7,t_ur1,t_ur2])).
cnf(t_ug1, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),range(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)),x) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[d1,t_uc2])).
cnf(t_ug2, plain, (member(range(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[d1s,t_uc2])).
cnf(t_ug3, plain, (apply(x,least(element_relation,domain_of(intersection(complement(y),x)))) = range(x,least(element_relation,domain_of(intersection(complement(y),x))),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[ap,fsv,mv,prove_transfinite_recursion_lemma7_1,recursion_equation_functions2,t_uc2,t_ug1,t_ug2])).
cnf(t_ug4, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),apply(x,least(element_relation,domain_of(intersection(complement(y),x))))),x) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[t_ug1,t_ug3])).
cnf(t_uf1, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),range(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class)),y) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[d1,t_ue2])).
cnf(t_uf2, plain, (member(range(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[d1s,t_ue2])).
cnf(t_uf3, plain, (apply(y,least(element_relation,domain_of(intersection(complement(y),x)))) = range(y,least(element_relation,domain_of(intersection(complement(y),x))),universal_class) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[ap,fsv,mv,prove_transfinite_recursion_lemma7_2,recursion_equation_functions2,t_ue2,t_uf1,t_uf2])).
cnf(t_uf4, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),apply(y,least(element_relation,domain_of(intersection(complement(y),x))))),y) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[t_uf1,t_uf3])).
cnf(t_uk1, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),range(intersection(complement(y),x),least(element_relation,domain_of(intersection(complement(y),x))),universal_class)),intersection(complement(y),x)) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[d1,t_ua5])).
cnf(t_uk2, plain, (member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),range(intersection(complement(y),x),least(element_relation,domain_of(intersection(complement(y),x))),universal_class)),x) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[intersection2,t_uk1])).
cnf(t_uk3, plain, (~ member(ordered_pair(least(element_relation,domain_of(intersection(complement(y),x))),range(intersection(complement(y),x),least(element_relation,domain_of(intersection(complement(y),x))),universal_class)),y) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[complement1,intersection1,t_uk1])).
cnf(t_uk4, plain, (range(intersection(complement(y),x),least(element_relation,domain_of(intersection(complement(y),x))),universal_class) = apply(x,least(element_relation,domain_of(intersection(complement(y),x)))) | subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[fvp,prove_transfinite_recursion_lemma7_1,recursion_equation_functions2,t_ug4,t_uk2])).
cnf(t_us, plain, (subclass(x,y) | ~ subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[t_uf4,t_uk3,t_uk4,t_uq])).
cnf(t_s0, plain, (subclass(domain_of(x),domain_of(y))), inference(lemma,[status(thm)],[osub,prove_transfinite_recursion_lemma7_2,prove_transfinite_recursion_lemma7_3,recursion_equation_functions3])).
cnf(t_s1, plain, (subclass(x,y)), inference(lemma,[status(thm)],[t_s0,t_us])).
cnf(t_m1, plain, (subclass(sum_class(domain_of(x)),domain_of(x)) | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[ordinal_numbers2,prove_transfinite_recursion_lemma7_1,recursion_equation_functions3])).
cnf(t_m2, plain, (~ member(P,u) | member(P,domain_of(x)) | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[prove_transfinite_recursion_lemma7_4,sm1,subclass_members,t_m1])).
cnf(t_m3a, plain, (~ member(P,u) | member(ordered_pair(P,range(x,P,universal_class)),x) | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[d1,prove_transfinite_recursion_lemma7_4,t_m2])).
cnf(t_m3b, plain, (~ member(P,u) | member(ordered_pair(P,range(x,P,universal_class)),y) | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[prove_transfinite_recursion_lemma7_4,subclass_members,t_m3a,t_s1])).
cnf(t_m3, plain, (~ member(ordered_pair(P,Q),y) | ~ member(P,u) | member(ordered_pair(P,Q),x) | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[fvp,prove_transfinite_recursion_lemma7_2,prove_transfinite_recursion_lemma7_4,recursion_equation_functions2,t_m3a,t_m3b])).
cnf(t_m4a, plain, (~ member(W,restrict(y,u,universal_class)) | ordered_pair(first(W),second(W)) = W | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[cartesian_product4,rsc])).
cnf(t_m4b, plain, (~ member(W,restrict(y,u,universal_class)) | member(first(W),u) | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[cartesian_product1,cartesian_product4,rsc])).
cnf(t_m4c, plain, (~ member(W,restrict(y,u,universal_class)) | member(W,x) | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[prove_transfinite_recursion_lemma7_4,rsx,t_m3,t_m4a,t_m4b])).
cnf(t_m4, plain, (~ member(W,restrict(y,u,universal_class)) | member(W,restrict(x,u,universal_class)) | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[prove_transfinite_recursion_lemma7_4,rsc,rsi,t_m4c])).
cnf(t_r2, plain, (subclass(restrict(y,u,universal_class),restrict(x,u,universal_class)) | ~ member(u,domain_of(x))), inference(lemma,[status(thm)],[not_subclass_members1,not_subclass_members2,prove_transfinite_recursion_lemma7_4,t_m4])).
cnf(t_r1, plain, (subclass(restrict(x,u,universal_class),restrict(y,u,universal_class))), inference(lemma,[status(thm)],[rs,t_s1])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[prove_transfinite_recursion_lemma7_4,prove_transfinite_recursion_lemma7_5,subclass_implies_equal,t_r1,t_r2])).
% SZS output end CNFRefutation for NUM238-1
%------------------------------------------------------------------------------
