%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU331+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP scheme s2_funct_1__e4_7_1__tops_2 (generic s2
%            generator); first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU331+2
% SZS output start Refutation for SEU331+2
fof(s1_funct_1__e4_7_1__tops_2__1, lemma, (! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => ((! [C,D,E] : ((in(C,complements_of_subsets(the_carrier(A),B)) & (! [F] : (element(F,powerset(the_carrier(A))) => (F = C => D = subset_complement(the_carrier(A),F)))) & in(C,complements_of_subsets(the_carrier(A),B)) & (! [G] : (element(G,powerset(the_carrier(A))) => (G = C => E = subset_complement(the_carrier(A),G))))) => D = E)) => (? [C] : (relation(C) & function(C) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,complements_of_subsets(the_carrier(A),B)) & in(D,complements_of_subsets(the_carrier(A),B)) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H)))))))))))), file('Problems/SEU/SEU331+2.p',s1_funct_1__e4_7_1__tops_2__1)).
fof(d4_relat_1, axiom, (! [A] : (relation(A) => (! [B] : (B = relation_dom(A) <=> (! [C] : (in(C,B) <=> (? [D] : in(ordered_pair(C,D),A)))))))), file('Problems/SEU/SEU331+2.p',d4_relat_1)).
fof(d4_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B,C] : ((in(B,relation_dom(A)) => (C = apply(A,B) <=> in(ordered_pair(B,C),A))) & (~ in(B,relation_dom(A)) => (C = apply(A,B) <=> C = empty_set)))))), file('Problems/SEU/SEU331+2.p',d4_funct_1)).
fof(s2_funct_1__e4_7_1__tops_2, conjecture, (! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => (((! [C,D,E] : ((in(C,complements_of_subsets(the_carrier(A),B)) & (! [F] : (element(F,powerset(the_carrier(A))) => (F = C => D = subset_complement(the_carrier(A),F)))) & (! [G] : (element(G,powerset(the_carrier(A))) => (G = C => E = subset_complement(the_carrier(A),G))))) => D = E)) & (! [C] : ~ ((in(C,complements_of_subsets(the_carrier(A),B)) & (! [D] : ~ ((! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))))))))) => (? [C] : (relation(C) & function(C) & relation_dom(C) = complements_of_subsets(the_carrier(A),B) & (! [D] : (in(D,complements_of_subsets(the_carrier(A),B)) => (! [I] : (element(I,powerset(the_carrier(A))) => (I = D => apply(C,D) = subset_complement(the_carrier(A),I))))))))))), file('Problems/SEU/SEU331+2.p',s2_funct_1__e4_7_1__tops_2)).
fof(s2_funct_1__e4_7_1__tops_2_neg, negated_conjecture, ~ ((! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => (((! [C,D,E] : ((in(C,complements_of_subsets(the_carrier(A),B)) & (! [F] : (element(F,powerset(the_carrier(A))) => (F = C => D = subset_complement(the_carrier(A),F)))) & (! [G] : (element(G,powerset(the_carrier(A))) => (G = C => E = subset_complement(the_carrier(A),G))))) => D = E)) & (! [C] : ~ ((in(C,complements_of_subsets(the_carrier(A),B)) & (! [D] : ~ ((! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))))))))) => (? [C] : (relation(C) & function(C) & relation_dom(C) = complements_of_subsets(the_carrier(A),B) & (! [D] : (in(D,complements_of_subsets(the_carrier(A),B)) => (! [I] : (element(I,powerset(the_carrier(A))) => (I = D => apply(C,D) = subset_complement(the_carrier(A),I)))))))))))), inference(negate_conjecture,[status(cth)],[s2_funct_1__e4_7_1__tops_2])).
fof(s1v, plain, (! [A,B] : (((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) & (! [C,D,E] : ((in(C,complements_of_subsets(the_carrier(A),B)) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => E = subset_complement(the_carrier(A),H))))) => D = E))) => (? [R] : (relation(R) & function(R) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,complements_of_subsets(the_carrier(A),B)) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H))))))))))), inference(lemma,[status(thm)],[s1_funct_1__e4_7_1__tops_2__1])).
fof(dm, plain, (! [A,B,R] : ((relation(R) & (! [C] : (in(C,complements_of_subsets(the_carrier(A),B)) => (? [D] : (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H))))))) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,complements_of_subsets(the_carrier(A),B)) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H)))))))) => relation_dom(R) = complements_of_subsets(the_carrier(A),B))), inference(lemma,[status(thm)],[d4_relat_1])).
fof(apv, plain, (! [A,B,R,D] : ((relation(R) & function(R) & relation_dom(R) = complements_of_subsets(the_carrier(A),B) & in(D,complements_of_subsets(the_carrier(A),B)) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,complements_of_subsets(the_carrier(A),B)) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H)))))))) => (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => apply(R,D) = subset_complement(the_carrier(A),H)))))), inference(lemma,[status(thm)],[d4_funct_1])).
fof(ex, plain, (! [A,B] : (((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) & (! [C,D,E] : ((in(C,complements_of_subsets(the_carrier(A),B)) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => E = subset_complement(the_carrier(A),H))))) => D = E)) & (! [C] : (in(C,complements_of_subsets(the_carrier(A),B)) => (? [D] : (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))))))) => (? [R] : (relation(R) & function(R) & relation_dom(R) = complements_of_subsets(the_carrier(A),B) & (! [D] : (in(D,complements_of_subsets(the_carrier(A),B)) => (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => apply(R,D) = subset_complement(the_carrier(A),H)))))))))), inference(lemma,[status(thm)],[s1v,dm,apv])).
fof(done, plain, $false, inference(lemma,[status(thm)],[s2_funct_1__e4_7_1__tops_2_neg,ex])).
% SZS output end Refutation for SEU331+2
%------------------------------------------------------------------------------
