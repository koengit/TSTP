%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU287+2 : TPTP v10.0.0. Released v3.3.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood with E 3.2.5 as the trusted ATP; every inference also checked with E
%            3.2.5
% Status   : agrees with TPTP v10.0.0 (Theorem)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: MPTP scheme s1_funct_1__e10_24 (choice relation);
%            checker refinement needed (see notes)
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as E 3.2.5
%            for the lemma steps; parents of each step are listed in its inference record. Definition
%            steps (role definition) introduce fresh predicate symbols and are conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU287+2
% SZS output start Refutation for SEU287+2
fof(s1_tarski__e10_24__wellord2__1, axiom, (! [A,B] : ((~ empty(A) & relation(B)) => ((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) => (? [C] : (! [D] : (in(D,C) <=> (? [E] : (in(E,A) & in(E,A) & (? [J] : (E = J & in(D,J) & (! [K] : (in(K,J) => in(ordered_pair(D,K),B))))))))))))), file('Problems/SEU/SEU287+2.p',s1_tarski__e10_24__wellord2__1)).
fof(s1_xboole_0__e10_24__wellord2__1, lemma, (! [A,B] : ((~ empty(A) & relation(B)) => (! [C] : (? [D] : (! [E] : (in(E,D) <=> (in(E,cartesian_product2(A,C)) & (? [F,G] : (ordered_pair(F,G) = E & in(F,A) & (? [H] : (F = H & in(G,H) & (! [I] : (in(I,H) => in(ordered_pair(G,I),B)))))))))))))), file('Problems/SEU/SEU287+2.p',s1_xboole_0__e10_24__wellord2__1)).
fof(d1_relat_1, axiom, (! [A] : (relation(A) <=> (! [B] : ~ ((in(B,A) & (! [C,D] : B != ordered_pair(C,D))))))), file('Problems/SEU/SEU287+2.p',d1_relat_1)).
fof(d2_zfmisc_1, axiom, (! [A,B,C] : (C = cartesian_product2(A,B) <=> (! [D] : (in(D,C) <=> (? [E,F] : (in(E,A) & in(F,B) & D = ordered_pair(E,F))))))), file('Problems/SEU/SEU287+2.p',d2_zfmisc_1)).
fof(t106_zfmisc_1, lemma, (! [A,B,C,D] : (in(ordered_pair(A,B),cartesian_product2(C,D)) <=> (in(A,C) & in(B,D)))), file('Problems/SEU/SEU287+2.p',t106_zfmisc_1)).
fof(t33_zfmisc_1, lemma, (! [A,B,C,D] : (ordered_pair(A,B) = ordered_pair(C,D) => (A = C & B = D))), file('Problems/SEU/SEU287+2.p',t33_zfmisc_1)).
fof(d1_funct_1, axiom, (! [A] : (function(A) <=> (! [B,C,D] : ((in(ordered_pair(B,C),A) & in(ordered_pair(B,D),A)) => C = D)))), file('Problems/SEU/SEU287+2.p',d1_funct_1)).
fof(s1_funct_1__e10_24__wellord2__1, conjecture, (! [A,B] : ((~ empty(A) & relation(B)) => ((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) => (? [C] : (relation(C) & function(C) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,A) & in(D,A) & (? [J] : (D = J & in(E,J) & (! [K] : (in(K,J) => in(ordered_pair(E,K),B))))))))))))), file('Problems/SEU/SEU287+2.p',s1_funct_1__e10_24__wellord2__1)).
fof(s1_funct_1__e10_24__wellord2__1_neg, negated_conjecture, ~ ((! [A,B] : ((~ empty(A) & relation(B)) => ((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) => (? [C] : (relation(C) & function(C) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,A) & in(D,A) & (? [J] : (D = J & in(E,J) & (! [K] : (in(K,J) => in(ordered_pair(E,K),B)))))))))))))), inference(negate_conjecture,[status(cth)],[s1_funct_1__e10_24__wellord2__1])).
fof(img, plain, (! [A,B] : ((~ empty(A) & relation(B) & (! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E))) => (? [C] : (! [D] : (in(D,C) <=> (? [E] : (in(E,A) & (in(D,E) & (! [I] : (in(I,E) => in(ordered_pair(D,I),B))))))))))), inference(lemma,[status(thm)],[s1_tarski__e10_24__wellord2__1])).
fof(sep, plain, (! [A,B,C] : ((~ empty(A) & relation(B)) => (? [R] : (! [E] : (in(E,R) <=> (in(E,cartesian_product2(A,C)) & (? [F,G] : (ordered_pair(F,G) = E & in(F,A) & (in(G,F) & (! [I] : (in(I,F) => in(ordered_pair(G,I),B)))))))))))), inference(lemma,[status(thm)],[s1_xboole_0__e10_24__wellord2__1])).
fof(p_rel, plain, (! [A,B,C,R] : ((! [E] : (in(E,R) <=> (in(E,cartesian_product2(A,C)) & (? [F,G] : (ordered_pair(F,G) = E & in(F,A) & (in(G,F) & (! [I] : (in(I,F) => in(ordered_pair(G,I),B))))))))) => relation(R))), inference(lemma,[status(thm)],[d1_relat_1,d2_zfmisc_1])).
fof(p_chr, plain, (! [A,B,C,R] : (((! [D] : (in(D,C) <=> (? [E] : (in(E,A) & (in(D,E) & (! [I] : (in(I,E) => in(ordered_pair(D,I),B)))))))) & (! [E] : (in(E,R) <=> (in(E,cartesian_product2(A,C)) & (? [F,G] : (ordered_pair(F,G) = E & in(F,A) & (in(G,F) & (! [I] : (in(I,F) => in(ordered_pair(G,I),B)))))))))) => (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,A) & (in(E,D) & (! [I] : (in(I,D) => in(ordered_pair(E,I),B))))))))), inference(lemma,[status(thm)],[t106_zfmisc_1,t33_zfmisc_1])).
fof(p_fun, plain, (! [A,B,R] : (((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,A) & (in(E,D) & (! [I] : (in(I,D) => in(ordered_pair(E,I),B)))))))) => function(R))), inference(lemma,[status(thm)],[d1_funct_1])).
fof(ex2, plain, (! [A,B,C] : (((~ empty(A) & relation(B) & (! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E))) & (! [D] : (in(D,C) <=> (? [E] : (in(E,A) & (in(D,E) & (! [I] : (in(I,E) => in(ordered_pair(D,I),B))))))))) => (? [R] : (relation(R) & function(R) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,A) & (in(E,D) & (! [I] : (in(I,D) => in(ordered_pair(E,I),B))))))))))), inference(lemma,[status(thm)],[sep,p_rel,p_chr,p_fun])).
fof(ex, plain, (! [A,B] : ((~ empty(A) & relation(B) & (! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E))) => (? [R] : (relation(R) & function(R) & (! [D,E] : (in(ordered_pair(D,E),R) <=> (in(D,A) & (in(E,D) & (! [I] : (in(I,D) => in(ordered_pair(E,I),B))))))))))), inference(lemma,[status(thm)],[img,ex2])).
fof(done, plain, $false, inference(lemma,[status(thm)],[s1_funct_1__e10_24__wellord2__1_neg,ex])).
% SZS output end Refutation for SEU287+2
%------------------------------------------------------------------------------
