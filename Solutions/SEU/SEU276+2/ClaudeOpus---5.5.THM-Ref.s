%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU276+2 : TPTP v10.0.0. Released v3.3.0.
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
% SZS status Theorem for SEU276+2
% SZS output start Refutation for SEU276+2
fof(t16_wellord1, lemma, (! [A,B,C] : (relation(C) => (in(A,relation_restriction(C,B)) <=> (in(A,C) & in(A,cartesian_product2(B,B)))))), file('Problems/SEU/SEU276+2.p',t16_wellord1)).
fof(t106_zfmisc_1, lemma, (! [A,B,C,D] : (in(ordered_pair(A,B),cartesian_product2(C,D)) <=> (in(A,C) & in(B,D)))), file('Problems/SEU/SEU276+2.p',t106_zfmisc_1)).
fof(t20_wellord1, lemma, (! [A,B] : (relation(B) => (subset(relation_field(relation_restriction(B,A)),relation_field(B)) & subset(relation_field(relation_restriction(B,A)),A)))), file('Problems/SEU/SEU276+2.p',t20_wellord1)).
fof(d10_xboole_0, axiom, (! [A,B] : (A = B <=> (subset(A,B) & subset(B,A)))), file('Problems/SEU/SEU276+2.p',d10_xboole_0)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU276+2.p',d3_tarski)).
fof(d5_wellord1, axiom, (! [A] : (relation(A) => (! [B] : (well_orders(A,B) <=> (is_reflexive_in(A,B) & is_transitive_in(A,B) & is_antisymmetric_in(A,B) & is_connected_in(A,B) & is_well_founded_in(A,B)))))), file('Problems/SEU/SEU276+2.p',d5_wellord1)).
fof(d1_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_reflexive_in(A,B) <=> (! [C] : (in(C,B) => in(ordered_pair(C,C),A))))))), file('Problems/SEU/SEU276+2.p',d1_relat_2)).
fof(t30_relat_1, lemma, (! [A,B,C] : (relation(C) => (in(ordered_pair(A,B),C) => (in(A,relation_field(C)) & in(B,relation_field(C)))))), file('Problems/SEU/SEU276+2.p',t30_relat_1)).
fof(dt_k2_wellord1, axiom, (! [A,B] : (relation(A) => relation(relation_restriction(A,B)))), file('Problems/SEU/SEU276+2.p',dt_k2_wellord1)).
fof(d8_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_transitive_in(A,B) <=> (! [C,D,E] : ((in(C,B) & in(D,B) & in(E,B) & in(ordered_pair(C,D),A) & in(ordered_pair(D,E),A)) => in(ordered_pair(C,E),A))))))), file('Problems/SEU/SEU276+2.p',d8_relat_2)).
fof(d4_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_antisymmetric_in(A,B) <=> (! [C,D] : ((in(C,B) & in(D,B) & in(ordered_pair(C,D),A) & in(ordered_pair(D,C),A)) => C = D)))))), file('Problems/SEU/SEU276+2.p',d4_relat_2)).
fof(d6_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_connected_in(A,B) <=> (! [C,D] : ~ ((in(C,B) & in(D,B) & C != D & ~ in(ordered_pair(C,D),A) & ~ in(ordered_pair(D,C),A)))))))), file('Problems/SEU/SEU276+2.p',d6_relat_2)).
fof(d1_wellord1, axiom, (! [A] : (relation(A) => (! [B,C] : (C = fiber(A,B) <=> (! [D] : (in(D,C) <=> (D != B & in(ordered_pair(D,B),A)))))))), file('Problems/SEU/SEU276+2.p',d1_wellord1)).
fof(d3_wellord1, axiom, (! [A] : (relation(A) => (! [B] : (is_well_founded_in(A,B) <=> (! [C] : ~ ((subset(C,B) & C != empty_set & (! [D] : ~ ((in(D,C) & disjoint(fiber(A,D),C))))))))))), file('Problems/SEU/SEU276+2.p',d3_wellord1)).
fof(t3_xboole_0, lemma, (! [A,B] : (~ ((~ disjoint(A,B) & (! [C] : ~ ((in(C,A) & in(C,B)))))) & ~ (((? [C] : (in(C,A) & in(C,B))) & disjoint(A,B))))), file('Problems/SEU/SEU276+2.p',t3_xboole_0)).
fof(t25_wellord2, conjecture, (! [A,B] : (relation(B) => (well_orders(B,A) => (relation_field(relation_restriction(B,A)) = A & well_ordering(relation_restriction(B,A)))))), file('Problems/SEU/SEU276+2.p',t25_wellord2)).
fof(t25_wellord2_neg, negated_conjecture, ~ ((! [A,B] : (relation(B) => (well_orders(B,A) => (relation_field(relation_restriction(B,A)) = A & well_ordering(relation_restriction(B,A))))))), inference(negate_conjecture,[status(cth)],[t25_wellord2])).
fof(t8_wellord1, lemma, (! [A] : (relation(A) => (well_orders(A,relation_field(A)) <=> well_ordering(A)))), file('Problems/SEU/SEU276+2.p',t8_wellord1)).
fof(r_in, plain, (! [R,B,X,Y] : (relation(R) => (in(ordered_pair(X,Y),relation_restriction(R,B)) <=> (in(ordered_pair(X,Y),R) & in(X,B) & in(Y,B))))), inference(lemma,[status(thm)],[t16_wellord1,t106_zfmisc_1])).
fof(f1, plain, (! [R,A] : ((relation(R) & well_orders(R,A)) => relation_field(relation_restriction(R,A)) = A)), inference(lemma,[status(thm)],[t20_wellord1,d10_xboole_0,d3_tarski,d5_wellord1,d1_relat_2,r_in,t30_relat_1,dt_k2_wellord1])).
fof(p_refl, plain, (! [R,A] : ((relation(R) & well_orders(R,A)) => is_reflexive_in(relation_restriction(R,A),A))), inference(lemma,[status(thm)],[d5_wellord1,d1_relat_2,r_in,dt_k2_wellord1])).
fof(p_trans, plain, (! [R,A] : ((relation(R) & well_orders(R,A)) => is_transitive_in(relation_restriction(R,A),A))), inference(lemma,[status(thm)],[d5_wellord1,d8_relat_2,r_in,dt_k2_wellord1])).
fof(p_anti, plain, (! [R,A] : ((relation(R) & well_orders(R,A)) => is_antisymmetric_in(relation_restriction(R,A),A))), inference(lemma,[status(thm)],[d5_wellord1,d4_relat_2,r_in,dt_k2_wellord1])).
fof(p_conn, plain, (! [R,A] : ((relation(R) & well_orders(R,A)) => is_connected_in(relation_restriction(R,A),A))), inference(lemma,[status(thm)],[d5_wellord1,d6_relat_2,r_in,dt_k2_wellord1])).
fof(fib, plain, (! [R,B,D,X] : ((relation(R) & in(X,fiber(relation_restriction(R,B),D))) => in(X,fiber(R,D)))), inference(lemma,[status(thm)],[d1_wellord1,r_in,dt_k2_wellord1])).
fof(p_wf, plain, (! [R,A] : ((relation(R) & well_orders(R,A)) => is_well_founded_in(relation_restriction(R,A),A))), inference(lemma,[status(thm)],[d5_wellord1,d3_wellord1,fib,t3_xboole_0,dt_k2_wellord1])).
fof(wo, plain, (! [R,A] : ((relation(R) & well_orders(R,A)) => well_orders(relation_restriction(R,A),A))), inference(lemma,[status(thm)],[d5_wellord1,p_refl,p_trans,p_anti,p_conn,p_wf,dt_k2_wellord1])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t25_wellord2_neg,f1,wo,t8_wellord1,dt_k2_wellord1])).
% SZS output end Refutation for SEU276+2
%------------------------------------------------------------------------------
