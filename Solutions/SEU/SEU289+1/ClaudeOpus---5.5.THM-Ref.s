%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU289+1 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: bushy t28_wellord2 via the s2 scheme (dom = A directly);
%            least element by wf+connected+reflexive, unique by antisymmetry; first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU289+1
% SZS output start Refutation for SEU289+1
fof(t3_subset, axiom, (! [A,B] : (element(A,powerset(B)) <=> subset(A,B))), file('Problems/SEU/SEU289+1.p',t3_subset)).
fof(t4_subset, axiom, (! [A,B,C] : ((in(A,B) & element(B,powerset(C))) => element(A,C))), file('Problems/SEU/SEU289+1.p',t4_subset)).
fof(t2_subset, axiom, (! [A,B] : (element(A,B) => (empty(B) | in(A,B)))), file('Problems/SEU/SEU289+1.p',t2_subset)).
fof(t5_subset, axiom, (! [A,B,C] : ~ ((in(A,B) & element(B,powerset(C)) & empty(C)))), file('Problems/SEU/SEU289+1.p',t5_subset)).
fof(d7_xboole_0, axiom, (! [A,B] : (disjoint(A,B) <=> set_intersection2(A,B) = empty_set)), file('Problems/SEU/SEU289+1.p',d7_xboole_0)).
fof(d3_xboole_0, axiom, (! [A,B,C] : (C = set_intersection2(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) & in(D,B)))))), file('Problems/SEU/SEU289+1.p',d3_xboole_0)).
fof(t7_boole, axiom, (! [A,B] : ~ ((in(A,B) & empty(B)))), file('Problems/SEU/SEU289+1.p',t7_boole)).
fof(fc1_xboole_0, axiom, empty(empty_set), file('Problems/SEU/SEU289+1.p',fc1_xboole_0)).
fof(d5_wellord1, axiom, (! [A] : (relation(A) => (! [B] : (well_orders(A,B) <=> (is_reflexive_in(A,B) & is_transitive_in(A,B) & is_antisymmetric_in(A,B) & is_connected_in(A,B) & is_well_founded_in(A,B)))))), file('Problems/SEU/SEU289+1.p',d5_wellord1)).
fof(d3_wellord1, axiom, (! [A] : (relation(A) => (! [B] : (is_well_founded_in(A,B) <=> (! [C] : ~ ((subset(C,B) & C != empty_set & (! [D] : ~ ((in(D,C) & disjoint(fiber(A,D),C))))))))))), file('Problems/SEU/SEU289+1.p',d3_wellord1)).
fof(d1_wellord1, axiom, (! [A] : (relation(A) => (! [B,C] : (C = fiber(A,B) <=> (! [D] : (in(D,C) <=> (D != B & in(ordered_pair(D,B),A)))))))), file('Problems/SEU/SEU289+1.p',d1_wellord1)).
fof(d1_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_reflexive_in(A,B) <=> (! [C] : (in(C,B) => in(ordered_pair(C,C),A))))))), file('Problems/SEU/SEU289+1.p',d1_relat_2)).
fof(d6_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_connected_in(A,B) <=> (! [C,D] : ~ ((in(C,B) & in(D,B) & C != D & ~ in(ordered_pair(C,D),A) & ~ in(ordered_pair(D,C),A)))))))), file('Problems/SEU/SEU289+1.p',d6_relat_2)).
fof(d4_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_antisymmetric_in(A,B) <=> (! [C,D] : ((in(C,B) & in(D,B) & in(ordered_pair(C,D),A) & in(ordered_pair(D,C),A)) => C = D)))))), file('Problems/SEU/SEU289+1.p',d4_relat_2)).
fof(t92_zfmisc_1, axiom, (! [A,B] : (in(A,B) => subset(A,union(B)))), file('Problems/SEU/SEU289+1.p',t92_zfmisc_1)).
fof(t28_wellord2, conjecture, (! [A] : (~ empty(A) => ~ (((! [B] : ~ ((in(B,A) & B = empty_set))) & (! [B] : ((relation(B) & function(B)) => ~ ((relation_dom(B) = A & (! [C] : (in(C,A) => in(apply(B,C),C))))))))))), file('Problems/SEU/SEU289+1.p',t28_wellord2)).
fof(t28_wellord2_neg, negated_conjecture, ~ ((! [A] : (~ empty(A) => ~ (((! [B] : ~ ((in(B,A) & B = empty_set))) & (! [B] : ((relation(B) & function(B)) => ~ ((relation_dom(B) = A & (! [C] : (in(C,A) => in(apply(B,C),C)))))))))))), inference(negate_conjecture,[status(cth)],[t28_wellord2])).
fof(t26_wellord2, axiom, (! [A] : (? [B] : (relation(B) & well_orders(B,A)))), file('Problems/SEU/SEU289+1.p',t26_wellord2)).
fof(s2_funct_1__e10_24__wellord2, axiom, (! [A,B] : ((~ empty(A) & relation(B)) => (((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) & (! [C] : ~ ((in(C,A) & (! [D] : ~ ((? [J] : (C = J & in(D,J) & (! [K] : (in(K,J) => in(ordered_pair(D,K),B))))))))))) => (? [C] : (relation(C) & function(C) & relation_dom(C) = A & (! [D] : (in(D,A) => (? [L] : (D = L & in(apply(C,D),L) & (! [M] : (in(M,L) => in(ordered_pair(apply(C,D),M),B)))))))))))), file('Problems/SEU/SEU289+1.p',s2_funct_1__e10_24__wellord2)).
fof(sub, plain, (! [Y,S,X] : ((in(Y,S) & subset(S,X)) => in(Y,X))), inference(lemma,[status(thm)],[t3_subset,t4_subset,t2_subset,t5_subset])).
fof(dis, plain, (! [F,X,G] : ~ ((disjoint(F,X) & in(G,F) & in(G,X)))), inference(lemma,[status(thm)],[d7_xboole_0,d3_xboole_0,t7_boole,fc1_xboole_0])).
fof(wf1, plain, (! [R,U,X] : ((relation(R) & well_orders(R,U) & subset(X,U) & X != empty_set) => (? [D] : (in(D,X) & disjoint(fiber(R,D),X))))), inference(lemma,[status(thm)],[d5_wellord1,d3_wellord1])).
fof(fibi, plain, (! [R,D,G] : ((relation(R) & G != D & in(ordered_pair(G,D),R)) => in(G,fiber(R,D)))), inference(lemma,[status(thm)],[d1_wellord1])).
fof(least, plain, (! [R,U,X,D] : ((relation(R) & well_orders(R,U) & subset(X,U) & in(D,X) & disjoint(fiber(R,D),X)) => (! [G] : (in(G,X) => in(ordered_pair(D,G),R))))), inference(lemma,[status(thm)],[d5_wellord1,d1_relat_2,d6_relat_2,fibi,dis,sub])).
fof(lst, plain, (! [R,U,X] : ((relation(R) & well_orders(R,U) & subset(X,U) & X != empty_set) => (? [D] : (in(D,X) & (! [G] : (in(G,X) => in(ordered_pair(D,G),R))))))), inference(lemma,[status(thm)],[wf1,least])).
fof(uniq, plain, (! [R,U,X,D,E] : ((relation(R) & well_orders(R,U) & subset(X,U) & in(D,X) & in(E,X) & (! [G] : (in(G,X) => in(ordered_pair(D,G),R))) & (! [G] : (in(G,X) => in(ordered_pair(E,G),R)))) => D = E)), inference(lemma,[status(thm)],[d5_wellord1,d4_relat_2,sub])).
fof(uprem, plain, (! [A,R] : ((relation(R) & well_orders(R,union(A))) => (! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),R))))) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),R)))))) => D = E)))), inference(lemma,[status(thm)],[uniq,t92_zfmisc_1])).
fof(uex, plain, (! [A,R] : ((relation(R) & well_orders(R,union(A)) & (! [B] : ~ ((in(B,A) & B = empty_set)))) => (! [C] : ~ ((in(C,A) & (! [D] : ~ ((? [J] : (C = J & in(D,J) & (! [K] : (in(K,J) => in(ordered_pair(D,K),R)))))))))))), inference(lemma,[status(thm)],[lst,t92_zfmisc_1])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t28_wellord2_neg,t26_wellord2,s2_funct_1__e10_24__wellord2,uprem,uex])).
% SZS output end Refutation for SEU289+1
%------------------------------------------------------------------------------
