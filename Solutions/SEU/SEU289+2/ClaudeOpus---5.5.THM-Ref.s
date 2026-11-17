%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU289+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP t28_wellord2: choice functions from well-ordering
%            (chainy); checked with E --auto-schedule=4
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU289+2
% SZS output start Refutation for SEU289+2
fof(d5_wellord1, axiom, (! [A] : (relation(A) => (! [B] : (well_orders(A,B) <=> (is_reflexive_in(A,B) & is_transitive_in(A,B) & is_antisymmetric_in(A,B) & is_connected_in(A,B) & is_well_founded_in(A,B)))))), file('Problems/SEU/SEU289+2.p',d5_wellord1)).
fof(d3_wellord1, axiom, (! [A] : (relation(A) => (! [B] : (is_well_founded_in(A,B) <=> (! [C] : ~ ((subset(C,B) & C != empty_set & (! [D] : ~ ((in(D,C) & disjoint(fiber(A,D),C))))))))))), file('Problems/SEU/SEU289+2.p',d3_wellord1)).
fof(d1_wellord1, axiom, (! [A] : (relation(A) => (! [B,C] : (C = fiber(A,B) <=> (! [D] : (in(D,C) <=> (D != B & in(ordered_pair(D,B),A)))))))), file('Problems/SEU/SEU289+2.p',d1_wellord1)).
fof(d1_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_reflexive_in(A,B) <=> (! [C] : (in(C,B) => in(ordered_pair(C,C),A))))))), file('Problems/SEU/SEU289+2.p',d1_relat_2)).
fof(d6_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_connected_in(A,B) <=> (! [C,D] : ~ ((in(C,B) & in(D,B) & C != D & ~ in(ordered_pair(C,D),A) & ~ in(ordered_pair(D,C),A)))))))), file('Problems/SEU/SEU289+2.p',d6_relat_2)).
fof(t3_xboole_0, lemma, (! [A,B] : (~ ((~ disjoint(A,B) & (! [C] : ~ ((in(C,A) & in(C,B)))))) & ~ (((? [C] : (in(C,A) & in(C,B))) & disjoint(A,B))))), file('Problems/SEU/SEU289+2.p',t3_xboole_0)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU289+2.p',d3_tarski)).
fof(d4_relat_2, axiom, (! [A] : (relation(A) => (! [B] : (is_antisymmetric_in(A,B) <=> (! [C,D] : ((in(C,B) & in(D,B) & in(ordered_pair(C,D),A) & in(ordered_pair(D,C),A)) => C = D)))))), file('Problems/SEU/SEU289+2.p',d4_relat_2)).
fof(d4_tarski, axiom, (! [A,B] : (B = union(A) <=> (! [C] : (in(C,B) <=> (? [D] : (in(C,D) & in(D,A))))))), file('Problems/SEU/SEU289+2.p',d4_tarski)).
fof(s1_funct_1__e10_24__wellord2__1, lemma, (! [A,B] : ((~ empty(A) & relation(B)) => ((! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),B))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),B)))))) => D = E)) => (? [C] : (relation(C) & function(C) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,A) & in(D,A) & (? [J] : (D = J & in(E,J) & (! [K] : (in(K,J) => in(ordered_pair(E,K),B))))))))))))), file('Problems/SEU/SEU289+2.p',s1_funct_1__e10_24__wellord2__1)).
fof(d4_relat_1, axiom, (! [A] : (relation(A) => (! [B] : (B = relation_dom(A) <=> (! [C] : (in(C,B) <=> (? [D] : in(ordered_pair(C,D),A)))))))), file('Problems/SEU/SEU289+2.p',d4_relat_1)).
fof(d10_xboole_0, axiom, (! [A,B] : (A = B <=> (subset(A,B) & subset(B,A)))), file('Problems/SEU/SEU289+2.p',d10_xboole_0)).
fof(d4_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B,C] : ((in(B,relation_dom(A)) => (C = apply(A,B) <=> in(ordered_pair(B,C),A))) & (~ in(B,relation_dom(A)) => (C = apply(A,B) <=> C = empty_set)))))), file('Problems/SEU/SEU289+2.p',d4_funct_1)).
fof(t28_wellord2, conjecture, (! [A] : (~ empty(A) => ~ (((! [B] : ~ ((in(B,A) & B = empty_set))) & (! [B] : ((relation(B) & function(B)) => ~ ((relation_dom(B) = A & (! [C] : (in(C,A) => in(apply(B,C),C))))))))))), file('Problems/SEU/SEU289+2.p',t28_wellord2)).
fof(t28_wellord2_neg, negated_conjecture, ~ ((! [A] : (~ empty(A) => ~ (((! [B] : ~ ((in(B,A) & B = empty_set))) & (! [B] : ((relation(B) & function(B)) => ~ ((relation_dom(B) = A & (! [C] : (in(C,A) => in(apply(B,C),C)))))))))))), inference(negate_conjecture,[status(cth)],[t28_wellord2])).
fof(t26_wellord2, lemma, (! [A] : (? [B] : (relation(B) & well_orders(B,A)))), file('Problems/SEU/SEU289+2.p',t26_wellord2)).
fof(wf1, plain, (! [R,U,X] : ((relation(R) & well_orders(R,U) & subset(X,U) & X != empty_set) => (? [D] : (in(D,X) & disjoint(fiber(R,D),X))))), inference(lemma,[status(thm)],[d5_wellord1,d3_wellord1])).
fof(fibi, plain, (! [R,D,G] : ((relation(R) & G != D & in(ordered_pair(G,D),R)) => in(G,fiber(R,D)))), inference(lemma,[status(thm)],[d1_wellord1])).
fof(least, plain, (! [R,U,X,D] : ((relation(R) & well_orders(R,U) & subset(X,U) & in(D,X) & disjoint(fiber(R,D),X)) => (! [G] : (in(G,X) => in(ordered_pair(D,G),R))))), inference(lemma,[status(thm)],[d5_wellord1,d1_relat_2,d6_relat_2,fibi,t3_xboole_0,d3_tarski])).
fof(lst, plain, (! [R,U,X] : ((relation(R) & well_orders(R,U) & subset(X,U) & X != empty_set) => (? [D] : (in(D,X) & (! [G] : (in(G,X) => in(ordered_pair(D,G),R))))))), inference(lemma,[status(thm)],[wf1,least])).
fof(uniq, plain, (! [R,U,X,D,E] : ((relation(R) & well_orders(R,U) & subset(X,U) & in(D,X) & in(E,X) & (! [G] : (in(G,X) => in(ordered_pair(D,G),R))) & (! [G] : (in(G,X) => in(ordered_pair(E,G),R)))) => D = E)), inference(lemma,[status(thm)],[d5_wellord1,d4_relat_2,d3_tarski])).
fof(subU, plain, (! [A,X] : (in(X,A) => subset(X,union(A)))), inference(lemma,[status(thm)],[d4_tarski,d3_tarski])).
fof(uprem, plain, (! [A,R] : ((relation(R) & well_orders(R,union(A))) => (! [C,D,E] : ((in(C,A) & (? [F] : (C = F & in(D,F) & (! [G] : (in(G,F) => in(ordered_pair(D,G),R))))) & in(C,A) & (? [H] : (C = H & in(E,H) & (! [I] : (in(I,H) => in(ordered_pair(E,I),R)))))) => D = E)))), inference(lemma,[status(thm)],[uniq,subU])).
fof(fn0, plain, (! [A,R] : ((~ empty(A) & relation(R) & well_orders(R,union(A))) => (? [C] : (relation(C) & function(C) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,A) & in(D,A) & (? [J] : (D = J & in(E,J) & (! [K] : (in(K,J) => in(ordered_pair(E,K),R)))))))))))), inference(lemma,[status(thm)],[s1_funct_1__e10_24__wellord2__1,uprem])).
fof(fn, plain, (! [A,R] : ((~ empty(A) & relation(R) & well_orders(R,union(A))) => (? [C] : (relation(C) & function(C) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,A) & in(E,D) & (! [K] : (in(K,D) => in(ordered_pair(E,K),R)))))))))), inference(lemma,[status(thm)],[fn0])).
fof(domC, plain, (! [A,R,C] : ((relation(R) & well_orders(R,union(A)) & relation(C) & (! [B] : ~ ((in(B,A) & B = empty_set))) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,A) & in(E,D) & (! [K] : (in(K,D) => in(ordered_pair(E,K),R))))))) => relation_dom(C) = A)), inference(lemma,[status(thm)],[d4_relat_1,lst,subU,d10_xboole_0,d3_tarski])).
fof(appC, plain, (! [A,R,C,X] : ((relation(C) & function(C) & relation_dom(C) = A & in(X,A) & (! [D,E] : (in(ordered_pair(D,E),C) <=> (in(D,A) & in(E,D) & (! [K] : (in(K,D) => in(ordered_pair(E,K),R))))))) => in(apply(C,X),X))), inference(lemma,[status(thm)],[d4_funct_1])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t28_wellord2_neg,t26_wellord2,fn,domC,appC])).
% SZS output end Refutation for SEU289+2
%------------------------------------------------------------------------------
