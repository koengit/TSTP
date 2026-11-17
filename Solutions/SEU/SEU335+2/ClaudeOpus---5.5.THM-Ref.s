%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU335+2 : TPTP v10.0.0. Released v3.3.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : agrees with TPTP v10.0.0 (Theorem)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: MPTP t13_tops_2 (finite family iff complements finite);
%            one split
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU335+2
% SZS output start Refutation for SEU335+2
fof(t4_subset, axiom, (! [A,B,C] : ((in(A,B) & element(B,powerset(C))) => element(A,C))), file('Problems/SEU/SEU335+2.p',t4_subset)).
fof(s2_funct_1__e4_7_2__tops_2, lemma, (! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => (((! [C,D,E] : ((in(C,B) & (! [F] : (element(F,powerset(the_carrier(A))) => (F = C => D = subset_complement(the_carrier(A),F)))) & (! [G] : (element(G,powerset(the_carrier(A))) => (G = C => E = subset_complement(the_carrier(A),G))))) => D = E)) & (! [C] : ~ ((in(C,B) & (! [D] : ~ ((! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))))))))) => (? [C] : (relation(C) & function(C) & relation_dom(C) = B & (! [D] : (in(D,B) => (! [I] : (element(I,powerset(the_carrier(A))) => (I = D => apply(C,D) = subset_complement(the_carrier(A),I))))))))))), file('Problems/SEU/SEU335+2.p',s2_funct_1__e4_7_2__tops_2)).
fof(d8_setfam_1, axiom, (! [A,B] : (element(B,powerset(powerset(A))) => (! [C] : (element(C,powerset(powerset(A))) => (C = complements_of_subsets(A,B) <=> (! [D] : (element(D,powerset(A)) => (in(D,C) <=> in(subset_complement(A,D),B))))))))), file('Problems/SEU/SEU335+2.p',d8_setfam_1)).
fof(dt_k7_setfam_1, axiom, (! [A,B] : (element(B,powerset(powerset(A))) => element(complements_of_subsets(A,B),powerset(powerset(A))))), file('Problems/SEU/SEU335+2.p',dt_k7_setfam_1)).
fof(d12_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B,C] : (C = relation_image(A,B) <=> (! [D] : (in(D,C) <=> (? [E] : (in(E,relation_dom(A)) & in(E,B) & D = apply(A,E))))))))), file('Problems/SEU/SEU335+2.p',d12_funct_1)).
fof(involutiveness_k3_subset_1, axiom, (! [A,B] : (element(B,powerset(A)) => subset_complement(A,subset_complement(A,B)) = B)), file('Problems/SEU/SEU335+2.p',involutiveness_k3_subset_1)).
fof(dt_k3_subset_1, axiom, (! [A,B] : (element(B,powerset(A)) => element(subset_complement(A,B),powerset(A)))), file('Problems/SEU/SEU335+2.p',dt_k3_subset_1)).
fof(t2_tarski, axiom, (! [A,B] : ((! [C] : (in(C,A) <=> in(C,B))) => A = B)), file('Problems/SEU/SEU335+2.p',t2_tarski)).
fof(t17_finset_1, lemma, (! [A,B] : ((relation(B) & function(B)) => (finite(A) => finite(relation_image(B,A))))), file('Problems/SEU/SEU335+2.p',t17_finset_1)).
fof(involutiveness_k7_setfam_1, axiom, (! [A,B] : (element(B,powerset(powerset(A))) => complements_of_subsets(A,complements_of_subsets(A,B)) = B)), file('Problems/SEU/SEU335+2.p',involutiveness_k7_setfam_1)).
fof(t13_tops_2, conjecture, (! [A] : (one_sorted_str(A) => (! [B] : (element(B,powerset(powerset(the_carrier(A)))) => (finite(complements_of_subsets(the_carrier(A),B)) <=> finite(B)))))), file('Problems/SEU/SEU335+2.p',t13_tops_2)).
fof(t13_tops_2_neg, negated_conjecture, ~ ((! [A] : (one_sorted_str(A) => (! [B] : (element(B,powerset(powerset(the_carrier(A)))) => (finite(complements_of_subsets(the_carrier(A),B)) <=> finite(B))))))), inference(negate_conjecture,[status(cth)],[t13_tops_2])).
fof(mem, plain, (! [A,B,Y] : ((element(B,powerset(powerset(A))) & in(Y,B)) => element(Y,powerset(A)))), inference(lemma,[status(thm)],[t4_subset])).
fof(sch, plain, (! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => (? [F] : (relation(F) & function(F) & relation_dom(F) = B & (! [D] : (in(D,B) => apply(F,D) = subset_complement(the_carrier(A),D))))))), inference(lemma,[status(thm)],[s2_funct_1__e4_7_2__tops_2,mem])).
fof(cmem, plain, (! [X,B,E] : ((element(B,powerset(powerset(X))) & element(E,powerset(X))) => (in(E,complements_of_subsets(X,B)) <=> in(subset_complement(X,E),B)))), inference(lemma,[status(thm)],[d8_setfam_1,dt_k7_setfam_1])).
fof(imem, plain, (! [F,B,E] : ((relation(F) & function(F)) => (in(E,relation_image(F,B)) <=> (? [D] : (in(D,relation_dom(F)) & in(D,B) & E = apply(F,D)))))), inference(lemma,[status(thm)],[d12_funct_1])).
fof(ia, plain, (! [A,B,F,E] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A)))) & relation(F) & function(F) & relation_dom(F) = B & (! [D] : (in(D,B) => apply(F,D) = subset_complement(the_carrier(A),D))) & in(E,relation_image(F,B))) => in(E,complements_of_subsets(the_carrier(A),B)))), inference(lemma,[status(thm)],[imem,cmem,mem,involutiveness_k3_subset_1,dt_k3_subset_1])).
fof(ib, plain, (! [A,B,F,E] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A)))) & relation(F) & function(F) & relation_dom(F) = B & (! [D] : (in(D,B) => apply(F,D) = subset_complement(the_carrier(A),D))) & in(E,complements_of_subsets(the_carrier(A),B))) => in(E,relation_image(F,B)))), inference(lemma,[status(thm)],[imem,cmem,mem,dt_k7_setfam_1,involutiveness_k3_subset_1])).
fof(imgeq, plain, (! [A,B,F] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A)))) & relation(F) & function(F) & relation_dom(F) = B & (! [D] : (in(D,B) => apply(F,D) = subset_complement(the_carrier(A),D)))) => relation_image(F,B) = complements_of_subsets(the_carrier(A),B))), inference(lemma,[status(thm)],[t2_tarski,ia,ib])).
fof(fin1, plain, (! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A)))) & finite(B)) => finite(complements_of_subsets(the_carrier(A),B)))), inference(lemma,[status(thm)],[t17_finset_1,sch,imgeq])).
fof(fin2, plain, (! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A)))) & finite(complements_of_subsets(the_carrier(A),B))) => finite(B))), inference(lemma,[status(thm)],[fin1,dt_k7_setfam_1,involutiveness_k7_setfam_1])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t13_tops_2_neg,fin1,fin2])).
% SZS output end Refutation for SEU335+2
%------------------------------------------------------------------------------
