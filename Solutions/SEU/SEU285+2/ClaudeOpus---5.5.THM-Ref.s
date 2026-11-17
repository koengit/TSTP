%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU285+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP t26_wellord2 = Zermelo's well-ordering theorem
%            (chainy); one split round
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU285+2
% SZS output start Refutation for SEU285+2
fof(t31_ordinal1, lemma, (! [A] : ((! [B] : (in(B,A) => (ordinal(B) & subset(B,A)))) => ordinal(A))), file('Problems/SEU/SEU285+2.p',t31_ordinal1)).
fof(t23_ordinal1, lemma, (! [A,B] : (ordinal(B) => (in(A,B) => ordinal(A)))), file('Problems/SEU/SEU285+2.p',t23_ordinal1)).
fof(d2_ordinal1, axiom, (! [A] : (epsilon_transitive(A) <=> (! [B] : (in(B,A) => subset(B,A))))), file('Problems/SEU/SEU285+2.p',d2_ordinal1)).
fof(cc1_ordinal1, axiom, (! [A] : (ordinal(A) => (epsilon_transitive(A) & epsilon_connected(A)))), file('Problems/SEU/SEU285+2.p',cc1_ordinal1)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU285+2.p',d3_tarski)).
fof(antisymmetry_r2_hidden, axiom, (! [A,B] : (in(A,B) => ~ in(B,A))), file('Problems/SEU/SEU285+2.p',antisymmetry_r2_hidden)).
fof(symmetry_r2_wellord2, axiom, (! [A,B] : (equipotent(A,B) => equipotent(B,A))), file('Problems/SEU/SEU285+2.p',symmetry_r2_wellord2)).
fof(redefinition_r2_wellord2, axiom, (! [A,B] : (equipotent(A,B) <=> are_equipotent(A,B))), file('Problems/SEU/SEU285+2.p',redefinition_r2_wellord2)).
fof(t7_wellord2, lemma, (! [A] : (ordinal(A) => well_ordering(inclusion_relation(A)))), file('Problems/SEU/SEU285+2.p',t7_wellord2)).
fof(d1_wellord2, axiom, (! [A,B] : (relation(B) => (B = inclusion_relation(A) <=> (relation_field(B) = A & (! [C,D] : ((in(C,A) & in(D,A)) => (in(ordered_pair(C,D),B) <=> subset(C,D)))))))), file('Problems/SEU/SEU285+2.p',d1_wellord2)).
fof(dt_k1_wellord2, axiom, (! [A] : relation(inclusion_relation(A))), file('Problems/SEU/SEU285+2.p',dt_k1_wellord2)).
fof(l30_wellord2, lemma, (! [A,B] : (relation(B) => ~ ((well_ordering(B) & equipotent(A,relation_field(B)) & (! [C] : (relation(C) => ~ well_orders(C,A))))))), file('Problems/SEU/SEU285+2.p',l30_wellord2)).
fof(t25_wellord2, lemma, (! [A,B] : (relation(B) => (well_orders(B,A) => (relation_field(relation_restriction(B,A)) = A & well_ordering(relation_restriction(B,A)))))), file('Problems/SEU/SEU285+2.p',t25_wellord2)).
fof(t39_wellord1, lemma, (! [A,B] : (relation(B) => ((well_ordering(B) & subset(A,relation_field(B))) => relation_field(relation_restriction(B,A)) = A))), file('Problems/SEU/SEU285+2.p',t39_wellord1)).
fof(t32_wellord1, lemma, (! [A,B] : (relation(B) => (well_ordering(B) => well_ordering(relation_restriction(B,A))))), file('Problems/SEU/SEU285+2.p',t32_wellord1)).
fof(dt_k2_wellord1, axiom, (! [A,B] : (relation(A) => relation(relation_restriction(A,B)))), file('Problems/SEU/SEU285+2.p',dt_k2_wellord1)).
fof(s3_funct_1__e16_22__wellord2, lemma, (! [A] : (? [B] : (relation(B) & function(B) & relation_dom(B) = A & (! [C] : (in(C,A) => apply(B,C) = singleton(C)))))), file('Problems/SEU/SEU285+2.p',s3_funct_1__e16_22__wellord2)).
fof(d8_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (one_to_one(A) <=> (! [B,C] : ((in(B,relation_dom(A)) & in(C,relation_dom(A)) & apply(A,B) = apply(A,C)) => B = C))))), file('Problems/SEU/SEU285+2.p',d8_funct_1)).
fof(t6_zfmisc_1, lemma, (! [A,B] : (subset(singleton(A),singleton(B)) => A = B)), file('Problems/SEU/SEU285+2.p',t6_zfmisc_1)).
fof(reflexivity_r1_tarski, axiom, (! [A,B] : subset(A,A)), file('Problems/SEU/SEU285+2.p',reflexivity_r1_tarski)).
fof(d1_tarski, axiom, (! [A,B] : (B = singleton(A) <=> (! [C] : (in(C,B) <=> C = A)))), file('Problems/SEU/SEU285+2.p',d1_tarski)).
fof(d5_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B] : (B = relation_rng(A) <=> (! [C] : (in(C,B) <=> (? [D] : (in(D,relation_dom(A)) & C = apply(A,D))))))))), file('Problems/SEU/SEU285+2.p',d5_funct_1)).
fof(t136_zfmisc_1, lemma, (! [A] : (? [B] : (in(A,B) & (! [C,D] : ((in(C,B) & subset(D,C)) => in(D,B))) & (! [C] : (in(C,B) => in(powerset(C),B))) & (! [C] : ~ ((subset(C,B) & ~ are_equipotent(C,B) & ~ in(C,B))))))), file('Problems/SEU/SEU285+2.p',t136_zfmisc_1)).
fof(s1_xboole_0__e6_22__wellord2, lemma, (! [A] : (? [B] : (! [C] : (in(C,B) <=> (in(C,A) & ordinal(C)))))), file('Problems/SEU/SEU285+2.p',s1_xboole_0__e6_22__wellord2)).
fof(d4_wellord2, axiom, (! [A,B] : (equipotent(A,B) <=> (? [C] : (relation(C) & function(C) & one_to_one(C) & relation_dom(C) = A & relation_rng(C) = B)))), file('Problems/SEU/SEU285+2.p',d4_wellord2)).
fof(t26_wellord2, conjecture, (! [A] : (? [B] : (relation(B) & well_orders(B,A)))), file('Problems/SEU/SEU285+2.p',t26_wellord2)).
fof(t26_wellord2_neg, negated_conjecture, ~ ((! [A] : (? [B] : (relation(B) & well_orders(B,A))))), inference(negate_conjecture,[status(cth)],[t26_wellord2])).
fof(s1, plain, (! [M,X] : (((! [C] : (in(C,X) <=> (in(C,M) & ordinal(C)))) & (! [C,D] : ((in(C,M) & subset(D,C)) => in(D,M)))) => ordinal(X))), inference(lemma,[status(thm)],[t31_ordinal1,t23_ordinal1,d2_ordinal1,cc1_ordinal1,d3_tarski])).
fof(s2, plain, (! [M,X] : (((! [C] : (in(C,X) <=> (in(C,M) & ordinal(C)))) & (! [C,D] : ((in(C,M) & subset(D,C)) => in(D,M)))) => ~ in(X,M))), inference(lemma,[status(thm)],[s1,antisymmetry_r2_hidden])).
fof(s3, plain, (! [M,X] : (((! [C] : (in(C,X) <=> (in(C,M) & ordinal(C)))) & (! [C,D] : ((in(C,M) & subset(D,C)) => in(D,M))) & (! [C] : ~ ((subset(C,M) & ~ are_equipotent(C,M) & ~ in(C,M))))) => equipotent(M,X))), inference(lemma,[status(thm)],[s2,d3_tarski,symmetry_r2_wellord2,redefinition_r2_wellord2])).
fof(s4, plain, (! [X] : (ordinal(X) => (well_ordering(inclusion_relation(X)) & relation_field(inclusion_relation(X)) = X))), inference(lemma,[status(thm)],[t7_wellord2,d1_wellord2,dt_k1_wellord2])).
fof(s5, plain, (! [M,X] : ((equipotent(M,X) & ordinal(X)) => (? [R] : (relation(R) & well_orders(R,M))))), inference(lemma,[status(thm)],[l30_wellord2,s4,dt_k1_wellord2])).
fof(s6, plain, (! [R,M,S] : ((relation(R) & well_orders(R,M) & subset(S,M)) => (? [R2] : (relation(R2) & well_ordering(R2) & relation_field(R2) = S)))), inference(lemma,[status(thm)],[t25_wellord2,t39_wellord1,t32_wellord1,dt_k2_wellord1])).
fof(sg1, plain, (! [A] : (? [G] : (relation(G) & function(G) & relation_dom(G) = A & (! [C] : (in(C,A) => apply(G,C) = singleton(C)))))), inference(lemma,[status(thm)],[s3_funct_1__e16_22__wellord2])).
fof(sg2, plain, (! [G,A] : ((relation(G) & function(G) & relation_dom(G) = A & (! [C] : (in(C,A) => apply(G,C) = singleton(C)))) => one_to_one(G))), inference(lemma,[status(thm)],[d8_funct_1,t6_zfmisc_1,reflexivity_r1_tarski])).
fof(ssub, plain, (! [D,A] : (in(D,A) => subset(singleton(D),A))), inference(lemma,[status(thm)],[d1_tarski,d3_tarski])).
fof(sg3, plain, (! [G,A,M] : ((relation(G) & function(G) & relation_dom(G) = A & (! [C] : (in(C,A) => apply(G,C) = singleton(C))) & in(A,M) & (! [C,D] : ((in(C,M) & subset(D,C)) => in(D,M)))) => subset(relation_rng(G),M))), inference(lemma,[status(thm)],[d5_funct_1,d3_tarski,ssub])).
fof(sg, plain, (! [A,M] : ((in(A,M) & (! [C,D] : ((in(C,M) & subset(D,C)) => in(D,M)))) => (? [G] : (relation(G) & function(G) & one_to_one(G) & relation_dom(G) = A & subset(relation_rng(G),M))))), inference(lemma,[status(thm)],[sg1,sg2,sg3])).
fof(s8a, plain, (! [A] : (? [M,X] : (in(A,M) & (! [C,D] : ((in(C,M) & subset(D,C)) => in(D,M))) & (! [C] : ~ ((subset(C,M) & ~ are_equipotent(C,M) & ~ in(C,M)))) & (! [C] : (in(C,X) <=> (in(C,M) & ordinal(C))))))), inference(lemma,[status(thm)],[t136_zfmisc_1,s1_xboole_0__e6_22__wellord2])).
fof(s8b, plain, (! [M,X] : (((! [C,D] : ((in(C,M) & subset(D,C)) => in(D,M))) & (! [C] : ~ ((subset(C,M) & ~ are_equipotent(C,M) & ~ in(C,M)))) & (! [C] : (in(C,X) <=> (in(C,M) & ordinal(C))))) => (? [R] : (relation(R) & well_orders(R,M))))), inference(lemma,[status(thm)],[s1,s3,s5])).
fof(s8c, plain, (! [A,M,R] : ((in(A,M) & (! [C,D] : ((in(C,M) & subset(D,C)) => in(D,M))) & relation(R) & well_orders(R,M)) => (? [B] : (relation(B) & well_orders(B,A))))), inference(lemma,[status(thm)],[sg,s6,d4_wellord2,l30_wellord2])).
fof(s8, plain, (! [A] : (? [B] : (relation(B) & well_orders(B,A)))), inference(lemma,[status(thm)],[s8a,s8b,s8c])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t26_wellord2_neg,s8])).
% SZS output end Refutation for SEU285+2
%------------------------------------------------------------------------------
