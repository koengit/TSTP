%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU260+1 : TPTP v10.0.0. Released v3.3.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : SUGGESTED CHANGE: CounterSatisfiable -> Theorem (TPTP v10.0.0 status is
%            CounterSatisfiable; this file is a verified refutation)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: bushy t53_wellord1: SEU260+2 proof adapted
%            (l1-l4_wellord1 for the relat_2 defs, membership via t3/t4/t2/t5_subset since no
%            d3_tarski, t30_relat_1 for field)
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU260+1
% SZS output start Refutation for SEU260+1
fof(d7_wellord1, axiom, (! [A] : (relation(A) => (! [B] : (relation(B) => (! [C] : ((relation(C) & function(C)) => (relation_isomorphism(A,B,C) <=> (relation_dom(C) = relation_field(A) & relation_rng(C) = relation_field(B) & one_to_one(C) & (! [D,E] : (in(ordered_pair(D,E),A) <=> (in(D,relation_field(A)) & in(E,relation_field(A)) & in(ordered_pair(apply(C,D),apply(C,E)),B)))))))))))), file('Problems/SEU/SEU260+1.p',d7_wellord1)).
fof(d5_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B] : (B = relation_rng(A) <=> (! [C] : (in(C,B) <=> (? [D] : (in(D,relation_dom(A)) & C = apply(A,D))))))))), file('Problems/SEU/SEU260+1.p',d5_funct_1)).
fof(l1_wellord1, axiom, (! [A] : (relation(A) => (reflexive(A) <=> (! [B] : (in(B,relation_field(A)) => in(ordered_pair(B,B),A)))))), file('Problems/SEU/SEU260+1.p',l1_wellord1)).
fof(l2_wellord1, axiom, (! [A] : (relation(A) => (transitive(A) <=> (! [B,C,D] : ((in(ordered_pair(B,C),A) & in(ordered_pair(C,D),A)) => in(ordered_pair(B,D),A)))))), file('Problems/SEU/SEU260+1.p',l2_wellord1)).
fof(t30_relat_1, axiom, (! [A,B,C] : (relation(C) => (in(ordered_pair(A,B),C) => (in(A,relation_field(C)) & in(B,relation_field(C)))))), file('Problems/SEU/SEU260+1.p',t30_relat_1)).
fof(l4_wellord1, axiom, (! [A] : (relation(A) => (connected(A) <=> (! [B,C] : ~ ((in(B,relation_field(A)) & in(C,relation_field(A)) & B != C & ~ in(ordered_pair(B,C),A) & ~ in(ordered_pair(C,B),A))))))), file('Problems/SEU/SEU260+1.p',l4_wellord1)).
fof(l3_wellord1, axiom, (! [A] : (relation(A) => (antisymmetric(A) <=> (! [B,C] : ((in(ordered_pair(B,C),A) & in(ordered_pair(C,B),A)) => B = C))))), file('Problems/SEU/SEU260+1.p',l3_wellord1)).
fof(d13_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B,C] : (C = relation_inverse_image(A,B) <=> (! [D] : (in(D,C) <=> (in(D,relation_dom(A)) & in(apply(A,D),B)))))))), file('Problems/SEU/SEU260+1.p',d13_funct_1)).
fof(t3_subset, axiom, (! [A,B] : (element(A,powerset(B)) <=> subset(A,B))), file('Problems/SEU/SEU260+1.p',t3_subset)).
fof(t4_subset, axiom, (! [A,B,C] : ((in(A,B) & element(B,powerset(C))) => element(A,C))), file('Problems/SEU/SEU260+1.p',t4_subset)).
fof(t2_subset, axiom, (! [A,B] : (element(A,B) => (empty(B) | in(A,B)))), file('Problems/SEU/SEU260+1.p',t2_subset)).
fof(t5_subset, axiom, (! [A,B,C] : ~ ((in(A,B) & element(B,powerset(C)) & empty(C)))), file('Problems/SEU/SEU260+1.p',t5_subset)).
fof(existence_m1_subset_1, axiom, (! [A] : (? [B] : element(B,A))), file('Problems/SEU/SEU260+1.p',existence_m1_subset_1)).
fof(t6_boole, axiom, (! [A] : (empty(A) => A = empty_set)), file('Problems/SEU/SEU260+1.p',t6_boole)).
fof(t7_boole, axiom, (! [A,B] : ~ ((in(A,B) & empty(B)))), file('Problems/SEU/SEU260+1.p',t7_boole)).
fof(fc1_xboole_0, axiom, empty(empty_set), file('Problems/SEU/SEU260+1.p',fc1_xboole_0)).
fof(d1_wellord1, axiom, (! [A] : (relation(A) => (! [B,C] : (C = fiber(A,B) <=> (! [D] : (in(D,C) <=> (D != B & in(ordered_pair(D,B),A)))))))), file('Problems/SEU/SEU260+1.p',d1_wellord1)).
fof(d2_wellord1, axiom, (! [A] : (relation(A) => (well_founded_relation(A) <=> (! [B] : ~ ((subset(B,relation_field(A)) & B != empty_set & (! [C] : ~ ((in(C,B) & disjoint(fiber(A,C),B)))))))))), file('Problems/SEU/SEU260+1.p',d2_wellord1)).
fof(t3_xboole_0, axiom, (! [A,B] : (~ ((~ disjoint(A,B) & (! [C] : ~ ((in(C,A) & in(C,B)))))) & ~ (((? [C] : (in(C,A) & in(C,B))) & disjoint(A,B))))), file('Problems/SEU/SEU260+1.p',t3_xboole_0)).
fof(t167_relat_1, axiom, (! [A,B] : (relation(B) => subset(relation_inverse_image(B,A),relation_dom(B)))), file('Problems/SEU/SEU260+1.p',t167_relat_1)).
fof(t53_wellord1, conjecture, (! [A] : (relation(A) => (! [B] : (relation(B) => (! [C] : ((relation(C) & function(C)) => (relation_isomorphism(A,B,C) => ((reflexive(A) => reflexive(B)) & (transitive(A) => transitive(B)) & (connected(A) => connected(B)) & (antisymmetric(A) => antisymmetric(B)) & (well_founded_relation(A) => well_founded_relation(B)))))))))), file('Problems/SEU/SEU260+1.p',t53_wellord1)).
fof(t53_wellord1_neg, negated_conjecture, ~ ((! [A] : (relation(A) => (! [B] : (relation(B) => (! [C] : ((relation(C) & function(C)) => (relation_isomorphism(A,B,C) => ((reflexive(A) => reflexive(B)) & (transitive(A) => transitive(B)) & (connected(A) => connected(B)) & (antisymmetric(A) => antisymmetric(B)) & (well_founded_relation(A) => well_founded_relation(B))))))))))), inference(negate_conjecture,[status(cth)],[t53_wellord1])).
fof(i1, plain, (! [A,B,C] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C)) => (relation_dom(C) = relation_field(A) & relation_rng(C) = relation_field(B) & one_to_one(C) & (! [D,E] : (in(ordered_pair(D,E),A) <=> (in(D,relation_field(A)) & in(E,relation_field(A)) & in(ordered_pair(apply(C,D),apply(C,E)),B))))))), inference(lemma,[status(thm)],[d7_wellord1])).
fof(rngC, plain, (! [C,Y] : ((relation(C) & function(C) & in(Y,relation_rng(C))) => (? [X] : (in(X,relation_dom(C)) & Y = apply(C,X))))), inference(lemma,[status(thm)],[d5_funct_1])).
fof(domC, plain, (! [C,X] : ((relation(C) & function(C) & in(X,relation_dom(C))) => in(apply(C,X),relation_rng(C)))), inference(lemma,[status(thm)],[d5_funct_1])).
fof(p_refl, plain, (! [A,B,C] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C) & reflexive(A)) => reflexive(B))), inference(lemma,[status(thm)],[i1,rngC,l1_wellord1])).
fof(p_trans, plain, (! [A,B,C] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C) & transitive(A)) => transitive(B))), inference(lemma,[status(thm)],[i1,rngC,l2_wellord1,t30_relat_1])).
fof(p_conn, plain, (! [A,B,C] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C) & connected(A)) => connected(B))), inference(lemma,[status(thm)],[i1,rngC,l4_wellord1])).
fof(p_anti, plain, (! [A,B,C] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C) & antisymmetric(A)) => antisymmetric(B))), inference(lemma,[status(thm)],[i1,rngC,l3_wellord1,t30_relat_1])).
fof(pre, plain, (! [C,S,X] : ((relation(C) & function(C)) => (in(X,relation_inverse_image(C,S)) <=> (in(X,relation_dom(C)) & in(apply(C,X),S))))), inference(lemma,[status(thm)],[d13_funct_1])).
fof(sub, plain, (! [Y,S,X] : ((in(Y,S) & subset(S,X)) => in(Y,X))), inference(lemma,[status(thm)],[t3_subset,t4_subset,t2_subset,t5_subset])).
fof(nemp, plain, (! [B] : (B != empty_set <=> (? [X] : in(X,B)))), inference(lemma,[status(thm)],[existence_m1_subset_1,t2_subset,t6_boole,t7_boole,fc1_xboole_0])).
fof(fibe, plain, (! [R,D,X] : (relation(R) => (in(X,fiber(R,D)) <=> (X != D & in(ordered_pair(X,D),R))))), inference(lemma,[status(thm)],[d1_wellord1])).
fof(wf_min, plain, (! [A,S] : ((relation(A) & well_founded_relation(A) & subset(S,relation_field(A)) & S != empty_set) => (? [X] : (in(X,S) & (! [Z] : ~ ((in(Z,S) & Z != X & in(ordered_pair(Z,X),A)))))))), inference(lemma,[status(thm)],[d2_wellord1,fibe,t3_xboole_0])).
fof(min_wf, plain, (! [B] : ((relation(B) & (! [S] : ((subset(S,relation_field(B)) & S != empty_set) => (? [Y] : (in(Y,S) & (! [Z] : ~ ((in(Z,S) & Z != Y & in(ordered_pair(Z,Y),B))))))))) => well_founded_relation(B))), inference(lemma,[status(thm)],[d2_wellord1,fibe,t3_xboole_0])).
fof(wf1a, plain, (! [A,B,C,S] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C)) => subset(relation_inverse_image(C,S),relation_field(A)))), inference(lemma,[status(thm)],[i1,t167_relat_1])).
fof(wf1b, plain, (! [A,B,C,S,Y] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C) & subset(S,relation_field(B)) & in(Y,S)) => relation_inverse_image(C,S) != empty_set)), inference(lemma,[status(thm)],[i1,rngC,pre,nemp,sub])).
fof(wf1, plain, (! [A,B,C,S] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C) & subset(S,relation_field(B)) & S != empty_set) => (subset(relation_inverse_image(C,S),relation_field(A)) & relation_inverse_image(C,S) != empty_set))), inference(lemma,[status(thm)],[wf1a,wf1b,nemp])).
fof(wf2, plain, (! [A,B,C,S,X] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C) & subset(S,relation_field(B)) & in(X,relation_inverse_image(C,S)) & (! [Z] : ~ ((in(Z,relation_inverse_image(C,S)) & Z != X & in(ordered_pair(Z,X),A))))) => (in(apply(C,X),S) & (! [Z] : ~ ((in(Z,S) & Z != apply(C,X) & in(ordered_pair(Z,apply(C,X)),B))))))), inference(lemma,[status(thm)],[i1,rngC,pre,domC,sub])).
fof(p_wf, plain, (! [A,B,C] : ((relation(A) & relation(B) & relation(C) & function(C) & relation_isomorphism(A,B,C) & well_founded_relation(A)) => well_founded_relation(B))), inference(lemma,[status(thm)],[min_wf,wf_min,wf1,wf2])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t53_wellord1_neg,p_refl,p_trans,p_conn,p_anti,p_wf])).
% SZS output end Refutation for SEU260+1
%------------------------------------------------------------------------------
