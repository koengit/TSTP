%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU302+3 : TPTP v10.0.0. Released v3.2.0.
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
%            specific calculus rule). Notes: same proof as SEU302+1, unchanged
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU302+3
% SZS output start Refutation for SEU302+3
fof(d1_ordinal1, axiom, (! [A] : succ(A) = set_union2(A,singleton(A))), file('Problems/SEU/SEU302+3.p',d1_ordinal1)).
fof(d2_xboole_0, axiom, (! [A,B,C] : (C = set_union2(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) | in(D,B)))))), file('Problems/SEU/SEU302+3.p',d2_xboole_0)).
fof(d4_xboole_0, axiom, (! [A,B,C] : (C = set_difference(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) & ~ in(D,B)))))), file('Problems/SEU/SEU302+3.p',d4_xboole_0)).
fof(d1_tarski, axiom, (! [A,B] : (B = singleton(A) <=> (! [C] : (in(C,B) <=> C = A)))), file('Problems/SEU/SEU302+3.p',d1_tarski)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU302+3.p',d3_tarski)).
fof(t45_xboole_1, axiom, (! [A,B] : (subset(A,B) => B = set_union2(A,set_difference(B,A)))), file('Problems/SEU/SEU302+3.p',t45_xboole_1)).
fof(t39_zfmisc_1, axiom, (! [A,B] : (subset(A,singleton(B)) <=> (A = empty_set | A = singleton(B)))), file('Problems/SEU/SEU302+3.p',t39_zfmisc_1)).
fof(t1_boole, axiom, (! [A] : set_union2(A,empty_set) = A), file('Problems/SEU/SEU302+3.p',t1_boole)).
fof(s1_xboole_0__e4_27_3_1__finset_1, axiom, (! [A,B] : ((ordinal(A) & element(B,powerset(powerset(succ(A))))) => (? [C] : (! [D] : (in(D,C) <=> (in(D,powerset(A)) & (? [E] : (in(E,B) & D = set_difference(E,singleton(A)))))))))), file('Problems/SEU/SEU302+3.p',s1_xboole_0__e4_27_3_1__finset_1)).
fof(t3_subset, axiom, (! [A,B] : (element(A,powerset(B)) <=> subset(A,B))), file('Problems/SEU/SEU302+3.p',t3_subset)).
fof(t4_subset, axiom, (! [A,B,C] : ((in(A,B) & element(B,powerset(C))) => element(A,C))), file('Problems/SEU/SEU302+3.p',t4_subset)).
fof(existence_m1_subset_1, axiom, (! [A] : (? [B] : element(B,A))), file('Problems/SEU/SEU302+3.p',existence_m1_subset_1)).
fof(t2_subset, axiom, (! [A,B] : (element(A,B) => (empty(B) | in(A,B)))), file('Problems/SEU/SEU302+3.p',t2_subset)).
fof(t6_boole, axiom, (! [A] : (empty(A) => A = empty_set)), file('Problems/SEU/SEU302+3.p',t6_boole)).
fof(t7_boole, axiom, (! [A,B] : ~ ((in(A,B) & empty(B)))), file('Problems/SEU/SEU302+3.p',t7_boole)).
fof(fc1_xboole_0, axiom, empty(empty_set), file('Problems/SEU/SEU302+3.p',fc1_xboole_0)).
fof(fc1_subset_1, axiom, (! [A] : ~ empty(powerset(A))), file('Problems/SEU/SEU302+3.p',fc1_subset_1)).
fof(t1_zfmisc_1, axiom, powerset(empty_set) = singleton(empty_set), file('Problems/SEU/SEU302+3.p',t1_zfmisc_1)).
fof(fc2_subset_1, axiom, (! [A] : ~ empty(singleton(A))), file('Problems/SEU/SEU302+3.p',fc2_subset_1)).
fof(cc3_ordinal1, axiom, (! [A] : (empty(A) => (epsilon_transitive(A) & epsilon_connected(A) & ordinal(A)))), file('Problems/SEU/SEU302+3.p',cc3_ordinal1)).
fof(t24_ordinal1, axiom, (! [A] : (ordinal(A) => (! [B] : (ordinal(B) => ~ ((~ in(A,B) & A != B & ~ in(B,A))))))), file('Problems/SEU/SEU302+3.p',t24_ordinal1)).
fof(d5_ordinal2, axiom, (! [A] : (A = omega <=> (in(empty_set,A) & being_limit_ordinal(A) & ordinal(A) & (! [B] : (ordinal(B) => ((in(empty_set,B) & being_limit_ordinal(B)) => subset(A,B))))))), file('Problems/SEU/SEU302+3.p',d5_ordinal2)).
fof(antisymmetry_r2_hidden, axiom, (! [A,B] : (in(A,B) => ~ in(B,A))), file('Problems/SEU/SEU302+3.p',antisymmetry_r2_hidden)).
fof(fc1_ordinal2, axiom, (epsilon_transitive(omega) & epsilon_connected(omega) & ordinal(omega) & ~ empty(omega)), file('Problems/SEU/SEU302+3.p',fc1_ordinal2)).
fof(t10_ordinal1, axiom, (! [A] : in(A,succ(A))), file('Problems/SEU/SEU302+3.p',t10_ordinal1)).
fof(d2_ordinal1, axiom, (! [A] : (epsilon_transitive(A) <=> (! [B] : (in(B,A) => subset(B,A))))), file('Problems/SEU/SEU302+3.p',d2_ordinal1)).
fof(s1_ordinal2__e18_27__finset_1, axiom, (((in(empty_set,omega) => (! [A] : (element(A,powerset(powerset(empty_set))) => ~ ((A != empty_set & (! [B] : ~ ((in(B,A) & (! [C] : ((in(C,A) & subset(B,C)) => C = B)))))))))) & (! [D] : (ordinal(D) => ((in(D,omega) => (! [E] : (element(E,powerset(powerset(D))) => ~ ((E != empty_set & (! [F] : ~ ((in(F,E) & (! [G] : ((in(G,E) & subset(F,G)) => G = F)))))))))) => (in(succ(D),omega) => (! [H] : (element(H,powerset(powerset(succ(D)))) => ~ ((H != empty_set & (! [I] : ~ ((in(I,H) & (! [J] : ((in(J,H) & subset(I,J)) => J = I))))))))))))) & (! [D] : (ordinal(D) => ((being_limit_ordinal(D) & (! [K] : (ordinal(K) => (in(K,D) => (in(K,omega) => (! [L] : (element(L,powerset(powerset(K))) => ~ ((L != empty_set & (! [M] : ~ ((in(M,L) & (! [N] : ((in(N,L) & subset(M,N)) => N = M)))))))))))))) => (D = empty_set | (in(D,omega) => (! [O] : (element(O,powerset(powerset(D))) => ~ ((O != empty_set & (! [P] : ~ ((in(P,O) & (! [Q] : ((in(Q,O) & subset(P,Q)) => Q = P))))))))))))))) => (! [D] : (ordinal(D) => (in(D,omega) => (! [R] : (element(R,powerset(powerset(D))) => ~ ((R != empty_set & (! [S] : ~ ((in(S,R) & (! [T] : ((in(T,R) & subset(S,T)) => T = S))))))))))))), file('Problems/SEU/SEU302+3.p',s1_ordinal2__e18_27__finset_1)).
fof(s1_xboole_0__e6_27__finset_1, axiom, (! [A,B,C] : ((element(B,powerset(powerset(A))) & relation(C) & function(C)) => (? [D] : (! [E] : (in(E,D) <=> (in(E,powerset(relation_dom(C))) & in(relation_image(C,E),B))))))), file('Problems/SEU/SEU302+3.p',s1_xboole_0__e6_27__finset_1)).
fof(t147_funct_1, axiom, (! [A,B] : ((relation(B) & function(B)) => (subset(A,relation_rng(B)) => relation_image(B,relation_inverse_image(B,A)) = A))), file('Problems/SEU/SEU302+3.p',t147_funct_1)).
fof(t167_relat_1, axiom, (! [A,B] : (relation(B) => subset(relation_inverse_image(B,A),relation_dom(B)))), file('Problems/SEU/SEU302+3.p',t167_relat_1)).
fof(t23_ordinal1, axiom, (! [A,B] : (ordinal(B) => (in(A,B) => ordinal(A)))), file('Problems/SEU/SEU302+3.p',t23_ordinal1)).
fof(t1_subset, axiom, (! [A,B] : (in(A,B) => element(A,B))), file('Problems/SEU/SEU302+3.p',t1_subset)).
fof(t146_funct_1, axiom, (! [A,B] : (relation(B) => (subset(A,relation_dom(B)) => subset(A,relation_inverse_image(B,relation_image(B,A)))))), file('Problems/SEU/SEU302+3.p',t146_funct_1)).
fof(t178_relat_1, axiom, (! [A,B,C] : (relation(C) => (subset(A,B) => subset(relation_inverse_image(C,A),relation_inverse_image(C,B))))), file('Problems/SEU/SEU302+3.p',t178_relat_1)).
fof(t1_xboole_1, axiom, (! [A,B,C] : ((subset(A,B) & subset(B,C)) => subset(A,C))), file('Problems/SEU/SEU302+3.p',t1_xboole_1)).
fof(t18_finset_1, conjecture, (! [A] : (finite(A) => (! [B] : (element(B,powerset(powerset(A))) => ~ ((B != empty_set & (! [C] : ~ ((in(C,B) & (! [D] : ((in(D,B) & subset(C,D)) => D = C))))))))))), file('Problems/SEU/SEU302+3.p',t18_finset_1)).
fof(t18_finset_1_neg, negated_conjecture, ~ ((! [A] : (finite(A) => (! [B] : (element(B,powerset(powerset(A))) => ~ ((B != empty_set & (! [C] : ~ ((in(C,B) & (! [D] : ((in(D,B) & subset(C,D)) => D = C)))))))))))), inference(negate_conjecture,[status(cth)],[t18_finset_1])).
fof(d1_finset_1, axiom, (! [A] : (finite(A) <=> (? [B] : (relation(B) & function(B) & relation_rng(B) = A & in(relation_dom(B),omega))))), file('Problems/SEU/SEU302+3.p',d1_finset_1)).
fof(l1, plain, (! [E,D] : (subset(E,succ(D)) => subset(set_difference(E,singleton(D)),D))), inference(lemma,[status(thm)],[d1_ordinal1,d2_xboole_0,d4_xboole_0,d1_tarski,d3_tarski])).
fof(l2, plain, (! [E,D] : ~ in(D,set_difference(E,singleton(D)))), inference(lemma,[status(thm)],[d4_xboole_0,d1_tarski])).
fof(l3, plain, (! [E,D] : (E = set_difference(E,singleton(D)) | E = set_union2(set_difference(E,singleton(D)),singleton(D)))), inference(lemma,[status(thm)],[t45_xboole_1,t39_zfmisc_1,t1_boole,d4_xboole_0,d1_tarski,d3_tarski])).
fof(l3b, plain, (! [E,M,D] : (M = set_difference(E,singleton(D)) => (E = M | E = set_union2(M,singleton(D))))), inference(lemma,[status(thm)],[l3])).
fof(l4, plain, (! [D,H] : ((ordinal(D) & element(H,powerset(powerset(succ(D))))) => (? [H2] : (element(H2,powerset(powerset(D))) & (! [X] : (in(X,H2) <=> (in(X,powerset(D)) & (? [E] : (in(E,H) & X = set_difference(E,singleton(D))))))))))), inference(lemma,[status(thm)],[s1_xboole_0__e4_27_3_1__finset_1,t3_subset,d3_tarski])).
fof(l5, plain, (! [D,H,E] : ((element(H,powerset(powerset(succ(D)))) & in(E,H)) => subset(E,succ(D)))), inference(lemma,[status(thm)],[t4_subset,t3_subset])).
fof(ne_el, plain, (! [H] : (H != empty_set => (? [E] : in(E,H)))), inference(lemma,[status(thm)],[existence_m1_subset_1,t2_subset,t6_boole])).
fof(el_ne, plain, (! [H,E] : (in(E,H) => H != empty_set)), inference(lemma,[status(thm)],[t7_boole,fc1_xboole_0])).
fof(pin, plain, (! [X,D] : (subset(X,D) => in(X,powerset(D)))), inference(lemma,[status(thm)],[t3_subset,t2_subset,fc1_subset_1])).
fof(a1, plain, (! [D,H,H2,N] : (((ordinal(D) & element(H,powerset(powerset(succ(D)))) & H != empty_set) & (element(H2,powerset(powerset(D))) & (! [X] : (in(X,H2) <=> (in(X,powerset(D)) & (? [E] : (in(E,H) & X = set_difference(E,singleton(D)))))))) & in(N,H)) => in(set_difference(N,singleton(D)),H2))), inference(lemma,[status(thm)],[l5,l1,pin])).
fof(a2, plain, (! [D,H,H2,M] : (((element(H2,powerset(powerset(D))) & (! [X] : (in(X,H2) <=> (in(X,powerset(D)) & (? [E] : (in(E,H) & X = set_difference(E,singleton(D)))))))) & in(M,H2)) => ~ in(D,M))), inference(lemma,[status(thm)],[l2])).
fof(l5a, plain, (! [D,H,H2] : (((ordinal(D) & element(H,powerset(powerset(succ(D)))) & H != empty_set) & (element(H2,powerset(powerset(D))) & (! [X] : (in(X,H2) <=> (in(X,powerset(D)) & (? [E] : (in(E,H) & X = set_difference(E,singleton(D))))))))) => H2 != empty_set)), inference(lemma,[status(thm)],[ne_el,el_ne,a1])).
fof(l6, plain, (! [M,N,D] : ((~ in(D,M) & subset(M,N)) => subset(M,set_difference(N,singleton(D))))), inference(lemma,[status(thm)],[d4_xboole_0,d1_tarski,d3_tarski])).
fof(l7, plain, (! [M,D] : subset(M,set_union2(M,singleton(D)))), inference(lemma,[status(thm)],[d2_xboole_0,d3_tarski])).
fof(l8, plain, (! [M,N,D] : (subset(set_union2(M,singleton(D)),N) => in(D,N))), inference(lemma,[status(thm)],[d2_xboole_0,d1_tarski,d3_tarski])).
fof(caseA, plain, (! [D,H,H2,M] : (((ordinal(D) & element(H,powerset(powerset(succ(D)))) & H != empty_set) & (element(H2,powerset(powerset(D))) & (! [X] : (in(X,H2) <=> (in(X,powerset(D)) & (? [E] : (in(E,H) & X = set_difference(E,singleton(D)))))))) & (in(M,H2) & (! [Hm] : ((in(Hm,H2) & subset(M,Hm)) => Hm = M))) & in(set_union2(M,singleton(D)),H)) => (in(set_union2(M,singleton(D)),H) & (! [Hm] : ((in(Hm,H) & subset(set_union2(M,singleton(D)),Hm)) => Hm = set_union2(M,singleton(D))))))), inference(lemma,[status(thm)],[a1,a2,l6,l7,l8,l3b,d3_tarski])).
fof(caseB, plain, (! [D,H,H2,M,E0] : (((ordinal(D) & element(H,powerset(powerset(succ(D)))) & H != empty_set) & (element(H2,powerset(powerset(D))) & (! [X] : (in(X,H2) <=> (in(X,powerset(D)) & (? [E] : (in(E,H) & X = set_difference(E,singleton(D)))))))) & (in(M,H2) & (! [Hm] : ((in(Hm,H2) & subset(M,Hm)) => Hm = M))) & ~ in(set_union2(M,singleton(D)),H) & in(E0,H) & M = set_difference(E0,singleton(D))) => (in(M,H) & (! [Hm] : ((in(Hm,H) & subset(M,Hm)) => Hm = M))))), inference(lemma,[status(thm)],[a1,a2,l6,l3b,l2])).
fof(stepQ, plain, (! [D] : ((ordinal(D) & (! [Fm] : (element(Fm,powerset(powerset(D))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm)))))))))) => (! [Fm] : (element(Fm,powerset(powerset(succ(D)))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))), inference(lemma,[status(thm)],[l4,l5a,caseA,caseB,ne_el,el_ne])).
fof(b1, plain, (! [F,E] : ((element(F,powerset(powerset(empty_set))) & in(E,F)) => E = empty_set)), inference(lemma,[status(thm)],[t4_subset,t1_zfmisc_1,t2_subset,d1_tarski,fc1_xboole_0,fc2_subset_1,t7_boole])).
fof(base, plain, (! [Fm] : (element(Fm,powerset(powerset(empty_set))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))), inference(lemma,[status(thm)],[b1,ne_el])).
fof(o0, plain, ordinal(empty_set), inference(lemma,[status(thm)],[cc3_ordinal1,fc1_xboole_0])).
fof(o1, plain, (! [D] : ((ordinal(D) & D != empty_set) => in(empty_set,D))), inference(lemma,[status(thm)],[t24_ordinal1,o0,t7_boole,fc1_xboole_0])).
fof(o2, plain, (! [D] : ((ordinal(D) & being_limit_ordinal(D) & D != empty_set) => ~ in(D,omega))), inference(lemma,[status(thm)],[d5_ordinal2,o1,antisymmetry_r2_hidden,d3_tarski])).
fof(o3, plain, in(empty_set,omega), inference(lemma,[status(thm)],[o1,fc1_ordinal2,fc1_xboole_0])).
fof(o4, plain, (! [D] : (in(succ(D),omega) => in(D,omega))), inference(lemma,[status(thm)],[t10_ordinal1,fc1_ordinal2,d2_ordinal1,d3_tarski])).
fof(ind, plain, (! [D] : ((ordinal(D) & in(D,omega)) => (! [Fm] : (element(Fm,powerset(powerset(D))) => ~ ((Fm != empty_set & (! [Gm] : ~ ((in(Gm,Fm) & (! [Hm] : ((in(Hm,Fm) & subset(Gm,Hm)) => Hm = Gm))))))))))), inference(lemma,[status(thm)],[s1_ordinal2__e18_27__finset_1,base,stepQ,o2,o3,o4])).
fof(t1, plain, (! [A,B,R] : ((element(B,powerset(powerset(A))) & relation(R) & function(R)) => (? [Bp] : (! [E] : (in(E,Bp) <=> (in(E,powerset(relation_dom(R))) & in(relation_image(R,E),B))))))), inference(lemma,[status(thm)],[s1_xboole_0__e6_27__finset_1])).
fof(t2, plain, (! [B,R,Bp] : ((! [E] : (in(E,Bp) <=> (in(E,powerset(relation_dom(R))) & in(relation_image(R,E),B)))) => element(Bp,powerset(powerset(relation_dom(R)))))), inference(lemma,[status(thm)],[t3_subset,d3_tarski])).
fof(t3a, plain, (! [A,B,C] : ((element(B,powerset(powerset(A))) & in(C,B)) => subset(C,A))), inference(lemma,[status(thm)],[t4_subset,t3_subset])).
fof(t3, plain, (! [A,B,R,Bp,C] : (((relation(R) & function(R) & relation_rng(R) = A) & element(B,powerset(powerset(A))) & (! [E] : (in(E,Bp) <=> (in(E,powerset(relation_dom(R))) & in(relation_image(R,E),B)))) & in(C,B)) => in(relation_inverse_image(R,C),Bp))), inference(lemma,[status(thm)],[t3a,t147_funct_1,t167_relat_1,pin])).
fof(t4, plain, (! [A,B,R,Bp] : (((relation(R) & function(R) & relation_rng(R) = A) & element(B,powerset(powerset(A))) & B != empty_set & (! [E] : (in(E,Bp) <=> (in(E,powerset(relation_dom(R))) & in(relation_image(R,E),B))))) => Bp != empty_set)), inference(lemma,[status(thm)],[t3,ne_el,el_ne])).
fof(t5, plain, (! [N] : (in(N,omega) => ordinal(N))), inference(lemma,[status(thm)],[t23_ordinal1,fc1_ordinal2])).
fof(t6a, plain, (! [B,R,Bp,M] : (((! [E] : (in(E,Bp) <=> (in(E,powerset(relation_dom(R))) & in(relation_image(R,E),B)))) & in(M,Bp)) => subset(M,relation_dom(R)))), inference(lemma,[status(thm)],[t1_subset,t3_subset])).
fof(t6b, plain, (! [R,M,X] : ((relation(R) & subset(M,relation_dom(R)) & subset(relation_image(R,M),X)) => subset(M,relation_inverse_image(R,X)))), inference(lemma,[status(thm)],[t146_funct_1,t178_relat_1,t1_xboole_1])).
fof(t6, plain, (! [A,B,R,Bp,M] : (((relation(R) & function(R) & relation_rng(R) = A) & element(B,powerset(powerset(A))) & (! [E] : (in(E,Bp) <=> (in(E,powerset(relation_dom(R))) & in(relation_image(R,E),B)))) & (in(M,Bp) & (! [Hm] : ((in(Hm,Bp) & subset(M,Hm)) => Hm = M)))) => (in(relation_image(R,M),B) & (! [Hm] : ((in(Hm,B) & subset(relation_image(R,M),Hm)) => Hm = relation_image(R,M)))))), inference(lemma,[status(thm)],[t6a,t6b,t3,t3a,t147_funct_1])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t18_finset_1_neg,d1_finset_1,t1,t2,t4,t5,ind,t6])).
% SZS output end Refutation for SEU302+3
%------------------------------------------------------------------------------
