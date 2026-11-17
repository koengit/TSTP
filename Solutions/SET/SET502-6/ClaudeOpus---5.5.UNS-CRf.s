%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SET502-6 : TPTP v10.0.0. Bugfixed v2.1.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : SUGGESTED CHANGE: Satisfiable -> Unsatisfiable (TPTP v10.0.0 status is Satisfiable; this
%            file is a verified cnfrefutation)

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
% SZS status Unsatisfiable for SET502-6
% SZS output start CNFRefutation for SET502-6
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/SET/SET502-6.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/SET/SET502-6.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/SET/SET502-6.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/SET/SET502-6.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/SET/SET502-6.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/SET/SET502-6.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/SET/SET502-6.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/SET/SET502-6.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/SET/SET502-6.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/SET/SET502-6.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/SET/SET502-6.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/SET/SET502-6.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/SET/SET502-6.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/SET/SET502-6.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/SET/SET502-6.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/SET/SET502-6.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/SET/SET502-6.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/SET/SET502-6.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/SET/SET502-6.p',range)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/SET/SET502-6.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/SET/SET502-6.p',cartesian_product3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/SET/SET502-6.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/SET/SET502-6.p',flip2)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/SET/SET502-6.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/SET/SET502-6.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/SET/SET502-6.p',flip3)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/SET/SET502-6.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/SET/SET502-6.p',image)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/SET/SET502-6.p',cartesian_product2)).
cnf(compose2, axiom, (~ member(ordered_pair(Y,Z),compose(Yr,Xr)) | member(Z,image(Yr,image(Xr,singleton(Y))))), file('Problems/SET/SET502-6.p',compose2)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/SET/SET502-6.p',compose3)).
cnf(subset_relation, axiom, (intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))) = subset_relation), file('Problems/SET/SET502-6.p',subset_relation)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/SET/SET502-6.p',element_relation3)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/SET/SET502-6.p',element_relation2)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/SET/SET502-6.p',not_subclass_members2)).
cnf(identity_relation, axiom, (intersection(inverse(subset_relation),subset_relation) = identity_relation), file('Problems/SET/SET502-6.p',identity_relation)).
cnf(diagonalisation, axiom, (complement(domain_of(intersection(Xr,identity_relation))) = diagonalise(Xr)), file('Problems/SET/SET502-6.p',diagonalisation)).
cnf(prove_diagonalization_property3_1, negated_conjecture, (diagonalise(compose(xr,inverse(xs))) != complement(range_of(intersection(xr,xs)))), file('Problems/SET/SET502-6.p',prove_diagonalization_property3_1)).
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
cnf(k1a, plain, (~ member(ordered_pair(Z,W),intersection(C,identity_relation)) | Z = W), inference(lemma,[status(thm)],[intersection2,id1])).
cnf(k1b, plain, (~ member(ordered_pair(Z,W),intersection(C,identity_relation)) | member(Z,universal_class)), inference(lemma,[status(thm)],[intersection2,idc,pvv1])).
cnf(k1c, plain, (~ member(ordered_pair(Z,Z),compose(A,inverse(B))) | member(ordered_pair(range(inverse(restrict(A,image(inverse(B),singleton(Z)),universal_class)),Z,universal_class),Z),intersection(A,B))), inference(lemma,[status(thm)],[co1a,co1b,i1,intersection3])).
cnf(k1d, plain, (~ member(ordered_pair(Z,Z),compose(A,inverse(B))) | member(range(inverse(restrict(A,image(inverse(B),singleton(Z)),universal_class)),Z,universal_class),universal_class)), inference(lemma,[status(thm)],[co1s])).
cnf(k1, plain, (~ member(ordered_pair(Z,W),intersection(compose(A,inverse(B)),identity_relation)) | member(Z,range_of(intersection(A,B)))), inference(lemma,[status(thm)],[k1a,k1b,k1c,k1d,intersection1,r2])).
cnf(k2, plain, (~ member(Z,domain_of(intersection(compose(A,inverse(B)),identity_relation))) | member(Z,range_of(intersection(A,B)))), inference(lemma,[status(thm)],[d1,k1])).
cnf(k3a, plain, (~ member(Z,range_of(intersection(A,B))) | member(ordered_pair(Z,Z),compose(A,inverse(B)))), inference(lemma,[status(thm)],[r1,r1s,mv,intersection1,intersection2,i2,co2])).
cnf(k3, plain, (~ member(Z,range_of(intersection(A,B))) | member(Z,domain_of(intersection(compose(A,inverse(B)),identity_relation)))), inference(lemma,[status(thm)],[k3a,id2,intersection3,mv,d2])).
cnf(k4, plain, (domain_of(intersection(compose(A,inverse(B)),identity_relation)) = range_of(intersection(A,B))), inference(lemma,[status(thm)],[k2,k3,not_subclass_members1,not_subclass_members2,subclass_implies_equal])).
cnf(k5, plain, (diagonalise(compose(A,inverse(B))) = complement(range_of(intersection(A,B)))), inference(lemma,[status(thm)],[k4,diagonalisation])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[k5,prove_diagonalization_property3_1])).
% SZS output end CNFRefutation for SET502-6
%------------------------------------------------------------------------------
