%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM244-1 : TPTP v10.0.0. Bugfixed v2.1.0.
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
%            specific calculus rule). Notes: With the fixed axioms the conjecture does not follow
%            (Lean model): rest(x) occurs in no axiom (NUM259-2's transfinite_recursion_lemma11 has
%            rest_of(x)); same model as for NUM243-1. Suggested fix (not checked): rest_of(x) for
%            rest(x)
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for NUM244-1
% SZS output start CNFRefutation for NUM244-1
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM244-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM244-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM244-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM244-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM244-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM244-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM244-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM244-1.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM244-1.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM244-1.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM244-1.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM244-1.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/NUM/NUM244-1.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM244-1.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM244-1.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/NUM/NUM244-1.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM244-1.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM244-1.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/NUM/NUM244-1.p',range)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM244-1.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM244-1.p',cartesian_product3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/NUM/NUM244-1.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/NUM/NUM244-1.p',flip2)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/NUM/NUM244-1.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM244-1.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/NUM/NUM244-1.p',flip3)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/NUM/NUM244-1.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/NUM/NUM244-1.p',image)).
cnf(compose2, axiom, (~ member(ordered_pair(Y,Z),compose(Yr,Xr)) | member(Z,image(Yr,image(Xr,singleton(Y))))), file('Problems/NUM/NUM244-1.p',compose2)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/NUM/NUM244-1.p',compose3)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM244-1.p',cartesian_product2)).
cnf(subset_relation, axiom, (intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))) = subset_relation), file('Problems/NUM/NUM244-1.p',subset_relation)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/NUM/NUM244-1.p',element_relation3)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/NUM/NUM244-1.p',element_relation2)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM244-1.p',not_subclass_members2)).
cnf(identity_relation, axiom, (intersection(inverse(subset_relation),subset_relation) = identity_relation), file('Problems/NUM/NUM244-1.p',identity_relation)).
cnf(compose1, axiom, (subclass(compose(Yr,Xr),cross_product(universal_class,universal_class))), file('Problems/NUM/NUM244-1.p',compose1)).
cnf(function3, axiom, (~ subclass(Xf,cross_product(universal_class,universal_class)) | ~ subclass(compose(Xf,inverse(Xf)),identity_relation) | function(Xf)), file('Problems/NUM/NUM244-1.p',function3)).
cnf(replacement, axiom, (~ function(Xf) | ~ member(X,universal_class) | member(image(Xf,X),universal_class)), file('Problems/NUM/NUM244-1.p',replacement)).
cnf(sum_class_definition, axiom, (domain_of(restrict(element_relation,universal_class,X)) = sum_class(X)), file('Problems/NUM/NUM244-1.p',sum_class_definition)).
cnf(unordered_pair3, axiom, (~ member(Y,universal_class) | member(Y,unordered_pair(X,Y))), file('Problems/NUM/NUM244-1.p',unordered_pair3)).
cnf(sum_class2, axiom, (~ member(X,universal_class) | member(sum_class(X),universal_class)), file('Problems/NUM/NUM244-1.p',sum_class2)).
cnf(inductive1, axiom, (~ inductive(X) | member(null_class,X)), file('Problems/NUM/NUM244-1.p',inductive1)).
cnf(omega_is_inductive1, axiom, (inductive(omega)), file('Problems/NUM/NUM244-1.p',omega_is_inductive1)).
cnf(rest_of4, axiom, (~ member(U,domain_of(X)) | restrict(X,U,universal_class) != V | member(ordered_pair(U,V),rest_of(X))), file('Problems/NUM/NUM244-1.p',rest_of4)).
cnf(rest_of1, axiom, (subclass(rest_of(X),cross_product(universal_class,universal_class))), file('Problems/NUM/NUM244-1.p',rest_of1)).
cnf(diagonalisation, axiom, (complement(domain_of(intersection(Xr,identity_relation))) = diagonalise(Xr)), file('Problems/NUM/NUM244-1.p',diagonalisation)).
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
cnf(opm2, plain, (member(unordered_pair(Z,singleton(W)),ordered_pair(Z,W))), inference(lemma,[status(thm)],[ordered_pair,unordered_pair3,unordered_pairs_in_universal])).
cnf(rss1, plain, (~ member(Z,range_of(X)) | member(unordered_pair(range(inverse(X),Z,universal_class),singleton(Z)),sum_class(X))), inference(lemma,[status(thm)],[r1,opm2,sm1])).
cnf(rss1b, plain, (~ member(Z,range_of(X)) | member(singleton(Z),sum_class(sum_class(X)))), inference(lemma,[status(thm)],[rss1,unordered_pair3,unordered_pairs_in_universal,singleton_set,sm1])).
cnf(rss2, plain, (~ member(Z,range_of(X)) | member(Z,sum_class(sum_class(sum_class(X))))), inference(lemma,[status(thm)],[rss1b,mv,sg2,sm1])).
cnf(rsss, plain, (subclass(range_of(X),sum_class(sum_class(sum_class(X))))), inference(lemma,[status(thm)],[rss2,not_subclass_members1,not_subclass_members2])).
cnf(rset, plain, (~ member(X,universal_class) | member(range_of(X),universal_class)), inference(lemma,[status(thm)],[rsss,sum_class2,sep])).
cnf(dJ1, plain, (~ member(Z,domain_of(intersection(Y,identity_relation))) | member(ordered_pair(Z,Z),Y)), inference(lemma,[status(thm)],[d1,intersection1,intersection2,id1])).
cnf(dJ2, plain, (~ member(Z,universal_class) | ~ member(ordered_pair(Z,Z),Y) | member(Z,domain_of(intersection(Y,identity_relation)))), inference(lemma,[status(thm)],[id2,intersection3,d2])).
cnf(nset, plain, (member(null_class,universal_class)), inference(lemma,[status(thm)],[inductive1,omega_is_inductive1,mv])).
cnf(rx_1, plain, (member(singleton(null_class),universal_class)), inference(lemma,[status(thm)],[unordered_pairs_in_universal,singleton_set])).
cnf(rx_2, plain, (member(singleton(null_class),domain_of(cross_product(universal_class,universal_class)))), inference(lemma,[status(thm)],[rx_1,nset,cartesian_product3,d2])).
cnf(rx_3, plain, (member(ordered_pair(singleton(null_class),restrict(cross_product(universal_class,universal_class),singleton(null_class),universal_class)),rest_of(cross_product(universal_class,universal_class)))), inference(lemma,[status(thm)],[rx_2,rest_of4])).
cnf(rx_4, plain, (member(restrict(cross_product(universal_class,universal_class),singleton(null_class),universal_class),universal_class)), inference(lemma,[status(thm)],[rx_3,rest_of1,subclass_members,cartesian_product2])).
cnf(rx_5a, plain, (~ member(Z,universal_class) | member(ordered_pair(null_class,Z),restrict(cross_product(universal_class,universal_class),singleton(null_class),universal_class))), inference(lemma,[status(thm)],[nset,sg2,cartesian_product3,rsi])).
cnf(rx_5, plain, (subclass(universal_class,range_of(restrict(cross_product(universal_class,universal_class),singleton(null_class),universal_class)))), inference(lemma,[status(thm)],[rx_5a,nset,r2,not_subclass_members1,not_subclass_members2])).
cnf(rx_6, plain, (member(universal_class,universal_class)), inference(lemma,[status(thm)],[rx_4,rset,rx_5,sep])).
cnf(rx_7a, plain, (~ member(X,universal_class) | ~ member(X,diagonalise(element_relation)) | ~ member(X,X)), inference(lemma,[status(thm)],[diagonalisation,complement1,dJ2,cartesian_product3,element_relation3])).
cnf(rx_7b, plain, (~ member(X,universal_class) | member(X,diagonalise(element_relation)) | member(X,X)), inference(lemma,[status(thm)],[diagonalisation,complement2,dJ1,element_relation2])).
cnf(rx_7, plain, (member(diagonalise(element_relation),universal_class)), inference(lemma,[status(thm)],[rx_6,class_elements_are_sets,sep])).
cnf(rx_false, plain, ($false), inference(lemma,[status(thm)],[rx_7,rx_7a,rx_7b])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[rx_false])).
% SZS output end CNFRefutation for NUM244-1
%------------------------------------------------------------------------------
