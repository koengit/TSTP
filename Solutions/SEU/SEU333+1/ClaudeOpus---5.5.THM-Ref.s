%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU333+1 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: scheme s1_funct_1__e4_7_2__tops_2; first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU333+1
% SZS output start Refutation for SEU333+1
fof(s1_tarski__e4_7_2__tops_2__1, axiom, (! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => ((! [C,D,E] : ((in(C,B) & (! [F] : (element(F,powerset(the_carrier(A))) => (F = C => D = subset_complement(the_carrier(A),F)))) & in(C,B) & (! [G] : (element(G,powerset(the_carrier(A))) => (G = C => E = subset_complement(the_carrier(A),G))))) => D = E)) => (? [C] : (! [D] : (in(D,C) <=> (? [E] : (in(E,B) & in(E,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = E => D = subset_complement(the_carrier(A),H)))))))))))), file('Problems/SEU/SEU333+1.p',s1_tarski__e4_7_2__tops_2__1)).
fof(s1_xboole_0__e4_7_2__tops_2__1, axiom, (! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => (! [C] : (? [D] : (! [E] : (in(E,D) <=> (in(E,cartesian_product2(B,C)) & (? [F,G] : (ordered_pair(F,G) = E & in(F,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = F => G = subset_complement(the_carrier(A),H))))))))))))), file('Problems/SEU/SEU333+1.p',s1_xboole_0__e4_7_2__tops_2__1)).
fof(d1_relat_1, axiom, (! [A] : (relation(A) <=> (! [B] : ~ ((in(B,A) & (! [C,D] : B != ordered_pair(C,D))))))), file('Problems/SEU/SEU333+1.p',d1_relat_1)).
fof(t106_zfmisc_1, axiom, (! [A,B,C,D] : (in(ordered_pair(A,B),cartesian_product2(C,D)) <=> (in(A,C) & in(B,D)))), file('Problems/SEU/SEU333+1.p',t106_zfmisc_1)).
fof(t33_zfmisc_1, axiom, (! [A,B,C,D] : (ordered_pair(A,B) = ordered_pair(C,D) => (A = C & B = D))), file('Problems/SEU/SEU333+1.p',t33_zfmisc_1)).
fof(d1_funct_1, axiom, (! [A] : (function(A) <=> (! [B,C,D] : ((in(ordered_pair(B,C),A) & in(ordered_pair(B,D),A)) => C = D)))), file('Problems/SEU/SEU333+1.p',d1_funct_1)).
fof(s1_funct_1__e4_7_2__tops_2__1, conjecture, (! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => ((! [C,D,E] : ((in(C,B) & (! [F] : (element(F,powerset(the_carrier(A))) => (F = C => D = subset_complement(the_carrier(A),F)))) & in(C,B) & (! [G] : (element(G,powerset(the_carrier(A))) => (G = C => E = subset_complement(the_carrier(A),G))))) => D = E)) => (? [C] : (relation(C) & function(C) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,B) & in(D,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H)))))))))))), file('Problems/SEU/SEU333+1.p',s1_funct_1__e4_7_2__tops_2__1)).
fof(s1_funct_1__e4_7_2__tops_2__1_neg, negated_conjecture, ~ ((! [A,B] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => ((! [C,D,E] : ((in(C,B) & (! [F] : (element(F,powerset(the_carrier(A))) => (F = C => D = subset_complement(the_carrier(A),F)))) & in(C,B) & (! [G] : (element(G,powerset(the_carrier(A))) => (G = C => E = subset_complement(the_carrier(A),G))))) => D = E)) => (? [C] : (relation(C) & function(C) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,B) & in(D,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H))))))))))))), inference(negate_conjecture,[status(cth)],[s1_funct_1__e4_7_2__tops_2__1])).
fof(img, plain, (! [A,B] : (((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) & (! [C,D,E] : ((in(C,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => E = subset_complement(the_carrier(A),H))))) => D = E))) => (? [Cimg] : (! [D] : (in(D,Cimg) <=> (? [E] : (in(E,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = E => D = subset_complement(the_carrier(A),H))))))))))), inference(lemma,[status(thm)],[s1_tarski__e4_7_2__tops_2__1])).
fof(sep, plain, (! [A,B,Cimg] : ((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) => (? [R] : (! [E] : (in(E,R) <=> (in(E,cartesian_product2(B,Cimg)) & (? [F,G] : (ordered_pair(F,G) = E & in(F,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = F => G = subset_complement(the_carrier(A),H)))))))))))), inference(lemma,[status(thm)],[s1_xboole_0__e4_7_2__tops_2__1])).
fof(p_rel, plain, (! [A,B,Cimg,R] : ((! [E] : (in(E,R) <=> (in(E,cartesian_product2(B,Cimg)) & (? [F,G] : (ordered_pair(F,G) = E & in(F,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = F => G = subset_complement(the_carrier(A),H))))))))) => relation(R))), inference(lemma,[status(thm)],[d1_relat_1])).
fof(p_chr, plain, (! [A,B,Cimg,R] : (((! [D] : (in(D,Cimg) <=> (? [E] : (in(E,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = E => D = subset_complement(the_carrier(A),H)))))))) & (! [E] : (in(E,R) <=> (in(E,cartesian_product2(B,Cimg)) & (? [F,G] : (ordered_pair(F,G) = E & in(F,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = F => G = subset_complement(the_carrier(A),H)))))))))) => (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H))))))))), inference(lemma,[status(thm)],[t106_zfmisc_1,t33_zfmisc_1])).
fof(p_fun, plain, (! [A,B,R] : (((! [C,D,E] : ((in(C,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => E = subset_complement(the_carrier(A),H))))) => D = E)) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H)))))))) => function(R))), inference(lemma,[status(thm)],[d1_funct_1])).
fof(ex2, plain, (! [A,B,Cimg] : (((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) & (! [C,D,E] : ((in(C,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => E = subset_complement(the_carrier(A),H))))) => D = E)) & (! [D] : (in(D,Cimg) <=> (? [E] : (in(E,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = E => D = subset_complement(the_carrier(A),H))))))))) => (? [R] : (relation(R) & function(R) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H))))))))))), inference(lemma,[status(thm)],[sep,p_rel,p_chr,p_fun])).
fof(ex, plain, (! [A,B] : (((one_sorted_str(A) & element(B,powerset(powerset(the_carrier(A))))) & (! [C,D,E] : ((in(C,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => D = subset_complement(the_carrier(A),H)))) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = C => E = subset_complement(the_carrier(A),H))))) => D = E))) => (? [R] : (relation(R) & function(R) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,B) & (! [H] : (element(H,powerset(the_carrier(A))) => (H = D => E = subset_complement(the_carrier(A),H))))))))))), inference(lemma,[status(thm)],[img,ex2])).
fof(done, plain, $false, inference(lemma,[status(thm)],[s1_funct_1__e4_7_2__tops_2__1_neg,ex])).
% SZS output end Refutation for SEU333+1
%------------------------------------------------------------------------------
