%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU274+1 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP t6_wellord2 (inclusion on an ordinal is well-
%            founded); first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU274+1
% SZS output start Refutation for SEU274+1
fof(d10_xboole_0, axiom, (! [A,B] : (A = B <=> (subset(A,B) & subset(B,A)))), file('Problems/SEU/SEU274+1.p',d10_xboole_0)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU274+1.p',d3_tarski)).
fof(t7_boole, axiom, (! [A,B] : ~ ((in(A,B) & empty(B)))), file('Problems/SEU/SEU274+1.p',t7_boole)).
fof(fc1_xboole_0, axiom, empty(empty_set), file('Problems/SEU/SEU274+1.p',fc1_xboole_0)).
fof(d1_wellord2, axiom, (! [A,B] : (relation(B) => (B = inclusion_relation(A) <=> (relation_field(B) = A & (! [C,D] : ((in(C,A) & in(D,A)) => (in(ordered_pair(C,D),B) <=> subset(C,D)))))))), file('Problems/SEU/SEU274+1.p',d1_wellord2)).
fof(dt_k1_wellord2, axiom, (! [A] : relation(inclusion_relation(A))), file('Problems/SEU/SEU274+1.p',dt_k1_wellord2)).
fof(d1_wellord1, axiom, (! [A] : (relation(A) => (! [B,C] : (C = fiber(A,B) <=> (! [D] : (in(D,C) <=> (D != B & in(ordered_pair(D,B),A)))))))), file('Problems/SEU/SEU274+1.p',d1_wellord1)).
fof(s1_ordinal1__e8_6__wellord2, axiom, (! [A] : ((? [B] : (ordinal(B) & in(B,A))) => (? [B] : (ordinal(B) & in(B,A) & (! [C] : (ordinal(C) => (in(C,A) => ordinal_subset(B,C)))))))), file('Problems/SEU/SEU274+1.p',s1_ordinal1__e8_6__wellord2)).
fof(t23_ordinal1, axiom, (! [A,B] : (ordinal(B) => (in(A,B) => ordinal(A)))), file('Problems/SEU/SEU274+1.p',t23_ordinal1)).
fof(redefinition_r1_ordinal1, axiom, (! [A,B] : ((ordinal(A) & ordinal(B)) => (ordinal_subset(A,B) <=> subset(A,B)))), file('Problems/SEU/SEU274+1.p',redefinition_r1_ordinal1)).
fof(d7_xboole_0, axiom, (! [A,B] : (disjoint(A,B) <=> set_intersection2(A,B) = empty_set)), file('Problems/SEU/SEU274+1.p',d7_xboole_0)).
fof(d3_xboole_0, axiom, (! [A,B,C] : (C = set_intersection2(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) & in(D,B)))))), file('Problems/SEU/SEU274+1.p',d3_xboole_0)).
fof(t6_wellord2, conjecture, (! [A] : (ordinal(A) => well_founded_relation(inclusion_relation(A)))), file('Problems/SEU/SEU274+1.p',t6_wellord2)).
fof(t6_wellord2_neg, negated_conjecture, ~ ((! [A] : (ordinal(A) => well_founded_relation(inclusion_relation(A))))), inference(negate_conjecture,[status(cth)],[t6_wellord2])).
fof(d2_wellord1, axiom, (! [A] : (relation(A) => (well_founded_relation(A) <=> (! [B] : ~ ((subset(B,relation_field(A)) & B != empty_set & (! [C] : ~ ((in(C,B) & disjoint(fiber(A,C),B)))))))))), file('Problems/SEU/SEU274+1.p',d2_wellord1)).
fof(ne, plain, (! [B] : (B != empty_set => (? [X] : in(X,B)))), inference(lemma,[status(thm)],[d10_xboole_0,d3_tarski,t7_boole,fc1_xboole_0])).
fof(w1, plain, (! [A] : relation_field(inclusion_relation(A)) = A), inference(lemma,[status(thm)],[d1_wellord2,dt_k1_wellord2])).
fof(w2, plain, (! [A,C,D] : ((in(C,A) & in(D,A)) => (in(ordered_pair(D,C),inclusion_relation(A)) <=> subset(D,C)))), inference(lemma,[status(thm)],[d1_wellord2,dt_k1_wellord2])).
fof(w3, plain, (! [A,C,D] : (in(D,fiber(inclusion_relation(A),C)) <=> (D != C & in(ordered_pair(D,C),inclusion_relation(A))))), inference(lemma,[status(thm)],[d1_wellord1,dt_k1_wellord2])).
fof(w4, plain, (! [A,B] : ((ordinal(A) & subset(B,A) & B != empty_set) => (? [C] : (in(C,B) & (! [D] : (in(D,B) => subset(C,D))))))), inference(lemma,[status(thm)],[s1_ordinal1__e8_6__wellord2,ne,t23_ordinal1,redefinition_r1_ordinal1,d3_tarski])).
fof(w5, plain, (! [X,Y] : ((! [Z] : ~ ((in(Z,X) & in(Z,Y)))) => disjoint(X,Y))), inference(lemma,[status(thm)],[d7_xboole_0,d3_xboole_0,d10_xboole_0,d3_tarski,t7_boole,fc1_xboole_0])).
fof(w6, plain, (! [A,B] : ((ordinal(A) & subset(B,A) & B != empty_set) => (? [C] : (in(C,B) & disjoint(fiber(inclusion_relation(A),C),B))))), inference(lemma,[status(thm)],[w4,w3,w2,w5,d3_tarski,d10_xboole_0])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t6_wellord2_neg,d2_wellord1,dt_k1_wellord2,w1,w6])).
% SZS output end Refutation for SEU274+1
%------------------------------------------------------------------------------
