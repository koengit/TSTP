%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM161-1 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for NUM161-1
% SZS output start CNFRefutation for NUM161-1
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM161-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM161-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM161-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM161-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM161-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM161-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM161-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM161-1.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM161-1.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM161-1.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM161-1.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM161-1.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/NUM/NUM161-1.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM161-1.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM161-1.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/NUM/NUM161-1.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM161-1.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM161-1.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/NUM/NUM161-1.p',range)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM161-1.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM161-1.p',cartesian_product3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/NUM/NUM161-1.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/NUM/NUM161-1.p',flip2)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/NUM/NUM161-1.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM161-1.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/NUM/NUM161-1.p',flip3)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/NUM/NUM161-1.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/NUM/NUM161-1.p',image)).
cnf(union, axiom, (complement(intersection(complement(X),complement(Y))) = union(X,Y)), file('Problems/NUM/NUM161-1.p',union)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM161-1.p',cartesian_product2)).
cnf(compose2, axiom, (~ member(ordered_pair(Y,Z),compose(Yr,Xr)) | member(Z,image(Yr,image(Xr,singleton(Y))))), file('Problems/NUM/NUM161-1.p',compose2)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/NUM/NUM161-1.p',compose3)).
cnf(subset_relation, axiom, (intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))) = subset_relation), file('Problems/NUM/NUM161-1.p',subset_relation)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/NUM/NUM161-1.p',element_relation3)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/NUM/NUM161-1.p',element_relation2)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM161-1.p',not_subclass_members2)).
cnf(identity_relation, axiom, (intersection(inverse(subset_relation),subset_relation) = identity_relation), file('Problems/NUM/NUM161-1.p',identity_relation)).
cnf(compose1, axiom, (subclass(compose(Yr,Xr),cross_product(universal_class,universal_class))), file('Problems/NUM/NUM161-1.p',compose1)).
cnf(function3, axiom, (~ subclass(Xf,cross_product(universal_class,universal_class)) | ~ subclass(compose(Xf,inverse(Xf)),identity_relation) | function(Xf)), file('Problems/NUM/NUM161-1.p',function3)).
cnf(replacement, axiom, (~ function(Xf) | ~ member(X,universal_class) | member(image(Xf,X),universal_class)), file('Problems/NUM/NUM161-1.p',replacement)).
cnf(sum_class_definition, axiom, (domain_of(restrict(element_relation,universal_class,X)) = sum_class(X)), file('Problems/NUM/NUM161-1.p',sum_class_definition)).
cnf(unordered_pair3, axiom, (~ member(Y,universal_class) | member(Y,unordered_pair(X,Y))), file('Problems/NUM/NUM161-1.p',unordered_pair3)).
cnf(sum_class2, axiom, (~ member(X,universal_class) | member(sum_class(X),universal_class)), file('Problems/NUM/NUM161-1.p',sum_class2)).
cnf(successor, axiom, (union(X,singleton(X)) = successor(X)), file('Problems/NUM/NUM161-1.p',successor)).
cnf(segment, axiom, (segment(Xr,Y,Z) = domain_of(restrict(Xr,Y,singleton(Z)))), file('Problems/NUM/NUM161-1.p',segment)).
cnf(inductive1, axiom, (~ inductive(X) | member(null_class,X)), file('Problems/NUM/NUM161-1.p',inductive1)).
cnf(omega_is_inductive1, axiom, (inductive(omega)), file('Problems/NUM/NUM161-1.p',omega_is_inductive1)).
cnf(ordinal_numbers2, axiom, (~ member(X,ordinal_numbers) | subclass(sum_class(X),X)), file('Problems/NUM/NUM161-1.p',ordinal_numbers2)).
cnf(ordinal_numbers1, axiom, (~ member(X,ordinal_numbers) | well_ordering(element_relation,X)), file('Problems/NUM/NUM161-1.p',ordinal_numbers1)).
cnf(well_ordering1, axiom, (~ well_ordering(X,Y) | connected(X,Y)), file('Problems/NUM/NUM161-1.p',well_ordering1)).
cnf(connected1, axiom, (~ connected(X,Y) | subclass(cross_product(Y,Y),union(identity_relation,symmetrization_of(X)))), file('Problems/NUM/NUM161-1.p',connected1)).
cnf(symmetrization, axiom, (union(X,inverse(X)) = symmetrization_of(X)), file('Problems/NUM/NUM161-1.p',symmetrization)).
cnf(connected2, axiom, (~ subclass(cross_product(Y,Y),union(identity_relation,symmetrization_of(X))) | connected(X,Y)), file('Problems/NUM/NUM161-1.p',connected2)).
cnf(well_ordering2, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | U = null_class | member(least(Xr,U),U)), file('Problems/NUM/NUM161-1.p',well_ordering2)).
cnf(well_ordering4, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | segment(Xr,U,least(Xr,U)) = null_class), file('Problems/NUM/NUM161-1.p',well_ordering4)).
cnf(well_ordering8, axiom, (~ member(V,not_well_ordering(Xr,Y)) | segment(Xr,not_well_ordering(Xr,Y),V) != null_class | ~ connected(Xr,Y) | well_ordering(Xr,Y)), file('Problems/NUM/NUM161-1.p',well_ordering8)).
cnf(well_ordering7, axiom, (~ connected(Xr,Y) | subclass(not_well_ordering(Xr,Y),Y) | well_ordering(Xr,Y)), file('Problems/NUM/NUM161-1.p',well_ordering7)).
cnf(well_ordering6, axiom, (~ connected(Xr,Y) | not_well_ordering(Xr,Y) != null_class | well_ordering(Xr,Y)), file('Problems/NUM/NUM161-1.p',well_ordering6)).
cnf(ordinal_numbers3, axiom, (~ well_ordering(element_relation,X) | ~ subclass(sum_class(X),X) | ~ member(X,universal_class) | member(X,ordinal_numbers)), file('Problems/NUM/NUM161-1.p',ordinal_numbers3)).
cnf(kind_1_ordinals, axiom, (union(singleton(null_class),image(successor_relation,ordinal_numbers)) = kind_1_ordinals), file('Problems/NUM/NUM161-1.p',kind_1_ordinals)).
cnf(successor_relation2, axiom, (~ member(ordered_pair(X,Y),successor_relation) | successor(X) = Y), file('Problems/NUM/NUM161-1.p',successor_relation2)).
cnf(prove_corollary_to_kind_1_ordinals_are_ordinals_1, negated_conjecture, (intersection(ordinal_numbers,kind_1_ordinals) != kind_1_ordinals), file('Problems/NUM/NUM161-1.p',prove_corollary_to_kind_1_ordinals_are_ordinals_1)).
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
cnf(sm1, plain, (~ member(W,Z) | ~ member(Z,X) | member(W,sum_class(X))), inference(lemma,[status(thm)],[mv,cartesian_product3,element_relation3,rsi,d2,sum_class_definition])).
cnf(ub1, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | subclass(union(A,B),sum_class(unordered_pair(A,B)))), inference(lemma,[status(thm)],[un1,sm1,unordered_pair2,unordered_pair3,not_subclass_members1,not_subclass_members2])).
cnf(ub, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | member(union(A,B),universal_class)), inference(lemma,[status(thm)],[ub1,sum_class2,unordered_pairs_in_universal,sep])).
cnf(sv, plain, (~ member(X,universal_class) | member(successor(X),universal_class)), inference(lemma,[status(thm)],[ub,successor,singleton_set,unordered_pairs_in_universal])).
cnf(isub2, plain, (subclass(intersection(X,Y),Y)), inference(lemma,[status(thm)],[intersection2,not_subclass_members1,not_subclass_members2])).
cnf(sm3, plain, (~ member(X,sum_class(Y)) | member(ordered_pair(X,range(restrict(element_relation,universal_class,Y),X,universal_class)),restrict(element_relation,universal_class,Y))), inference(lemma,[status(thm)],[sum_class_definition,d1])).
cnf(sm4, plain, (~ member(X,sum_class(Y)) | member(X,range(restrict(element_relation,universal_class,Y),X,universal_class))), inference(lemma,[status(thm)],[sm3,rsx,element_relation2])).
cnf(sm5, plain, (~ member(X,sum_class(Y)) | member(range(restrict(element_relation,universal_class,Y),X,universal_class),Y)), inference(lemma,[status(thm)],[sm3,rsc,cartesian_product2])).
cnf(sg_a, plain, (~ member(W,segment(X,Y,Z)) | member(ordered_pair(W,Z),X)), inference(lemma,[status(thm)],[segment,d1,rsx,rsc,cartesian_product2,sg1])).
cnf(sg_b, plain, (~ member(W,segment(X,Y,Z)) | member(W,Y)), inference(lemma,[status(thm)],[segment,d1,rsc,cartesian_product1])).
cnf(sg_c, plain, (~ member(W,Y) | ~ member(Z,universal_class) | ~ member(ordered_pair(W,Z),X) | member(W,segment(X,Y,Z))), inference(lemma,[status(thm)],[segment,mv,sg2,cartesian_product3,rsi,d2])).
cnf(nset, plain, (member(null_class,universal_class)), inference(lemma,[status(thm)],[inductive1,omega_is_inductive1,mv])).
cnf(osub, plain, (~ member(X,ordinal_numbers) | ~ member(Y,X) | subclass(Y,X)), inference(lemma,[status(thm)],[ordinal_numbers2,sm1,subclass_members,not_subclass_members1,not_subclass_members2])).
cnf(os_sxx, plain, (~ member(X,universal_class) | member(X,successor(X))), inference(lemma,[status(thm)],[sg2,un3,successor])).
cnf(os_sxs, plain, (subclass(X,successor(X))), inference(lemma,[status(thm)],[un2,successor,not_subclass_members1,not_subclass_members2])).
cnf(os_sux, plain, (~ member(A,successor(X)) | member(A,X) | A = X), inference(lemma,[status(thm)],[successor,un1,sg1])).
cnf(os_usx1, plain, (~ member(X,ordinal_numbers) | ~ member(Z,sum_class(successor(X))) | member(Z,X)), inference(lemma,[status(thm)],[sm4,sm5,os_sux,sm1,ordinal_numbers2,subclass_members])).
cnf(os_usx2, plain, (~ member(X,ordinal_numbers) | ~ member(Z,X) | member(Z,sum_class(successor(X)))), inference(lemma,[status(thm)],[os_sxx,mv,sm1])).
cnf(os_usx, plain, (~ member(X,ordinal_numbers) | sum_class(successor(X)) = X), inference(lemma,[status(thm)],[os_usx1,os_usx2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(os_c1a, plain, (~ member(X,ordinal_numbers) | ~ member(A,X) | ~ member(B,X) | member(ordered_pair(A,B),union(identity_relation,symmetrization_of(element_relation)))), inference(lemma,[status(thm)],[ordinal_numbers1,well_ordering1,connected1,cartesian_product3,subclass_members])).
cnf(os_c1b0, plain, (~ member(X,universal_class) | ~ member(A,X) | member(ordered_pair(A,X),element_relation)), inference(lemma,[status(thm)],[mv,cartesian_product3,element_relation3])).
cnf(os_c1b, plain, (~ member(X,universal_class) | ~ member(A,X) | member(ordered_pair(A,X),union(identity_relation,symmetrization_of(element_relation)))), inference(lemma,[status(thm)],[os_c1b0,symmetrization,un2,un3])).
cnf(os_c1c0, plain, (~ member(X,universal_class) | ~ member(B,X) | member(ordered_pair(X,B),inverse(element_relation))), inference(lemma,[status(thm)],[os_c1b0,mv,i2])).
cnf(os_c1c, plain, (~ member(X,universal_class) | ~ member(B,X) | member(ordered_pair(X,B),union(identity_relation,symmetrization_of(element_relation)))), inference(lemma,[status(thm)],[os_c1c0,symmetrization,un2,un3])).
cnf(os_c1d, plain, (~ member(X,universal_class) | member(ordered_pair(X,X),union(identity_relation,symmetrization_of(element_relation)))), inference(lemma,[status(thm)],[id2,un2])).
cnf(os_c1, plain, (~ member(X,ordinal_numbers) | ~ member(A,successor(X)) | ~ member(B,successor(X)) | member(ordered_pair(A,B),union(identity_relation,symmetrization_of(element_relation)))), inference(lemma,[status(thm)],[os_sux,os_c1a,os_c1b,os_c1c,os_c1d,mv])).
cnf(os_conn, plain, (~ member(X,ordinal_numbers) | connected(element_relation,successor(X))), inference(lemma,[status(thm)],[os_c1,cpw,cpf,cps,not_subclass_members1,not_subclass_members2,connected2])).
cnf(os_d2, plain, (~ member(X,ordinal_numbers) | intersection(not_well_ordering(element_relation,successor(X)),X) = null_class | member(least(element_relation,intersection(not_well_ordering(element_relation,successor(X)),X)),intersection(not_well_ordering(element_relation,successor(X)),X))), inference(lemma,[status(thm)],[ordinal_numbers1,isub2,well_ordering2])).
cnf(os_d3, plain, (~ member(X,ordinal_numbers) | segment(element_relation,intersection(not_well_ordering(element_relation,successor(X)),X),least(element_relation,intersection(not_well_ordering(element_relation,successor(X)),X))) = null_class), inference(lemma,[status(thm)],[ordinal_numbers1,isub2,well_ordering4])).
cnf(os_d4a, plain, (~ member(X,ordinal_numbers) | intersection(not_well_ordering(element_relation,successor(X)),X) = null_class | ~ member(W,segment(element_relation,not_well_ordering(element_relation,successor(X)),least(element_relation,intersection(not_well_ordering(element_relation,successor(X)),X)))) | member(W,segment(element_relation,intersection(not_well_ordering(element_relation,successor(X)),X),least(element_relation,intersection(not_well_ordering(element_relation,successor(X)),X))))), inference(lemma,[status(thm)],[sg_a,sg_b,element_relation2,os_d2,intersection2,osub,subclass_members,intersection3,mv,sg_c])).
cnf(os_d4, plain, (~ member(X,ordinal_numbers) | intersection(not_well_ordering(element_relation,successor(X)),X) = null_class | segment(element_relation,not_well_ordering(element_relation,successor(X)),least(element_relation,intersection(not_well_ordering(element_relation,successor(X)),X))) = null_class), inference(lemma,[status(thm)],[os_d4a,os_d3,nl,nsn])).
cnf(os_d5, plain, (~ member(X,ordinal_numbers) | intersection(not_well_ordering(element_relation,successor(X)),X) = null_class | well_ordering(element_relation,successor(X))), inference(lemma,[status(thm)],[os_d2,os_d4,intersection1,well_ordering8,os_conn])).
cnf(os_d6, plain, (intersection(not_well_ordering(element_relation,successor(X)),X) != null_class | segment(element_relation,not_well_ordering(element_relation,successor(X)),X) = null_class), inference(lemma,[status(thm)],[sg_a,sg_b,element_relation2,intersection3,nl,nsn])).
cnf(os_d7, plain, (~ member(X,ordinal_numbers) | intersection(not_well_ordering(element_relation,successor(X)),X) != null_class | not_well_ordering(element_relation,successor(X)) = null_class | well_ordering(element_relation,successor(X)) | member(X,not_well_ordering(element_relation,successor(X)))), inference(lemma,[status(thm)],[nsn,well_ordering7,os_conn,subclass_members,os_sux,intersection3,nl])).
cnf(os_d8, plain, (~ member(X,ordinal_numbers) | intersection(not_well_ordering(element_relation,successor(X)),X) != null_class | well_ordering(element_relation,successor(X))), inference(lemma,[status(thm)],[os_d6,os_d7,well_ordering6,os_conn,well_ordering8])).
cnf(os_osuc, plain, (~ member(X,ordinal_numbers) | member(successor(X),ordinal_numbers)), inference(lemma,[status(thm)],[os_d5,os_d8,os_usx,os_sxs,mv,sv,ordinal_numbers3])).
cnf(k1_e0a, plain, (subclass(sum_class(null_class),null_class)), inference(lemma,[status(thm)],[sm4,sm5,nl,not_subclass_members1,not_subclass_members2])).
cnf(k1_e0b, plain, (connected(element_relation,null_class)), inference(lemma,[status(thm)],[cpf,nl,not_subclass_members1,not_subclass_members2,connected2])).
cnf(k1_e0c, plain, (well_ordering(element_relation,null_class)), inference(lemma,[status(thm)],[k1_e0b,well_ordering7,sn,well_ordering6])).
cnf(k1_e0, plain, (member(null_class,ordinal_numbers)), inference(lemma,[status(thm)],[k1_e0a,k1_e0c,nset,ordinal_numbers3])).
cnf(k1_a, plain, (~ member(W,kind_1_ordinals) | member(W,ordinal_numbers)), inference(lemma,[status(thm)],[kind_1_ordinals,un1,sg1,k1_e0,im1x,im1a,successor_relation2,os_osuc])).
cnf(n161_e, plain, (intersection(ordinal_numbers,kind_1_ordinals) = kind_1_ordinals), inference(lemma,[status(thm)],[k1_a,intersection3,isub2,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[n161_e,prove_corollary_to_kind_1_ordinals_are_ordinals_1])).
% SZS output end CNFRefutation for NUM161-1
%------------------------------------------------------------------------------
