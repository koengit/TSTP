%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SET522-6 : TPTP v10.0.0. Bugfixed v2.1.0.
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
% SZS status Unsatisfiable for SET522-6
% SZS output start CNFRefutation for SET522-6
cnf(regularity1, axiom, (X = null_class | member(regular(X),X)), file('Problems/SET/SET522-6.p',regularity1)).
cnf(regularity2, axiom, (X = null_class | intersection(X,regular(X)) = null_class), file('Problems/SET/SET522-6.p',regularity2)).
cnf(intersection1, axiom, (~ member(Z,intersection(X,Y)) | member(Z,X)), file('Problems/SET/SET522-6.p',intersection1)).
cnf(intersection2, axiom, (~ member(Z,intersection(X,Y)) | member(Z,Y)), file('Problems/SET/SET522-6.p',intersection2)).
cnf(intersection3, axiom, (~ member(Z,X) | ~ member(Z,Y) | member(Z,intersection(X,Y))), file('Problems/SET/SET522-6.p',intersection3)).
cnf(complement1, axiom, (~ member(Z,complement(X)) | ~ member(Z,X)), file('Problems/SET/SET522-6.p',complement1)).
cnf(complement2, axiom, (~ member(Z,universal_class) | member(Z,complement(X)) | member(Z,X)), file('Problems/SET/SET522-6.p',complement2)).
cnf(class_elements_are_sets, axiom, (subclass(X,universal_class)), file('Problems/SET/SET522-6.p',class_elements_are_sets)).
cnf(subclass_members, axiom, (~ subclass(X,Y) | ~ member(U,X) | member(U,Y)), file('Problems/SET/SET522-6.p',subclass_members)).
cnf(unordered_pair_member, axiom, (~ member(U,unordered_pair(X,Y)) | U = X | U = Y), file('Problems/SET/SET522-6.p',unordered_pair_member)).
cnf(singleton_set, axiom, (unordered_pair(X,X) = singleton(X)), file('Problems/SET/SET522-6.p',singleton_set)).
cnf(unordered_pair2, axiom, (~ member(X,universal_class) | member(X,unordered_pair(X,Y))), file('Problems/SET/SET522-6.p',unordered_pair2)).
cnf(union, axiom, (complement(intersection(complement(X),complement(Y))) = union(X,Y)), file('Problems/SET/SET522-6.p',union)).
cnf(unordered_pairs_in_universal, axiom, (member(unordered_pair(X,Y),universal_class)), file('Problems/SET/SET522-6.p',unordered_pairs_in_universal)).
cnf(ordered_pair, axiom, (unordered_pair(singleton(X),unordered_pair(X,singleton(Y))) = ordered_pair(X,Y)), file('Problems/SET/SET522-6.p',ordered_pair)).
cnf(unordered_pair3, axiom, (~ member(Y,universal_class) | member(Y,unordered_pair(X,Y))), file('Problems/SET/SET522-6.p',unordered_pair3)).
cnf(cartesian_product4, axiom, (~ member(Z,cross_product(X,Y)) | ordered_pair(first(Z),second(Z)) = Z), file('Problems/SET/SET522-6.p',cartesian_product4)).
cnf(prove_ordered_pair_determines_components2_2, negated_conjecture, (member(ordered_pair(x,y),cross_product(universal_class,universal_class))), file('Problems/SET/SET522-6.p',prove_ordered_pair_determines_components2_2)).
cnf(prove_ordered_pair_determines_components2_1, negated_conjecture, (second(ordered_pair(x,y)) = ordered_pair(x,y)), file('Problems/SET/SET522-6.p',prove_ordered_pair_determines_components2_1)).
cnf(nl, plain, (~ member(Z,null_class)), inference(lemma,[status(thm)],[regularity1,regularity2,intersection1,intersection2,intersection3,complement1,complement2,class_elements_are_sets,subclass_members])).
cnf(sg1, plain, (~ member(U,singleton(Z)) | U = Z), inference(lemma,[status(thm)],[unordered_pair_member,singleton_set])).
cnf(sg2, plain, (~ member(Z,universal_class) | member(Z,singleton(Z))), inference(lemma,[status(thm)],[unordered_pair2,singleton_set])).
cnf(mv, plain, (~ member(Z,X) | member(Z,universal_class)), inference(lemma,[status(thm)],[class_elements_are_sets,subclass_members])).
cnf(un1, plain, (~ member(Z,union(X,Y)) | member(Z,X) | member(Z,Y)), inference(lemma,[status(thm)],[union,complement1,complement2,intersection3,mv])).
cnf(un2, plain, (~ member(Z,X) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection1,mv])).
cnf(un3, plain, (~ member(Z,Y) | member(Z,union(X,Y))), inference(lemma,[status(thm)],[union,complement1,complement2,intersection2,mv])).
cnf(rg_y, plain, (ordered_pair(X,Y) != Y | member(Y,universal_class)), inference(lemma,[status(thm)],[unordered_pairs_in_universal,ordered_pair])).
cnf(rg_e1, plain, (ordered_pair(X,Y) != Y | member(Y,union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y)))))), inference(lemma,[status(thm)],[rg_y,unordered_pair2,un2])).
cnf(rg_e2, plain, (ordered_pair(X,Y) != Y | member(singleton(Y),union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y)))))), inference(lemma,[status(thm)],[unordered_pairs_in_universal,singleton_set,unordered_pair3,un2])).
cnf(rg_e3, plain, (member(unordered_pair(X,singleton(Y)),union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y)))))), inference(lemma,[status(thm)],[unordered_pairs_in_universal,sg2,un3])).
cnf(rg_m1, plain, (ordered_pair(X,Y) != Y | member(Y,singleton(Y))), inference(lemma,[status(thm)],[rg_y,sg2])).
cnf(rg_m2, plain, (member(singleton(Y),unordered_pair(X,singleton(Y)))), inference(lemma,[status(thm)],[unordered_pairs_in_universal,singleton_set,unordered_pair3])).
cnf(rg_m3, plain, (ordered_pair(X,Y) != Y | member(unordered_pair(X,singleton(Y)),Y)), inference(lemma,[status(thm)],[unordered_pairs_in_universal,unordered_pair3,ordered_pair])).
cnf(rg_r, plain, (member(regular(union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y))))),union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y)))))), inference(lemma,[status(thm)],[rg_e3,nl,regularity1])).
cnf(rg_c, plain, (regular(union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y))))) = Y | regular(union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y))))) = singleton(Y) | regular(union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y))))) = unordered_pair(X,singleton(Y))), inference(lemma,[status(thm)],[rg_r,un1,unordered_pair_member,sg1])).
cnf(rg_d, plain, (intersection(union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y)))),regular(union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y)))))) = null_class), inference(lemma,[status(thm)],[rg_e3,nl,regularity2])).
cnf(rg_f, plain, (~ member(W,union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y))))) | ~ member(W,regular(union(unordered_pair(Y,singleton(Y)),singleton(unordered_pair(X,singleton(Y))))))), inference(lemma,[status(thm)],[rg_d,intersection3,nl])).
cnf(rg_520, plain, (ordered_pair(X,Y) != Y), inference(lemma,[status(thm)],[rg_c,rg_f,rg_e1,rg_e2,rg_e3,rg_m1,rg_m2,rg_m3])).
cnf(c522a, plain, (ordered_pair(first(ordered_pair(x,y)),second(ordered_pair(x,y))) = ordered_pair(x,y)), inference(lemma,[status(thm)],[cartesian_product4,prove_ordered_pair_determines_components2_2])).
cnf(c522b, plain, (ordered_pair(first(ordered_pair(x,y)),ordered_pair(x,y)) = ordered_pair(x,y)), inference(lemma,[status(thm)],[c522a,prove_ordered_pair_determines_components2_1])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[c522b,rg_520])).
% SZS output end CNFRefutation for SET522-6
%------------------------------------------------------------------------------
