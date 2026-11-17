%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM092-1 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for NUM092-1
% SZS output start CNFRefutation for NUM092-1
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/NUM/NUM092-1.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/NUM/NUM092-1.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/NUM/NUM092-1.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/NUM/NUM092-1.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/NUM/NUM092-1.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/NUM/NUM092-1.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/NUM/NUM092-1.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/NUM/NUM092-1.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/NUM/NUM092-1.p',subclass_members)).
cnf(not_subclass_members1, axiom, (member(not_subclass_element(X,Y),X) | subclass(X,Y)), file('Problems/NUM/NUM092-1.p',not_subclass_members1)).
cnf(subclass_implies_equal, axiom, (~ subclass(X,Y) | ~ subclass(Y,X) | X = Y), file('Problems/NUM/NUM092-1.p',subclass_implies_equal)).
cnf(restriction1, axiom, (intersection(Xr,cross_product(X,Y)) = restrict(Xr,X,Y)), file('Problems/NUM/NUM092-1.p',restriction1)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/NUM/NUM092-1.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/NUM/NUM092-1.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/NUM/NUM092-1.p',unordered_pair2)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/NUM/NUM092-1.p',cartesian_product4)).
cnf(cartesian_product1, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(U,X)), file('Problems/NUM/NUM092-1.p',cartesian_product1)).
cnf(domain1, axiom, (restrict(X,singleton(Z),universal_class) != null_class | ~ member(Z,domain_of(X))), file('Problems/NUM/NUM092-1.p',domain1)).
cnf(range, axiom, (second(not_subclass_element(restrict(Z,singleton(X),Y),null_class)) = range(Z,X,Y)), file('Problems/NUM/NUM092-1.p',range)).
cnf(domain2, axiom, (~ member(Z,universal_class) | restrict(X,singleton(Z),universal_class) = null_class | member(Z,domain_of(X))), file('Problems/NUM/NUM092-1.p',domain2)).
cnf(cartesian_product3, axiom, (~ member(U,X) | ~ member(V,Y) | member(ordered_pair(U,V),cross_product(X,Y))), file('Problems/NUM/NUM092-1.p',cartesian_product3)).
cnf(inverse, axiom, (domain_of(flip(cross_product(Y,universal_class))) = inverse(Y)), file('Problems/NUM/NUM092-1.p',inverse)).
cnf(flip2, axiom, (~ member(ordered_pair(ordered_pair(U,V),W),flip(X)) | member(ordered_pair(ordered_pair(V,U),W),X)), file('Problems/NUM/NUM092-1.p',flip2)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/NUM/NUM092-1.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/NUM/NUM092-1.p',ordered_pair)).
cnf(flip3, axiom, (~ member(ordered_pair(ordered_pair(V,U),W),X) | ~ member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class)) | member(ordered_pair(ordered_pair(U,V),W),flip(X))), file('Problems/NUM/NUM092-1.p',flip3)).
cnf(range_of, axiom, (domain_of(inverse(Z)) = range_of(Z)), file('Problems/NUM/NUM092-1.p',range_of)).
cnf(image, axiom, (range_of(restrict(Xr,X,universal_class)) = image(Xr,X)), file('Problems/NUM/NUM092-1.p',image)).
cnf(union, axiom, (complement(intersection(complement(X),complement(Y))) = union(X,Y)), file('Problems/NUM/NUM092-1.p',union)).
cnf(compose3, axiom, (~ member(Z,image(Yr,image(Xr,singleton(Y)))) | ~ member(ordered_pair(Y,Z),cross_product(universal_class,universal_class)) | member(ordered_pair(Y,Z),compose(Yr,Xr))), file('Problems/NUM/NUM092-1.p',compose3)).
cnf(cartesian_product2, axiom, (~ member(ordered_pair(U,V),cross_product(X,Y)) | member(V,Y)), file('Problems/NUM/NUM092-1.p',cartesian_product2)).
cnf(subset_relation, axiom, (intersection(cross_product(universal_class,universal_class),intersection(cross_product(universal_class,universal_class),complement(compose(complement(element_relation),inverse(element_relation))))) = subset_relation), file('Problems/NUM/NUM092-1.p',subset_relation)).
cnf(element_relation3, axiom, (~ member(ordered_pair(X,Y),cross_product(universal_class,universal_class)) | ~ member(X,Y) | member(ordered_pair(X,Y),element_relation)), file('Problems/NUM/NUM092-1.p',element_relation3)).
cnf(element_relation2, axiom, (~ member(ordered_pair(X,Y),element_relation) | member(X,Y)), file('Problems/NUM/NUM092-1.p',element_relation2)).
cnf(not_subclass_members2, axiom, (~ member(not_subclass_element(X,Y),Y) | subclass(X,Y)), file('Problems/NUM/NUM092-1.p',not_subclass_members2)).
cnf(identity_relation, axiom, (intersection(inverse(subset_relation),subset_relation) = identity_relation), file('Problems/NUM/NUM092-1.p',identity_relation)).
cnf(well_ordering3, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | member(least(Xr,U),U)), file('Problems/NUM/NUM092-1.p',well_ordering3)).
cnf(well_ordering5, axiom, (~ well_ordering(Xr,Y) | ~ subclass(U,Y) | ~ member(V,U) | ~ member(ordered_pair(V,least(Xr,U)),Xr)), file('Problems/NUM/NUM092-1.p',well_ordering5)).
cnf(unordered_pair3, axiom, (~ member(Y,universal_class) | member(Y,unordered_pair(X,Y))), file('Problems/NUM/NUM092-1.p',unordered_pair3)).
cnf(connected1, axiom, (~ connected(X,Y) | subclass(cross_product(Y,Y),union(identity_relation,symmetrization_of(X)))), file('Problems/NUM/NUM092-1.p',connected1)).
cnf(symmetrization, axiom, (union(X,inverse(X)) = symmetrization_of(X)), file('Problems/NUM/NUM092-1.p',symmetrization)).
cnf(well_ordering1, axiom, (~ well_ordering(X,Y) | connected(X,Y)), file('Problems/NUM/NUM092-1.p',well_ordering1)).
cnf(segment, axiom, (segment(Xr,Y,Z) = domain_of(restrict(Xr,Y,singleton(Z)))), file('Problems/NUM/NUM092-1.p',segment)).
cnf(section3, axiom, (~ subclass(Y,Z) | ~ subclass(domain_of(restrict(Xr,Z,Y)),Y) | section(Xr,Y,Z)), file('Problems/NUM/NUM092-1.p',section3)).
cnf(prove_corollary_1_to_sections_property2_1, negated_conjecture, (well_ordering(xr,y)), file('Problems/NUM/NUM092-1.p',prove_corollary_1_to_sections_property2_1)).
cnf(prove_corollary_1_to_sections_property2_2, negated_conjecture, (member(u,y)), file('Problems/NUM/NUM092-1.p',prove_corollary_1_to_sections_property2_2)).
cnf(prove_corollary_1_to_sections_property2_3, negated_conjecture, (~ section(xr,segment(xr,y,u),y)), file('Problems/NUM/NUM092-1.p',prove_corollary_1_to_sections_property2_3)).
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
cnf(r2, plain, (~ member(Z,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(W,Z),X) | member(Z,range_of(X))), inference(lemma,[status(thm)],[range_of,d2,i2])).
cnf(im2, plain, (~ member(Z,universal_class) | ~ member(W,A) | ~ member(ordered_pair(W,Z),X) | member(Z,image(X,A))), inference(lemma,[status(thm)],[image,r2,rsi,cartesian_product3,mv])).
cnf(un1, plain, (~ member(Z,union(X,Y)) | member(Z,X) | member(Z,Y)), inference(lemma,[status(thm)],[union,complement1,complement2,intersection3,mv])).
cnf(un2, plain, (~ member(Z,X) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection1,mv])).
cnf(un3, plain, (~ member(Z,Y) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection2,mv])).
cnf(is2, plain, (~ member(Y,universal_class) | ~ member(W,universal_class) | ~ member(ordered_pair(Y,W),B) | member(W,image(B,singleton(Y)))), inference(lemma,[status(thm)],[im2,sg2])).
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
cnf(wa1, plain, (~ member(A,Y) | ~ member(B,Y) | subclass(unordered_pair(A,B),Y)), inference(lemma,[status(thm)],[unordered_pair_member,not_subclass_members1,not_subclass_members2])).
cnf(wa2, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | member(least(X,unordered_pair(A,B)),unordered_pair(A,B))), inference(lemma,[status(thm)],[wa1,well_ordering3,unordered_pair2,mv])).
cnf(wa3, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | least(X,unordered_pair(A,B)) = A | least(X,unordered_pair(A,B)) = B), inference(lemma,[status(thm)],[wa2,unordered_pair_member])).
cnf(wa, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | ~ member(ordered_pair(A,B),X) | ~ member(ordered_pair(B,A),X)), inference(lemma,[status(thm)],[wa1,wa3,well_ordering5,unordered_pair2,unordered_pair3,mv])).
cnf(wt1, plain, (~ connected(X,Y) | ~ member(A,Y) | ~ member(C,Y) | A = C | member(ordered_pair(A,C),X) | member(ordered_pair(C,A),X)), inference(lemma,[status(thm)],[connected1,cartesian_product3,subclass_members,un1,id1,symmetrization,i1])).
cnf(wt2, plain, (~ member(A,Y) | ~ member(B,Y) | ~ member(C,Y) | subclass(union(unordered_pair(A,B),singleton(C)),Y)), inference(lemma,[status(thm)],[un1,unordered_pair_member,sg1,not_subclass_members1,not_subclass_members2])).
cnf(wt3, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | ~ member(C,Y) | member(least(X,union(unordered_pair(A,B),singleton(C))),union(unordered_pair(A,B),singleton(C)))), inference(lemma,[status(thm)],[well_ordering3,wt2,un2,unordered_pair2,mv])).
cnf(wt4, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | ~ member(C,Y) | least(X,union(unordered_pair(A,B),singleton(C))) = A | least(X,union(unordered_pair(A,B),singleton(C))) = B | least(X,union(unordered_pair(A,B),singleton(C))) = C), inference(lemma,[status(thm)],[wt3,un1,unordered_pair_member,sg1])).
cnf(wt5a, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | ~ member(C,universal_class) | member(A,union(unordered_pair(A,B),singleton(C)))), inference(lemma,[status(thm)],[unordered_pair2,un2])).
cnf(wt5b, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | ~ member(C,universal_class) | member(B,union(unordered_pair(A,B),singleton(C)))), inference(lemma,[status(thm)],[unordered_pair3,un2])).
cnf(wt5c, plain, (~ member(A,universal_class) | ~ member(B,universal_class) | ~ member(C,universal_class) | member(C,union(unordered_pair(A,B),singleton(C)))), inference(lemma,[status(thm)],[sg2,un3])).
cnf(wt5, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | ~ member(C,Y) | ~ member(ordered_pair(A,B),X) | ~ member(ordered_pair(B,C),X) | ~ member(ordered_pair(C,A),X)), inference(lemma,[status(thm)],[wt4,wt2,well_ordering5,wt5a,wt5b,wt5c,mv])).
cnf(wt, plain, (~ well_ordering(X,Y) | ~ member(A,Y) | ~ member(B,Y) | ~ member(C,Y) | ~ member(ordered_pair(A,B),X) | ~ member(ordered_pair(B,C),X) | member(ordered_pair(A,C),X)), inference(lemma,[status(thm)],[wt1,well_ordering1,wa,wt5])).
cnf(sg_a, plain, (~ member(W,segment(X,Y,Z)) | member(ordered_pair(W,Z),X)), inference(lemma,[status(thm)],[segment,d1,rsx,rsc,cartesian_product2,sg1])).
cnf(sg_b, plain, (~ member(W,segment(X,Y,Z)) | member(W,Y)), inference(lemma,[status(thm)],[segment,d1,rsc,cartesian_product1])).
cnf(sg_c, plain, (~ member(W,Y) | ~ member(Z,universal_class) | ~ member(ordered_pair(W,Z),X) | member(W,segment(X,Y,Z))), inference(lemma,[status(thm)],[segment,mv,sg2,cartesian_product3,rsi,d2])).
cnf(dsec, plain, (~ member(W,domain_of(restrict(X,Y,S))) | member(ordered_pair(W,range(restrict(X,Y,S),W,universal_class)),X)), inference(lemma,[status(thm)],[d1,rsx])).
cnf(dsec2, plain, (~ member(W,domain_of(restrict(X,Y,S))) | member(W,Y)), inference(lemma,[status(thm)],[d1,rsc,cartesian_product1])).
cnf(dsec3, plain, (~ member(W,domain_of(restrict(X,Y,S))) | member(range(restrict(X,Y,S),W,universal_class),S)), inference(lemma,[status(thm)],[d1,rsc,cartesian_product2])).
cnf(n092_a, plain, (~ well_ordering(X,Y) | ~ member(U,Y) | ~ member(W,domain_of(restrict(X,Y,segment(X,Y,U)))) | member(W,segment(X,Y,U))), inference(lemma,[status(thm)],[dsec,dsec2,dsec3,sg_a,sg_b,wt,mv,sg_c])).
cnf(n092_b, plain, (subclass(segment(X,Y,U),Y)), inference(lemma,[status(thm)],[sg_b,not_subclass_members1,not_subclass_members2])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[n092_a,n092_b,not_subclass_members1,not_subclass_members2,section3,prove_corollary_1_to_sections_property2_1,prove_corollary_1_to_sections_property2_2,prove_corollary_1_to_sections_property2_3])).
% SZS output end CNFRefutation for NUM092-1
%------------------------------------------------------------------------------
