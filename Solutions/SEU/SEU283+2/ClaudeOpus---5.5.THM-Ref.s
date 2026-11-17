%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU283+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP scheme s2_funct_1__e16_22 (dom + values); first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU283+2
% SZS output start Refutation for SEU283+2
fof(s1_funct_1__e16_22__wellord2__1, lemma, (! [A] : ((! [B,C,D] : ((in(B,A) & C = singleton(B) & in(B,A) & D = singleton(B)) => C = D)) => (? [B] : (relation(B) & function(B) & (! [C,D] : (in(ordered_pair(C,D),B) <=> (in(C,A) & in(C,A) & D = singleton(C)))))))), file('Problems/SEU/SEU283+2.p',s1_funct_1__e16_22__wellord2__1)).
fof(d4_relat_1, axiom, (! [A] : (relation(A) => (! [B] : (B = relation_dom(A) <=> (! [C] : (in(C,B) <=> (? [D] : in(ordered_pair(C,D),A)))))))), file('Problems/SEU/SEU283+2.p',d4_relat_1)).
fof(d4_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B,C] : ((in(B,relation_dom(A)) => (C = apply(A,B) <=> in(ordered_pair(B,C),A))) & (~ in(B,relation_dom(A)) => (C = apply(A,B) <=> C = empty_set)))))), file('Problems/SEU/SEU283+2.p',d4_funct_1)).
fof(s2_funct_1__e16_22__wellord2__1, conjecture, (! [A] : (((! [B,C,D] : ((in(B,A) & C = singleton(B) & D = singleton(B)) => C = D)) & (! [B] : ~ ((in(B,A) & (! [C] : C != singleton(B)))))) => (? [B] : (relation(B) & function(B) & relation_dom(B) = A & (! [C] : (in(C,A) => apply(B,C) = singleton(C))))))), file('Problems/SEU/SEU283+2.p',s2_funct_1__e16_22__wellord2__1)).
fof(s2_funct_1__e16_22__wellord2__1_neg, negated_conjecture, ~ ((! [A] : (((! [B,C,D] : ((in(B,A) & C = singleton(B) & D = singleton(B)) => C = D)) & (! [B] : ~ ((in(B,A) & (! [C] : C != singleton(B)))))) => (? [B] : (relation(B) & function(B) & relation_dom(B) = A & (! [C] : (in(C,A) => apply(B,C) = singleton(C)))))))), inference(negate_conjecture,[status(cth)],[s2_funct_1__e16_22__wellord2__1])).
fof(s1i, plain, (! [A] : (? [B] : (relation(B) & function(B) & (! [C,D] : (in(ordered_pair(C,D),B) <=> (in(C,A) & D = singleton(C))))))), inference(lemma,[status(thm)],[s1_funct_1__e16_22__wellord2__1])).
fof(dm, plain, (! [A,B] : ((relation(B) & (! [C,D] : (in(ordered_pair(C,D),B) <=> (in(C,A) & D = singleton(C))))) => relation_dom(B) = A)), inference(lemma,[status(thm)],[d4_relat_1])).
fof(ap, plain, (! [A,B,C] : ((relation(B) & function(B) & relation_dom(B) = A & in(C,A) & (! [C1,D] : (in(ordered_pair(C1,D),B) <=> (in(C1,A) & D = singleton(C1))))) => apply(B,C) = singleton(C))), inference(lemma,[status(thm)],[d4_funct_1])).
fof(done, plain, $false, inference(lemma,[status(thm)],[s2_funct_1__e16_22__wellord2__1_neg,s1i,dm,ap])).
% SZS output end Refutation for SEU283+2
%------------------------------------------------------------------------------
