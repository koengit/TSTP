%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU282+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP scheme s1_funct_1__e16_22 (function c -> {c}
%            exists); needed --eopts=--auto-schedule=4
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU282+2
% SZS output start Refutation for SEU282+2
fof(s1_tarski__e16_22__wellord2__1, axiom, (! [A] : ((! [B,C,D] : ((in(B,A) & C = singleton(B) & in(B,A) & D = singleton(B)) => C = D)) => (? [B] : (! [C] : (in(C,B) <=> (? [D] : (in(D,A) & in(D,A) & C = singleton(D)))))))), file('Problems/SEU/SEU282+2.p',s1_tarski__e16_22__wellord2__1)).
fof(s1_xboole_0__e16_22__wellord2__1, lemma, (! [A,B] : (? [C] : (! [D] : (in(D,C) <=> (in(D,cartesian_product2(A,B)) & (? [E,F] : (ordered_pair(E,F) = D & in(E,A) & F = singleton(E)))))))), file('Problems/SEU/SEU282+2.p',s1_xboole_0__e16_22__wellord2__1)).
fof(d1_relat_1, axiom, (! [A] : (relation(A) <=> (! [B] : ~ ((in(B,A) & (! [C,D] : B != ordered_pair(C,D))))))), file('Problems/SEU/SEU282+2.p',d1_relat_1)).
fof(d2_zfmisc_1, axiom, (! [A,B,C] : (C = cartesian_product2(A,B) <=> (! [D] : (in(D,C) <=> (? [E,F] : (in(E,A) & in(F,B) & D = ordered_pair(E,F))))))), file('Problems/SEU/SEU282+2.p',d2_zfmisc_1)).
fof(t106_zfmisc_1, lemma, (! [A,B,C,D] : (in(ordered_pair(A,B),cartesian_product2(C,D)) <=> (in(A,C) & in(B,D)))), file('Problems/SEU/SEU282+2.p',t106_zfmisc_1)).
fof(t33_zfmisc_1, lemma, (! [A,B,C,D] : (ordered_pair(A,B) = ordered_pair(C,D) => (A = C & B = D))), file('Problems/SEU/SEU282+2.p',t33_zfmisc_1)).
fof(d1_funct_1, axiom, (! [A] : (function(A) <=> (! [B,C,D] : ((in(ordered_pair(B,C),A) & in(ordered_pair(B,D),A)) => C = D)))), file('Problems/SEU/SEU282+2.p',d1_funct_1)).
fof(s1_funct_1__e16_22__wellord2__1, conjecture, (! [A] : ((! [B,C,D] : ((in(B,A) & C = singleton(B) & in(B,A) & D = singleton(B)) => C = D)) => (? [B] : (relation(B) & function(B) & (! [C,D] : (in(ordered_pair(C,D),B) <=> (in(C,A) & in(C,A) & D = singleton(C)))))))), file('Problems/SEU/SEU282+2.p',s1_funct_1__e16_22__wellord2__1)).
fof(s1_funct_1__e16_22__wellord2__1_neg, negated_conjecture, ~ ((! [A] : ((! [B,C,D] : ((in(B,A) & C = singleton(B) & in(B,A) & D = singleton(B)) => C = D)) => (? [B] : (relation(B) & function(B) & (! [C,D] : (in(ordered_pair(C,D),B) <=> (in(C,A) & in(C,A) & D = singleton(C))))))))), inference(negate_conjecture,[status(cth)],[s1_funct_1__e16_22__wellord2__1])).
fof(img, plain, (! [A] : (? [B] : (! [C] : (in(C,B) <=> (? [D] : (in(D,A) & C = singleton(D))))))), inference(lemma,[status(thm)],[s1_tarski__e16_22__wellord2__1])).
fof(sep, plain, (! [A,B] : (? [R] : (! [D] : (in(D,R) <=> (in(D,cartesian_product2(A,B)) & (? [E,F] : (ordered_pair(E,F) = D & in(E,A) & F = singleton(E)))))))), inference(lemma,[status(thm)],[s1_xboole_0__e16_22__wellord2__1])).
fof(p_rel, plain, (! [A,B,R] : ((! [D] : (in(D,R) <=> (in(D,cartesian_product2(A,B)) & (? [E,F] : (ordered_pair(E,F) = D & in(E,A) & F = singleton(E)))))) => relation(R))), inference(lemma,[status(thm)],[d1_relat_1,d2_zfmisc_1])).
fof(p_chr, plain, (! [A,B,R] : (((! [C] : (in(C,B) <=> (? [D] : (in(D,A) & C = singleton(D))))) & (! [D] : (in(D,R) <=> (in(D,cartesian_product2(A,B)) & (? [E,F] : (ordered_pair(E,F) = D & in(E,A) & F = singleton(E))))))) => (! [C,D] : (in(ordered_pair(C,D),R) <=> (in(C,A) & D = singleton(C)))))), inference(lemma,[status(thm)],[t106_zfmisc_1,t33_zfmisc_1])).
fof(p_fun, plain, (! [A,R] : ((! [C,D] : (in(ordered_pair(C,D),R) <=> (in(C,A) & D = singleton(C)))) => function(R))), inference(lemma,[status(thm)],[d1_funct_1])).
fof(ex2, plain, (! [A,B] : ((! [C] : (in(C,B) <=> (? [D] : (in(D,A) & C = singleton(D))))) => (? [R] : (relation(R) & function(R) & (! [C,D] : (in(ordered_pair(C,D),R) <=> (in(C,A) & D = singleton(C)))))))), inference(lemma,[status(thm)],[sep,p_rel,p_chr,p_fun])).
fof(ex, plain, (! [A] : (? [R] : (relation(R) & function(R) & (! [C,D] : (in(ordered_pair(C,D),R) <=> (in(C,A) & D = singleton(C))))))), inference(lemma,[status(thm)],[img,ex2])).
fof(done, plain, $false, inference(lemma,[status(thm)],[s1_funct_1__e16_22__wellord2__1_neg,ex])).
% SZS output end Refutation for SEU282+2
%------------------------------------------------------------------------------
