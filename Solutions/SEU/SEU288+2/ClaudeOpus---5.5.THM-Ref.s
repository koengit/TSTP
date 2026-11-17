%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU288+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP scheme s2_funct_1__e10_24 (dom + least values);
%            first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU288+2
% SZS output start Refutation for SEU288+2
fof(s1_funct_1__e10_24__wellord2__1, lemma, (! [A,B] : ((~ empty(A) & relation(B)) => ((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) => (? [C] : (relation(C) & function(C) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,A) & in(D,A) & (? [J] : (D = J & in(E,J) & (! [K] : (in(K,J) => in(ordered_pair(E,K),B))))))))))))), file('Problems/SEU/SEU288+2.p',s1_funct_1__e10_24__wellord2__1)).
fof(d4_relat_1, axiom, (! [A] : (relation(A) => (! [B] : (B = relation_dom(A) <=> (! [C] : (in(C,B) <=> (? [D] : in(ordered_pair(C,D),A)))))))), file('Problems/SEU/SEU288+2.p',d4_relat_1)).
fof(d4_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B,C] : ((in(B,relation_dom(A)) => (C = apply(A,B) <=> in(ordered_pair(B,C),A))) & (~ in(B,relation_dom(A)) => (C = apply(A,B) <=> C = empty_set)))))), file('Problems/SEU/SEU288+2.p',d4_funct_1)).
fof(s2_funct_1__e10_24__wellord2, conjecture, (! [A,B] : ((~ empty(A) & relation(B)) => (((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) & (! [C] : ~ ((in(C,A) & (! [D] : ~ ((? [J] : (C = J & in(D,J) & (! [K] : (in(K,J) => in(ordered_pair(D,K),B))))))))))) => (? [C] : (relation(C) & function(C) & relation_dom(C) = A & (! [D] : (in(D,A) => (? [L] : (D = L & in(apply(C,D),L) & (! [M] : (in(M,L) => in(ordered_pair(apply(C,D),M),B)))))))))))), file('Problems/SEU/SEU288+2.p',s2_funct_1__e10_24__wellord2)).
fof(s2_funct_1__e10_24__wellord2_neg, negated_conjecture, ~ ((! [A,B] : ((~ empty(A) & relation(B)) => (((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) & (! [C] : ~ ((in(C,A) & (! [D] : ~ ((? [J] : (C = J & in(D,J) & (! [K] : (in(K,J) => in(ordered_pair(D,K),B))))))))))) => (? [C] : (relation(C) & function(C) & relation_dom(C) = A & (! [D] : (in(D,A) => (? [L] : (D = L & in(apply(C,D),L) & (! [M] : (in(M,L) => in(ordered_pair(apply(C,D),M),B))))))))))))), inference(negate_conjecture,[status(cth)],[s2_funct_1__e10_24__wellord2])).
fof(u12, plain, (! [A,B] : ((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) => (! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)))), inference(lemma,[status(thm)],[])).
fof(s1v, plain, (! [A,B] : ((~ empty(A) & relation(B) & (! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E))) => (? [R] : (relation(R) & function(R) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,A) & (in(E,D) & (! [I] : (in(I,D) => in(ordered_pair(E,I),B))))))))))), inference(lemma,[status(thm)],[s1_funct_1__e10_24__wellord2__1])).
fof(dm, plain, (! [A,B,R] : ((relation(R) & (! [C] : (in(C,A) => (? [D] : (in(D,C) & (! [I] : (in(I,C) => in(ordered_pair(D,I),B))))))) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,A) & (in(E,D) & (! [I] : (in(I,D) => in(ordered_pair(E,I),B)))))))) => relation_dom(R) = A)), inference(lemma,[status(thm)],[d4_relat_1])).
fof(ap, plain, (! [A,B,R,D] : ((relation(R) & function(R) & relation_dom(R) = A & in(D,A) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,A) & (in(E,D) & (! [I] : (in(I,D) => in(ordered_pair(E,I),B)))))))) => (in(apply(R,D),D) & (! [I] : (in(I,D) => in(ordered_pair(apply(R,D),I),B)))))), inference(lemma,[status(thm)],[d4_funct_1])).
fof(ex, plain, (! [A,B] : ((~ empty(A) & relation(B) & (! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) & (! [C] : (in(C,A) => (? [D] : (in(D,C) & (! [I] : (in(I,C) => in(ordered_pair(D,I),B)))))))) => (? [R] : (relation(R) & function(R) & relation_dom(R) = A & (! [D] : (in(D,A) => (in(apply(R,D),D) & (! [I] : (in(I,D) => in(ordered_pair(apply(R,D),I),B)))))))))), inference(lemma,[status(thm)],[u12,s1v,dm,ap])).
fof(done, plain, $false, inference(lemma,[status(thm)],[s2_funct_1__e10_24__wellord2_neg,ex])).
% SZS output end Refutation for SEU288+2
%------------------------------------------------------------------------------
