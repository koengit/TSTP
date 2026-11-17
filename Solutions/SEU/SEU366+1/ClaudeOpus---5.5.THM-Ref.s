%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU366+1 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: t1_waybel_0: directed nonempty <=> finite subsets
%            bounded; <= with C = {} and C = {x,y}; => by finite induction scheme + transitivity; 13
%            steps (one syntax fix)
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU366+1
% SZS output start Refutation for SEU366+1
fof(t3_subset, axiom, (! [A,B] : (element(A,powerset(B)) <=> subset(A,B))), file('Problems/SEU/SEU366+1.p',t3_subset)).
fof(t4_subset, axiom, (! [A,B,C] : ((in(A,B) & element(B,powerset(C))) => element(A,C))), file('Problems/SEU/SEU366+1.p',t4_subset)).
fof(t2_subset, axiom, (! [A,B] : (element(A,B) => (empty(B) | in(A,B)))), file('Problems/SEU/SEU366+1.p',t2_subset)).
fof(t5_subset, axiom, (! [A,B,C] : ~ ((in(A,B) & element(B,powerset(C)) & empty(C)))), file('Problems/SEU/SEU366+1.p',t5_subset)).
fof(cc1_finset_1, axiom, (! [A] : (empty(A) => finite(A))), file('Problems/SEU/SEU366+1.p',cc1_finset_1)).
fof(fc1_xboole_0, axiom, empty(empty_set), file('Problems/SEU/SEU366+1.p',fc1_xboole_0)).
fof(t2_xboole_1, axiom, (! [A] : subset(empty_set,A)), file('Problems/SEU/SEU366+1.p',t2_xboole_1)).
fof(t7_boole, axiom, (! [A,B] : ~ ((in(A,B) & empty(B)))), file('Problems/SEU/SEU366+1.p',t7_boole)).
fof(d9_lattice3, axiom, (! [A] : (rel_str(A) => (! [B,C] : (element(C,the_carrier(A)) => (relstr_set_smaller(A,B,C) <=> (! [D] : (element(D,the_carrier(A)) => (in(D,B) => related(A,D,C))))))))), file('Problems/SEU/SEU366+1.p',d9_lattice3)).
fof(d2_tarski, axiom, (! [A,B,C] : (C = unordered_pair(A,B) <=> (! [D] : (in(D,C) <=> (D = A | D = B))))), file('Problems/SEU/SEU366+1.p',d2_tarski)).
fof(fc2_finset_1, axiom, (! [A,B] : (~ empty(unordered_pair(A,B)) & finite(unordered_pair(A,B)))), file('Problems/SEU/SEU366+1.p',fc2_finset_1)).
fof(t38_zfmisc_1, axiom, (! [A,B,C] : (subset(unordered_pair(A,B),C) <=> (in(A,C) & in(B,C)))), file('Problems/SEU/SEU366+1.p',t38_zfmisc_1)).
fof(d1_waybel_0, axiom, (! [A] : (rel_str(A) => (! [B] : (element(B,powerset(the_carrier(A))) => (directed_subset(B,A) <=> (! [C] : (element(C,the_carrier(A)) => (! [D] : (element(D,the_carrier(A)) => ~ ((in(C,B) & in(D,B) & (! [E] : (element(E,the_carrier(A)) => ~ ((in(E,B) & related(A,C,E) & related(A,D,E)))))))))))))))), file('Problems/SEU/SEU366+1.p',d1_waybel_0)).
fof(existence_m1_subset_1, axiom, (! [A] : (? [B] : element(B,A))), file('Problems/SEU/SEU366+1.p',existence_m1_subset_1)).
fof(t6_yellow_0, axiom, (! [A] : (rel_str(A) => (! [B] : (element(B,the_carrier(A)) => (relstr_set_smaller(A,empty_set,B) & relstr_element_smaller(A,empty_set,B)))))), file('Problems/SEU/SEU366+1.p',t6_yellow_0)).
fof(d2_xboole_0, axiom, (! [A,B,C] : (C = set_union2(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) | in(D,B)))))), file('Problems/SEU/SEU366+1.p',d2_xboole_0)).
fof(d1_tarski, axiom, (! [A,B] : (B = singleton(A) <=> (! [C] : (in(C,B) <=> C = A)))), file('Problems/SEU/SEU366+1.p',d1_tarski)).
fof(t26_orders_2, axiom, (! [A] : ((transitive_relstr(A) & rel_str(A)) => (! [B] : (element(B,the_carrier(A)) => (! [C] : (element(C,the_carrier(A)) => (! [D] : (element(D,the_carrier(A)) => ((related(A,B,C) & related(A,C,D)) => related(A,B,D)))))))))), file('Problems/SEU/SEU366+1.p',t26_orders_2)).
fof(s2_finset_1__e11_2_1__waybel_0, axiom, (! [A,B,C] : ((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A))) & finite(C) & element(C,powerset(B))) => ((finite(C) & (? [D] : (element(D,the_carrier(A)) & in(D,B) & relstr_set_smaller(A,empty_set,D))) & (! [E,F] : ((in(E,C) & subset(F,C) & (? [G] : (element(G,the_carrier(A)) & in(G,B) & relstr_set_smaller(A,F,G)))) => (? [H] : (element(H,the_carrier(A)) & in(H,B) & relstr_set_smaller(A,set_union2(F,singleton(E)),H)))))) => (? [I] : (element(I,the_carrier(A)) & in(I,B) & relstr_set_smaller(A,C,I)))))), file('Problems/SEU/SEU366+1.p',s2_finset_1__e11_2_1__waybel_0)).
fof(t1_waybel_0, conjecture, (! [A] : ((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A)) => (! [B] : (element(B,powerset(the_carrier(A))) => ((~ empty(B) & directed_subset(B,A)) <=> (! [C] : ((finite(C) & element(C,powerset(B))) => (? [D] : (element(D,the_carrier(A)) & in(D,B) & relstr_set_smaller(A,C,D)))))))))), file('Problems/SEU/SEU366+1.p',t1_waybel_0)).
fof(t1_waybel_0_neg, negated_conjecture, ~ ((! [A] : ((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A)) => (! [B] : (element(B,powerset(the_carrier(A))) => ((~ empty(B) & directed_subset(B,A)) <=> (! [C] : ((finite(C) & element(C,powerset(B))) => (? [D] : (element(D,the_carrier(A)) & in(D,B) & relstr_set_smaller(A,C,D))))))))))), inference(negate_conjecture,[status(cth)],[t1_waybel_0])).
fof(sub, plain, (! [Y,S,X] : ((in(Y,S) & subset(S,X)) => in(Y,X))), inference(lemma,[status(thm)],[t3_subset,t4_subset,t2_subset,t5_subset])).
fof(mem, plain, (! [X,B,U] : ((in(X,B) & element(B,powerset(U))) => element(X,U))), inference(lemma,[status(thm)],[t4_subset])).
fof(e0, plain, (! [B] : (finite(empty_set) & element(empty_set,powerset(B)))), inference(lemma,[status(thm)],[cc1_finset_1,fc1_xboole_0,t3_subset,t2_xboole_1])).
fof(r1, plain, (! [A,B] : (((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A)))) & (! [C] : ((finite(C) & element(C,powerset(B))) => (? [D] : (element(D,the_carrier(A)) & in(D,B) & relstr_set_smaller(A,C,D)))))) => ~ empty(B))), inference(lemma,[status(thm)],[e0,t7_boole])).
fof(r2a, plain, (! [A,B,C,D,E] : (((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A)))) & in(C,B) & in(D,B) & (element(E,the_carrier(A)) & in(E,B) & relstr_set_smaller(A,unordered_pair(C,D),E))) => (related(A,C,E) & related(A,D,E)))), inference(lemma,[status(thm)],[d9_lattice3,d2_tarski,mem])).
fof(r2b, plain, (! [A,B,C,D] : (((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A)))) & (! [C] : ((finite(C) & element(C,powerset(B))) => (? [D] : (element(D,the_carrier(A)) & in(D,B) & relstr_set_smaller(A,C,D))))) & in(C,B) & in(D,B)) => (? [E] : (element(E,the_carrier(A)) & in(E,B) & relstr_set_smaller(A,unordered_pair(C,D),E))))), inference(lemma,[status(thm)],[fc2_finset_1,t38_zfmisc_1,t3_subset])).
fof(r2, plain, (! [A,B] : (((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A)))) & (! [C] : ((finite(C) & element(C,powerset(B))) => (? [D] : (element(D,the_carrier(A)) & in(D,B) & relstr_set_smaller(A,C,D)))))) => directed_subset(B,A))), inference(lemma,[status(thm)],[d1_waybel_0,r2a,r2b])).
fof(l0, plain, (! [A,B] : (((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A)))) & ~ empty(B)) => (? [D] : (element(D,the_carrier(A)) & in(D,B) & relstr_set_smaller(A,empty_set,D))))), inference(lemma,[status(thm)],[existence_m1_subset_1,t2_subset,mem,t6_yellow_0])).
fof(dir, plain, (! [A,B,G,E] : (((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A)))) & directed_subset(B,A) & in(G,B) & in(E,B)) => (? [H] : (element(H,the_carrier(A)) & in(H,B) & related(A,G,H) & related(A,E,H))))), inference(lemma,[status(thm)],[d1_waybel_0,mem])).
fof(l1a, plain, (! [A,B,C,F,G,H,E] : (((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A)))) & subset(F,C) & element(C,powerset(B)) & in(E,C) & (element(G,the_carrier(A)) & in(G,B) & relstr_set_smaller(A,F,G)) & element(H,the_carrier(A)) & in(H,B) & related(A,G,H) & related(A,E,H)) => relstr_set_smaller(A,set_union2(F,singleton(E)),H))), inference(lemma,[status(thm)],[d9_lattice3,d2_xboole_0,d1_tarski,t26_orders_2,sub,t3_subset,mem])).
fof(l1, plain, (! [A,B,C,F,G,E] : (((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A)))) & directed_subset(B,A) & element(C,powerset(B)) & in(E,C) & subset(F,C) & (element(G,the_carrier(A)) & in(G,B) & relstr_set_smaller(A,F,G))) => (? [H] : (element(H,the_carrier(A)) & in(H,B) & relstr_set_smaller(A,set_union2(F,singleton(E)),H))))), inference(lemma,[status(thm)],[dir,l1a,sub,t3_subset])).
fof(fwd, plain, (! [A,B] : (((~ empty_carrier(A) & transitive_relstr(A) & rel_str(A) & element(B,powerset(the_carrier(A)))) & ~ empty(B) & directed_subset(B,A)) => (! [C] : ((finite(C) & element(C,powerset(B))) => (? [D] : (element(D,the_carrier(A)) & in(D,B) & relstr_set_smaller(A,C,D))))))), inference(lemma,[status(thm)],[s2_finset_1__e11_2_1__waybel_0,l0,l1])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t1_waybel_0_neg,r1,r2,fwd])).
% SZS output end Refutation for SEU366+1
%------------------------------------------------------------------------------
