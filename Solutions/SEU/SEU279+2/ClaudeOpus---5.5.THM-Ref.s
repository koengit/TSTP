%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU279+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: chainy version, same proof file
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU279+2
% SZS output start Refutation for SEU279+2
fof(d4_wellord2, axiom, (! [A,B] : (equipotent(A,B) <=> (? [C] : (relation(C) & function(C) & one_to_one(C) & relation_dom(C) = A & relation_rng(C) = B)))), file('Problems/SEU/SEU279+2.p',d4_wellord2)).
fof(d4_wellord1, axiom, (! [A] : (relation(A) => (well_ordering(A) <=> (reflexive(A) & transitive(A) & antisymmetric(A) & connected(A) & well_founded_relation(A))))), file('Problems/SEU/SEU279+2.p',d4_wellord1)).
fof(d9_relat_2, axiom, (! [A] : (relation(A) => (reflexive(A) <=> is_reflexive_in(A,relation_field(A))))), file('Problems/SEU/SEU279+2.p',d9_relat_2)).
fof(d1_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_reflexive_in(A,B) <=> (! [C] : (in(C,B) => in(ordered_pair(C,C),A))))))), file('Problems/SEU/SEU279+2.p',d1_relat_2)).
fof(d5_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B] : (B = relation_rng(A) <=> (! [C] : (in(C,B) <=> (? [D] : (in(D,relation_dom(A)) & C = apply(A,D))))))))), file('Problems/SEU/SEU279+2.p',d5_funct_1)).
fof(d6_relat_1, axiom, (! [A] : (relation(A) => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)))), file('Problems/SEU/SEU279+2.p',d6_relat_1)).
fof(d2_xboole_0, axiom, (! [A,B,C] : (C = set_union2(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) | in(D,B)))))), file('Problems/SEU/SEU279+2.p',d2_xboole_0)).
fof(d4_relat_1, axiom, (! [A] : (relation(A) => (! [B] : (B = relation_dom(A) <=> (! [C] : (in(C,B) <=> (? [D] : in(ordered_pair(C,D),A)))))))), file('Problems/SEU/SEU279+2.p',d4_relat_1)).
fof(d5_relat_1, axiom, (! [A] : (relation(A) => (! [B] : (B = relation_rng(A) <=> (! [C] : (in(C,B) <=> (? [D] : in(ordered_pair(D,C),A)))))))), file('Problems/SEU/SEU279+2.p',d5_relat_1)).
fof(t30_relat_1, lemma, (! [A,B,C] : (relation(C) => (in(ordered_pair(A,B),C) => (in(A,relation_field(C)) & in(B,relation_field(C)))))), file('Problems/SEU/SEU279+2.p',t30_relat_1)).
fof(d10_xboole_0, axiom, (! [A,B] : (A = B <=> (subset(A,B) & subset(B,A)))), file('Problems/SEU/SEU279+2.p',d10_xboole_0)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU279+2.p',d3_tarski)).
fof(d7_wellord1, axiom, (! [A] : (relation(A) => (! [B] : (relation(B) => (! [C] : ((relation(C) & function(C)) => (relation_isomorphism(A,B,C) <=> (relation_dom(C) = relation_field(A) & relation_rng(C) = relation_field(B) & one_to_one(C) & (! [D,E] : (in(ordered_pair(D,E),A) <=> (in(D,relation_field(A)) & in(E,relation_field(A)) & in(ordered_pair(apply(C,D),apply(C,E)),B)))))))))))), file('Problems/SEU/SEU279+2.p',d7_wellord1)).
fof(t49_wellord1, lemma, (! [A] : (relation(A) => (! [B] : (relation(B) => (! [C] : ((relation(C) & function(C)) => (relation_isomorphism(A,B,C) => relation_isomorphism(B,A,function_inverse(C))))))))), file('Problems/SEU/SEU279+2.p',t49_wellord1)).
fof(t54_wellord1, lemma, (! [A] : (relation(A) => (! [B] : (relation(B) => (! [C] : ((relation(C) & function(C)) => ((well_ordering(A) & relation_isomorphism(A,B,C)) => well_ordering(B)))))))), file('Problems/SEU/SEU279+2.p',t54_wellord1)).
fof(dt_k2_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (relation(function_inverse(A)) & function(function_inverse(A))))), file('Problems/SEU/SEU279+2.p',dt_k2_funct_1)).
fof(s1_relat_1__e6_21__wellord2, lemma, (! [A,B,C] : ((relation(B) & relation(C) & function(C)) => (? [D] : (relation(D) & (! [E,F] : (in(ordered_pair(E,F),D) <=> (in(E,A) & in(F,A) & in(ordered_pair(apply(C,E),apply(C,F)),B)))))))), file('Problems/SEU/SEU279+2.p',s1_relat_1__e6_21__wellord2)).
fof(t8_wellord1, lemma, (! [A] : (relation(A) => (well_orders(A,relation_field(A)) <=> well_ordering(A)))), file('Problems/SEU/SEU279+2.p',t8_wellord1)).
fof(l30_wellord2, conjecture, (! [A,B] : (relation(B) => ~ ((well_ordering(B) & equipotent(A,relation_field(B)) & (! [C] : (relation(C) => ~ well_orders(C,A))))))), file('Problems/SEU/SEU279+2.p',l30_wellord2)).
fof(l30_wellord2_neg, negated_conjecture, ~ ((! [A,B] : (relation(B) => ~ ((well_ordering(B) & equipotent(A,relation_field(B)) & (! [C] : (relation(C) => ~ well_orders(C,A)))))))), inference(negate_conjecture,[status(cth)],[l30_wellord2])).
fof(bij, plain, (! [A,X] : (equipotent(A,X) => (? [F] : (relation(F) & function(F) & one_to_one(F) & relation_dom(F) = A & relation_rng(F) = X)))), inference(lemma,[status(thm)],[d4_wellord2])).
fof(reflB, plain, (! [B,Y] : ((relation(B) & well_ordering(B) & in(Y,relation_field(B))) => in(ordered_pair(Y,Y),B))), inference(lemma,[status(thm)],[d4_wellord1,d9_relat_2,d1_relat_2])).
fof(rngF, plain, (! [F,E] : ((relation(F) & function(F) & in(E,relation_dom(F))) => in(apply(F,E),relation_rng(F)))), inference(lemma,[status(thm)],[d5_funct_1])).
fof(fldin, plain, (! [R,X] : ((relation(R) & in(X,relation_field(R))) => (? [Y] : (in(ordered_pair(X,Y),R) | in(ordered_pair(Y,X),R))))), inference(lemma,[status(thm)],[d6_relat_1,d2_xboole_0,d4_relat_1,d5_relat_1])).
fof(l1, plain, (! [A,B,F,R] : ((relation(B) & well_ordering(B) & relation(F) & function(F) & relation_dom(F) = A & relation_rng(F) = relation_field(B) & relation(R) & (! [E,E2] : (in(ordered_pair(E,E2),R) <=> (in(E,A) & in(E2,A) & in(ordered_pair(apply(F,E),apply(F,E2)),B))))) => relation_field(R) = A)), inference(lemma,[status(thm)],[reflB,rngF,fldin,t30_relat_1,d10_xboole_0,d3_tarski])).
fof(l2, plain, (! [A,B,F,R] : ((relation(B) & relation(F) & function(F) & one_to_one(F) & relation_dom(F) = A & relation_rng(F) = relation_field(B) & relation(R) & relation_field(R) = A & (! [E,E2] : (in(ordered_pair(E,E2),R) <=> (in(E,A) & in(E2,A) & in(ordered_pair(apply(F,E),apply(F,E2)),B))))) => relation_isomorphism(R,B,F))), inference(lemma,[status(thm)],[d7_wellord1])).
fof(l3, plain, (! [B,F,R] : ((relation(B) & well_ordering(B) & relation(F) & function(F) & relation(R) & relation_isomorphism(R,B,F)) => well_ordering(R))), inference(lemma,[status(thm)],[t49_wellord1,t54_wellord1,dt_k2_funct_1])).
fof(main, plain, (! [A,B] : ((relation(B) & well_ordering(B) & equipotent(A,relation_field(B))) => (? [R] : (relation(R) & well_orders(R,A))))), inference(lemma,[status(thm)],[bij,s1_relat_1__e6_21__wellord2,l1,l2,l3,t8_wellord1])).
fof(done, plain, $false, inference(lemma,[status(thm)],[l30_wellord2_neg,main])).
% SZS output end Refutation for SEU279+2
%------------------------------------------------------------------------------
