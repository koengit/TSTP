%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU231+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP t21_ordinal1 (proper transitive subset of an
%            ordinal is an element); one extra lemma
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU231+2
% SZS output start Refutation for SEU231+2
fof(d10_xboole_0, axiom, (! [A,B] : (A = B <=> (subset(A,B) & subset(B,A)))), file('Problems/SEU/SEU231+2.p',d10_xboole_0)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU231+2.p',d3_tarski)).
fof(d4_xboole_0, axiom, (! [A,B,C] : (C = set_difference(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) & ~ in(D,B)))))), file('Problems/SEU/SEU231+2.p',d4_xboole_0)).
fof(t7_tarski, axiom, (! [A,B] : ~ ((in(A,B) & (! [C] : ~ ((in(C,B) & (! [D] : ~ ((in(D,B) & in(D,C)))))))))), file('Problems/SEU/SEU231+2.p',t7_tarski)).
fof(cc1_ordinal1, axiom, (! [A] : (ordinal(A) => (epsilon_transitive(A) & epsilon_connected(A)))), file('Problems/SEU/SEU231+2.p',cc1_ordinal1)).
fof(d2_ordinal1, axiom, (! [A] : (epsilon_transitive(A) <=> (! [B] : (in(B,A) => subset(B,A))))), file('Problems/SEU/SEU231+2.p',d2_ordinal1)).
fof(d3_ordinal1, axiom, (! [A] : (epsilon_connected(A) <=> (! [B,C] : ~ ((in(B,A) & in(C,A) & ~ in(B,C) & B != C & ~ in(C,B)))))), file('Problems/SEU/SEU231+2.p',d3_ordinal1)).
fof(t21_ordinal1, conjecture, (! [A] : (epsilon_transitive(A) => (! [B] : (ordinal(B) => (proper_subset(A,B) => in(A,B)))))), file('Problems/SEU/SEU231+2.p',t21_ordinal1)).
fof(t21_ordinal1_neg, negated_conjecture, ~ ((! [A] : (epsilon_transitive(A) => (! [B] : (ordinal(B) => (proper_subset(A,B) => in(A,B))))))), inference(negate_conjecture,[status(cth)],[t21_ordinal1])).
fof(d8_xboole_0, axiom, (! [A,B] : (proper_subset(A,B) <=> (subset(A,B) & A != B))), file('Problems/SEU/SEU231+2.p',d8_xboole_0)).
fof(diff, plain, (! [A,B] : ((subset(A,B) & A != B) => (? [X] : (in(X,B) & ~ in(X,A))))), inference(lemma,[status(thm)],[d10_xboole_0,d3_tarski])).
fof(md, plain, (! [A,B,X] : (in(X,set_difference(B,A)) <=> (in(X,B) & ~ in(X,A)))), inference(lemma,[status(thm)],[d4_xboole_0])).
fof(minc, plain, (! [A,B] : ((subset(A,B) & A != B) => (? [C] : (in(C,B) & ~ in(C,A) & (! [D] : ((in(D,B) & ~ in(D,A)) => ~ in(D,C))))))), inference(lemma,[status(thm)],[diff,t7_tarski,md])).
fof(c_sub, plain, (! [A,B,C] : ((ordinal(B) & in(C,B) & (! [D] : ((in(D,B) & ~ in(D,A)) => ~ in(D,C)))) => subset(C,A))), inference(lemma,[status(thm)],[cc1_ordinal1,d2_ordinal1,d3_tarski])).
fof(a_sub, plain, (! [A,B,C] : ((epsilon_transitive(A) & ordinal(B) & subset(A,B) & in(C,B) & ~ in(C,A)) => subset(A,C))), inference(lemma,[status(thm)],[cc1_ordinal1,d3_ordinal1,d2_ordinal1,d3_tarski])).
fof(main, plain, (! [A,B] : ((epsilon_transitive(A) & ordinal(B) & subset(A,B) & A != B) => in(A,B))), inference(lemma,[status(thm)],[minc,c_sub,a_sub,d10_xboole_0])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t21_ordinal1_neg,d8_xboole_0,main])).
% SZS output end Refutation for SEU231+2
%------------------------------------------------------------------------------
