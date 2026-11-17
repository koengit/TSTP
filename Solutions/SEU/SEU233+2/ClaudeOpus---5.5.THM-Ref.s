%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU233+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP t24_ordinal1 (ordinals are comparable); first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU233+2
% SZS output start Refutation for SEU233+2
fof(t7_tarski, axiom, (! [A,B] : ~ ((in(A,B) & (! [C] : ~ ((in(C,B) & (! [D] : ~ ((in(D,B) & in(D,C)))))))))), file('Problems/SEU/SEU233+2.p',t7_tarski)).
fof(d1_tarski, axiom, (! [A,B] : (B = singleton(A) <=> (! [C] : (in(C,B) <=> C = A)))), file('Problems/SEU/SEU233+2.p',d1_tarski)).
fof(d3_xboole_0, axiom, (! [A,B,C] : (C = set_intersection2(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) & in(D,B)))))), file('Problems/SEU/SEU233+2.p',d3_xboole_0)).
fof(d2_ordinal1, axiom, (! [A] : (epsilon_transitive(A) <=> (! [B] : (in(B,A) => subset(B,A))))), file('Problems/SEU/SEU233+2.p',d2_ordinal1)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU233+2.p',d3_tarski)).
fof(cc1_ordinal1, axiom, (! [A] : (ordinal(A) => (epsilon_transitive(A) & epsilon_connected(A)))), file('Problems/SEU/SEU233+2.p',cc1_ordinal1)).
fof(t17_xboole_1, lemma, (! [A,B] : subset(set_intersection2(A,B),A)), file('Problems/SEU/SEU233+2.p',t17_xboole_1)).
fof(commutativity_k3_xboole_0, axiom, (! [A,B] : set_intersection2(A,B) = set_intersection2(B,A)), file('Problems/SEU/SEU233+2.p',commutativity_k3_xboole_0)).
fof(t21_ordinal1, lemma, (! [A] : (epsilon_transitive(A) => (! [B] : (ordinal(B) => (proper_subset(A,B) => in(A,B)))))), file('Problems/SEU/SEU233+2.p',t21_ordinal1)).
fof(d8_xboole_0, axiom, (! [A,B] : (proper_subset(A,B) <=> (subset(A,B) & A != B))), file('Problems/SEU/SEU233+2.p',d8_xboole_0)).
fof(t24_ordinal1, conjecture, (! [A] : (ordinal(A) => (! [B] : (ordinal(B) => ~ ((~ in(A,B) & A != B & ~ in(B,A))))))), file('Problems/SEU/SEU233+2.p',t24_ordinal1)).
fof(t24_ordinal1_neg, negated_conjecture, ~ ((! [A] : (ordinal(A) => (! [B] : (ordinal(B) => ~ ((~ in(A,B) & A != B & ~ in(B,A)))))))), inference(negate_conjecture,[status(cth)],[t24_ordinal1])).
fof(irr, plain, (! [C] : ~ in(C,C)), inference(lemma,[status(thm)],[t7_tarski,d1_tarski])).
fof(mi, plain, (! [A,B,X] : (in(X,set_intersection2(A,B)) <=> (in(X,A) & in(X,B)))), inference(lemma,[status(thm)],[d3_xboole_0])).
fof(it, plain, (! [A,B] : ((ordinal(A) & ordinal(B)) => epsilon_transitive(set_intersection2(A,B)))), inference(lemma,[status(thm)],[d2_ordinal1,mi,d3_tarski,cc1_ordinal1])).
fof(sub2, plain, (! [A,B] : subset(set_intersection2(A,B),B)), inference(lemma,[status(thm)],[t17_xboole_1,commutativity_k3_xboole_0])).
fof(ne, plain, (! [A,B] : ((ordinal(A) & ordinal(B)) => (set_intersection2(A,B) = A | set_intersection2(A,B) = B))), inference(lemma,[status(thm)],[t21_ordinal1,d8_xboole_0,it,t17_xboole_1,sub2,mi,irr])).
fof(le, plain, (! [A,B] : ((ordinal(A) & ordinal(B) & subset(A,B)) => (A = B | in(A,B)))), inference(lemma,[status(thm)],[t21_ordinal1,d8_xboole_0,cc1_ordinal1])).
fof(main, plain, (! [A,B] : ((ordinal(A) & ordinal(B)) => (in(A,B) | A = B | in(B,A)))), inference(lemma,[status(thm)],[ne,le,t17_xboole_1,sub2])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t24_ordinal1_neg,main])).
% SZS output end Refutation for SEU233+2
%------------------------------------------------------------------------------
