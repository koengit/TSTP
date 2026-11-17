%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU296+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: t17_finset_1: f[A] = f[A /\ dom f] = rng(g;f) with
%            dom(g;f) = dom g in omega; 5 steps, first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU296+2
% SZS output start Refutation for SEU296+2
fof(t145_relat_1, lemma, (! [A,B] : (relation(B) => relation_image(B,A) = relation_image(B,set_intersection2(relation_dom(B),A)))), file('Problems/SEU/SEU296+2.p',t145_relat_1)).
fof(t15_finset_1, lemma, (! [A,B] : (finite(A) => finite(set_intersection2(A,B)))), file('Problems/SEU/SEU296+2.p',t15_finset_1)).
fof(commutativity_k3_xboole_0, axiom, (! [A,B] : set_intersection2(A,B) = set_intersection2(B,A)), file('Problems/SEU/SEU296+2.p',commutativity_k3_xboole_0)).
fof(fc1_funct_1, axiom, (! [A,B] : ((relation(A) & function(A) & relation(B) & function(B)) => (relation(relation_composition(A,B)) & function(relation_composition(A,B))))), file('Problems/SEU/SEU296+2.p',fc1_funct_1)).
fof(t46_relat_1, lemma, (! [A] : (relation(A) => (! [B] : (relation(B) => (subset(relation_rng(A),relation_dom(B)) => relation_dom(relation_composition(A,B)) = relation_dom(A)))))), file('Problems/SEU/SEU296+2.p',t46_relat_1)).
fof(t160_relat_1, lemma, (! [A] : (relation(A) => (! [B] : (relation(B) => relation_rng(relation_composition(A,B)) = relation_image(B,relation_rng(A)))))), file('Problems/SEU/SEU296+2.p',t160_relat_1)).
fof(d1_finset_1, axiom, (! [A] : (finite(A) <=> (? [B] : (relation(B) & function(B) & relation_rng(B) = A & in(relation_dom(B),omega))))), file('Problems/SEU/SEU296+2.p',d1_finset_1)).
fof(t17_finset_1, conjecture, (! [A,B] : ((relation(B) & function(B)) => (finite(A) => finite(relation_image(B,A))))), file('Problems/SEU/SEU296+2.p',t17_finset_1)).
fof(t17_finset_1_neg, negated_conjecture, ~ ((! [A,B] : ((relation(B) & function(B)) => (finite(A) => finite(relation_image(B,A)))))), inference(negate_conjecture,[status(cth)],[t17_finset_1])).
fof(t17_xboole_1, lemma, (! [A,B] : subset(set_intersection2(A,B),A)), file('Problems/SEU/SEU296+2.p',t17_xboole_1)).
fof(i1, plain, (! [A,F] : (relation(F) => relation_image(F,A) = relation_image(F,set_intersection2(relation_dom(F),A)))), inference(lemma,[status(thm)],[t145_relat_1])).
fof(i2, plain, (! [A,F] : (finite(A) => finite(set_intersection2(relation_dom(F),A)))), inference(lemma,[status(thm)],[t15_finset_1,commutativity_k3_xboole_0])).
fof(i3, plain, (! [F,G] : ((relation(F) & function(F) & relation(G) & function(G) & subset(relation_rng(G),relation_dom(F))) => (relation(relation_composition(G,F)) & function(relation_composition(G,F)) & relation_dom(relation_composition(G,F)) = relation_dom(G) & relation_rng(relation_composition(G,F)) = relation_image(F,relation_rng(G))))), inference(lemma,[status(thm)],[fc1_funct_1,t46_relat_1,t160_relat_1])).
fof(i4, plain, (! [F,S] : ((relation(F) & function(F) & finite(S) & subset(S,relation_dom(F))) => finite(relation_image(F,S)))), inference(lemma,[status(thm)],[d1_finset_1,i3])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t17_finset_1_neg,i1,i2,i4,t17_xboole_1,commutativity_k3_xboole_0])).
% SZS output end Refutation for SEU296+2
%------------------------------------------------------------------------------
