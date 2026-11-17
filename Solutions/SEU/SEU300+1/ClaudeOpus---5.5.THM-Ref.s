%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU300+1 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP transfinite-induction scheme instance (least
%            counterexample via t32_ordinal1); bushy lacks d3_tarski, worked around
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU300+1
% SZS output start Refutation for SEU300+1
fof(s1_xboole_0__e18_27__finset_1__1, axiom, (! [A] : (ordinal(A) => (? [B] : (! [C] : (in(C,B) <=> (in(C,succ(A)) & (? [D] : (ordinal(D) & C = D & (in(D,omega) => (! [E] : (element(E,powerset(powerset(D))) => ~ ((E != empty_set & (! [F] : ~ ((in(F,E) & (! [G] : ((in(G,E) & subset(F,G)) => G = F)))))))))))))))))), file('Problems/SEU/SEU300+1.p',s1_xboole_0__e18_27__finset_1__1)).
fof(d4_xboole_0, axiom, (! [A,B,C] : (C = set_difference(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) & ~ in(D,B)))))), file('Problems/SEU/SEU300+1.p',d4_xboole_0)).
fof(t3_subset, axiom, (! [A,B] : (element(A,powerset(B)) <=> subset(A,B))), file('Problems/SEU/SEU300+1.p',t3_subset)).
fof(t4_subset, axiom, (! [A,B,C] : ((in(A,B) & element(B,powerset(C))) => element(A,C))), file('Problems/SEU/SEU300+1.p',t4_subset)).
fof(t2_subset, axiom, (! [A,B] : (element(A,B) => (empty(B) | in(A,B)))), file('Problems/SEU/SEU300+1.p',t2_subset)).
fof(t10_ordinal1, axiom, (! [A] : in(A,succ(A))), file('Problems/SEU/SEU300+1.p',t10_ordinal1)).
fof(t7_boole, axiom, (! [A,B] : ~ ((in(A,B) & empty(B)))), file('Problems/SEU/SEU300+1.p',t7_boole)).
fof(fc1_xboole_0, axiom, empty(empty_set), file('Problems/SEU/SEU300+1.p',fc1_xboole_0)).
fof(t32_ordinal1, axiom, (! [A,B] : (ordinal(B) => ~ ((subset(A,B) & A != empty_set & (! [C] : (ordinal(C) => ~ ((in(C,A) & (! [D] : (ordinal(D) => (in(D,A) => ordinal_subset(C,D)))))))))))), file('Problems/SEU/SEU300+1.p',t32_ordinal1)).
fof(fc3_ordinal1, axiom, (! [A] : (ordinal(A) => (~ empty(succ(A)) & epsilon_transitive(succ(A)) & epsilon_connected(succ(A)) & ordinal(succ(A))))), file('Problems/SEU/SEU300+1.p',fc3_ordinal1)).
fof(t36_xboole_1, axiom, (! [A,B] : subset(set_difference(A,B),A)), file('Problems/SEU/SEU300+1.p',t36_xboole_1)).
fof(redefinition_r1_ordinal1, axiom, (! [A,B] : ((ordinal(A) & ordinal(B)) => (ordinal_subset(A,B) <=> subset(A,B)))), file('Problems/SEU/SEU300+1.p',redefinition_r1_ordinal1)).
fof(d2_ordinal1, axiom, (! [A] : (epsilon_transitive(A) <=> (! [B] : (in(B,A) => subset(B,A))))), file('Problems/SEU/SEU300+1.p',d2_ordinal1)).
fof(cc1_ordinal1, axiom, (! [A] : (ordinal(A) => (epsilon_transitive(A) & epsilon_connected(A)))), file('Problems/SEU/SEU300+1.p',cc1_ordinal1)).
fof(d8_xboole_0, axiom, (! [A,B] : (proper_subset(A,B) <=> (subset(A,B) & A != B))), file('Problems/SEU/SEU300+1.p',d8_xboole_0)).
fof(antisymmetry_r2_xboole_0, axiom, (! [A,B] : (proper_subset(A,B) => ~ proper_subset(B,A))), file('Problems/SEU/SEU300+1.p',antisymmetry_r2_xboole_0)).
fof(antisymmetry_r2_hidden, axiom, (! [A,B] : (in(A,B) => ~ in(B,A))), file('Problems/SEU/SEU300+1.p',antisymmetry_r2_hidden)).
fof(fc1_ordinal1, axiom, (! [A] : ~ empty(succ(A))), file('Problems/SEU/SEU300+1.p',fc1_ordinal1)).
fof(s2_ordinal1__e18_27__finset_1__1, conjecture, ((! [A] : (ordinal(A) => ((! [B] : (ordinal(B) => (in(B,A) => (in(B,omega) => (! [C] : (element(C,powerset(powerset(B))) => ~ ((C != empty_set & (! [D] : ~ ((in(D,C) & (! [E] : ((in(E,C) & subset(D,E)) => E = D))))))))))))) => (in(A,omega) => (! [F] : (element(F,powerset(powerset(A))) => ~ ((F != empty_set & (! [G] : ~ ((in(G,F) & (! [H] : ((in(H,F) & subset(G,H)) => H = G))))))))))))) => (! [A] : (ordinal(A) => (in(A,omega) => (! [I] : (element(I,powerset(powerset(A))) => ~ ((I != empty_set & (! [J] : ~ ((in(J,I) & (! [K] : ((in(K,I) & subset(J,K)) => K = J))))))))))))), file('Problems/SEU/SEU300+1.p',s2_ordinal1__e18_27__finset_1__1)).
fof(s2_ordinal1__e18_27__finset_1__1_neg, negated_conjecture, ~ (((! [A] : (ordinal(A) => ((! [B] : (ordinal(B) => (in(B,A) => (in(B,omega) => (! [C] : (element(C,powerset(powerset(B))) => ~ ((C != empty_set & (! [D] : ~ ((in(D,C) & (! [E] : ((in(E,C) & subset(D,E)) => E = D))))))))))))) => (in(A,omega) => (! [F] : (element(F,powerset(powerset(A))) => ~ ((F != empty_set & (! [G] : ~ ((in(G,F) & (! [H] : ((in(H,F) & subset(G,H)) => H = G))))))))))))) => (! [A] : (ordinal(A) => (in(A,omega) => (! [I] : (element(I,powerset(powerset(A))) => ~ ((I != empty_set & (! [J] : ~ ((in(J,I) & (! [K] : ((in(K,I) & subset(J,K)) => K = J)))))))))))))), inference(negate_conjecture,[status(cth)],[s2_ordinal1__e18_27__finset_1__1])).
fof(gset, plain, (! [A] : (ordinal(A) => (? [Gs] : (! [C] : (in(C,Gs) <=> (in(C,succ(A)) & ordinal(C) & (in(C,omega) => (! [Fm] : (element(Fm,powerset(powerset(C))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm)))))))))))))))), inference(lemma,[status(thm)],[s1_xboole_0__e18_27__finset_1__1])).
fof(fmem, plain, (! [A,Gs,X] : (in(X,set_difference(succ(A),Gs)) <=> (in(X,succ(A)) & ~ in(X,Gs)))), inference(lemma,[status(thm)],[d4_xboole_0])).
fof(sub2in, plain, (! [B,C,S] : ((in(B,C) & subset(C,S) & ~ empty(S)) => in(B,S))), inference(lemma,[status(thm)],[t3_subset,t4_subset,t2_subset])).
fof(fne, plain, (! [A,Gs] : ((ordinal(A) & ~ ((in(A,omega) => (! [Fm] : (element(Fm,powerset(powerset(A))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))) & (! [C] : (in(C,Gs) <=> (in(C,succ(A)) & ordinal(C) & (in(C,omega) => (! [Fm] : (element(Fm,powerset(powerset(C))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm)))))))))))))) => set_difference(succ(A),Gs) != empty_set)), inference(lemma,[status(thm)],[fmem,t10_ordinal1,t7_boole,fc1_xboole_0])).
fof(least, plain, (! [A,Gs] : ((ordinal(A) & ~ ((in(A,omega) => (! [Fm] : (element(Fm,powerset(powerset(A))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))) & (! [C] : (in(C,Gs) <=> (in(C,succ(A)) & ordinal(C) & (in(C,omega) => (! [Fm] : (element(Fm,powerset(powerset(C))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm)))))))))))))) => (? [C] : (ordinal(C) & in(C,set_difference(succ(A),Gs)) & (! [D] : (ordinal(D) => (in(D,set_difference(succ(A),Gs)) => subset(C,D)))))))), inference(lemma,[status(thm)],[t32_ordinal1,fc3_ordinal1,t36_xboole_1,fne,redefinition_r1_ordinal1])).
fof(nocyc, plain, (! [B,C] : ((ordinal(C) & in(B,C) & subset(C,B)) => $false)), inference(lemma,[status(thm)],[d2_ordinal1,cc1_ordinal1,d8_xboole_0,antisymmetry_r2_xboole_0,antisymmetry_r2_hidden])).
fof(contra, plain, (! [A,Gs,C] : (((! [A] : (ordinal(A) => ((! [B] : (ordinal(B) => (in(B,A) => (in(B,omega) => (! [Fm] : (element(Fm,powerset(powerset(B))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))))) => (in(A,omega) => (! [Fm] : (element(Fm,powerset(powerset(A))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))))) & ordinal(A) & (! [C] : (in(C,Gs) <=> (in(C,succ(A)) & ordinal(C) & (in(C,omega) => (! [Fm] : (element(Fm,powerset(powerset(C))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))))) & ordinal(C) & in(C,set_difference(succ(A),Gs)) & (! [D] : (ordinal(D) => (in(D,set_difference(succ(A),Gs)) => subset(C,D))))) => $false)), inference(lemma,[status(thm)],[fmem,fc3_ordinal1,d2_ordinal1,cc1_ordinal1,sub2in,fc1_ordinal1,nocyc])).
fof(main, plain, ((! [A] : (ordinal(A) => ((! [B] : (ordinal(B) => (in(B,A) => (in(B,omega) => (! [Fm] : (element(Fm,powerset(powerset(B))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))))) => (in(A,omega) => (! [Fm] : (element(Fm,powerset(powerset(A))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))))) => (! [A] : (ordinal(A) => (in(A,omega) => (! [Fm] : (element(Fm,powerset(powerset(A))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))))), inference(lemma,[status(thm)],[gset,least,contra])).
fof(done, plain, $false, inference(lemma,[status(thm)],[s2_ordinal1__e18_27__finset_1__1_neg,main])).
% SZS output end Refutation for SEU300+1
%------------------------------------------------------------------------------
