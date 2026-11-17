%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU093+1 : TPTP v10.0.0. Bugfixed v4.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : SUGGESTED CHANGE: Unknown -> Theorem (TPTP v10.0.0 status is Unknown; this file is a
%            verified refutation)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: t24_finset_1: <= via union of singletons in P(A); => via
%            finite-set induction scheme, P(D u {c}) <= P(D) u rng(X -> X u {c}); one split
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU093+1
% SZS output start Refutation for SEU093+1
fof(t1_subset, axiom, (! [A,B] : (in(A,B) => element(A,B))), file('Problems/SEU/SEU093+1.p',t1_subset)).
fof(t3_subset, axiom, (! [A,B] : (element(A,powerset(B)) <=> subset(A,B))), file('Problems/SEU/SEU093+1.p',t3_subset)).
fof(t2_subset, axiom, (! [A,B] : (element(A,B) => (empty(B) | in(A,B)))), file('Problems/SEU/SEU093+1.p',t2_subset)).
fof(fc1_subset_1, axiom, (! [A] : ~ empty(powerset(A))), file('Problems/SEU/SEU093+1.p',fc1_subset_1)).
fof(d5_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B] : (B = relation_rng(A) <=> (! [C] : (in(C,B) <=> (? [D] : (in(D,relation_dom(A)) & C = apply(A,D))))))))), file('Problems/SEU/SEU093+1.p',d5_funct_1)).
fof(t17_finset_1, axiom, (! [A,B] : ((relation(B) & function(B)) => (finite(A) => finite(relation_image(B,A))))), file('Problems/SEU/SEU093+1.p',t17_finset_1)).
fof(t146_relat_1, axiom, (! [A] : (relation(A) => relation_image(A,relation_dom(A)) = relation_rng(A))), file('Problems/SEU/SEU093+1.p',t146_relat_1)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU093+1.p',d3_tarski)).
fof(fc1_finset_1, axiom, (! [A] : (~ empty(singleton(A)) & finite(singleton(A)))), file('Problems/SEU/SEU093+1.p',fc1_finset_1)).
fof(d4_tarski, axiom, (! [A,B] : (B = union(A) <=> (! [C] : (in(C,B) <=> (? [D] : (in(C,D) & in(D,A))))))), file('Problems/SEU/SEU093+1.p',d4_tarski)).
fof(d1_tarski, axiom, (! [A,B] : (B = singleton(A) <=> (! [C] : (in(C,B) <=> C = A)))), file('Problems/SEU/SEU093+1.p',d1_tarski)).
fof(t37_zfmisc_1, axiom, (! [A,B] : (subset(singleton(A),B) <=> in(A,B))), file('Problems/SEU/SEU093+1.p',t37_zfmisc_1)).
fof(s1_xboole_0__e2_38_2__finset_1, axiom, (! [A] : (? [B] : (! [C] : (in(C,B) <=> (in(C,powerset(A)) & (? [D] : C = singleton(D))))))), file('Problems/SEU/SEU093+1.p',s1_xboole_0__e2_38_2__finset_1)).
fof(t13_finset_1, axiom, (! [A,B] : ((subset(A,B) & finite(B)) => finite(A))), file('Problems/SEU/SEU093+1.p',t13_finset_1)).
fof(l22_finset_1, axiom, (! [A] : ((finite(A) & (! [B] : (in(B,A) => finite(B)))) => finite(union(A)))), file('Problems/SEU/SEU093+1.p',l22_finset_1)).
fof(s2_funct_1__e4_38_1_1_2__finset_1, axiom, (! [A,B] : (((! [C,D,E] : ((in(C,powerset(B)) & (? [F] : (F = C & D = set_union2(F,singleton(A)))) & (? [G] : (G = C & E = set_union2(G,singleton(A))))) => D = E)) & (! [C] : ~ ((in(C,powerset(B)) & (! [D] : ~ ((? [H] : (H = C & D = set_union2(H,singleton(A)))))))))) => (? [C] : (relation(C) & function(C) & relation_dom(C) = powerset(B) & (! [D] : (in(D,powerset(B)) => (? [I] : (I = D & apply(C,D) = set_union2(I,singleton(A)))))))))), file('Problems/SEU/SEU093+1.p',s2_funct_1__e4_38_1_1_2__finset_1)).
fof(t43_xboole_1, axiom, (! [A,B,C] : (subset(A,set_union2(B,C)) => subset(set_difference(A,B),C))), file('Problems/SEU/SEU093+1.p',t43_xboole_1)).
fof(commutativity_k2_xboole_0, axiom, (! [A,B] : set_union2(A,B) = set_union2(B,A)), file('Problems/SEU/SEU093+1.p',commutativity_k2_xboole_0)).
fof(t39_xboole_1, axiom, (! [A,B] : set_union2(A,set_difference(B,A)) = set_union2(A,B)), file('Problems/SEU/SEU093+1.p',t39_xboole_1)).
fof(t46_zfmisc_1, axiom, (! [A,B] : (in(A,B) => set_union2(singleton(A),B) = B)), file('Problems/SEU/SEU093+1.p',t46_zfmisc_1)).
fof(d2_xboole_0, axiom, (! [A,B,C] : (C = set_union2(A,B) <=> (! [D] : (in(D,C) <=> (in(D,A) | in(D,B)))))), file('Problems/SEU/SEU093+1.p',d2_xboole_0)).
fof(l3_finset_1, axiom, (! [A,B] : ((finite(A) & finite(B)) => finite(set_union2(A,B)))), file('Problems/SEU/SEU093+1.p',l3_finset_1)).
fof(t2_xboole_1, axiom, (! [A] : subset(empty_set,A)), file('Problems/SEU/SEU093+1.p',t2_xboole_1)).
fof(t1_zfmisc_1, axiom, powerset(empty_set) = singleton(empty_set), file('Problems/SEU/SEU093+1.p',t1_zfmisc_1)).
fof(t8_xboole_1, axiom, (! [A,B,C] : ((subset(A,B) & subset(C,B)) => subset(set_union2(A,C),B))), file('Problems/SEU/SEU093+1.p',t8_xboole_1)).
fof(s1_xboole_0__e2_38_1__finset_1, axiom, (! [A] : (? [B] : (! [C] : (in(C,B) <=> (in(C,powerset(A)) & (? [D] : (D = C & finite(powerset(D))))))))), file('Problems/SEU/SEU093+1.p',s1_xboole_0__e2_38_1__finset_1)).
fof(s2_finset_1__e7_38_1__finset_1, axiom, (! [A,B] : ((finite(A) & in(empty_set,B) & (! [C,D] : ((in(C,A) & subset(D,A) & in(D,B)) => in(set_union2(D,singleton(C)),B)))) => in(A,B))), file('Problems/SEU/SEU093+1.p',s2_finset_1__e7_38_1__finset_1)).
fof(t24_finset_1, conjecture, (! [A] : (finite(A) <=> finite(powerset(A)))), file('Problems/SEU/SEU093+1.p',t24_finset_1)).
fof(t24_finset_1_neg, negated_conjecture, ~ ((! [A] : (finite(A) <=> finite(powerset(A))))), inference(negate_conjecture,[status(cth)],[t24_finset_1])).
fof(pw, plain, (! [X,Y] : (in(X,powerset(Y)) <=> subset(X,Y))), inference(lemma,[status(thm)],[t1_subset,t3_subset,t2_subset,fc1_subset_1])).
fof(rngd, plain, (! [F,Y] : ((relation(F) & function(F)) => (in(Y,relation_rng(F)) <=> (? [X] : (in(X,relation_dom(F)) & Y = apply(F,X)))))), inference(lemma,[status(thm)],[d5_funct_1])).
fof(finr, plain, (! [F] : ((relation(F) & function(F) & finite(relation_dom(F))) => finite(relation_rng(F)))), inference(lemma,[status(thm)],[t17_finset_1,t146_relat_1])).
fof(s1, plain, (! [A,S] : ((! [X] : (in(X,S) <=> (in(X,powerset(A)) & (? [D] : X = singleton(D))))) => (subset(S,powerset(A)) & (! [X] : (in(X,S) => finite(X))) & subset(A,union(S))))), inference(lemma,[status(thm)],[d3_tarski,fc1_finset_1,d4_tarski,d1_tarski,pw,t37_zfmisc_1])).
fof(lft, plain, (! [A] : (finite(powerset(A)) => finite(A))), inference(lemma,[status(thm)],[s1_xboole_0__e2_38_2__finset_1,s1,t13_finset_1,l22_finset_1])).
fof(hex, plain, (! [C,D] : (? [H] : (relation(H) & function(H) & relation_dom(H) = powerset(D) & (! [X] : (in(X,powerset(D)) => apply(H,X) = set_union2(X,singleton(C))))))), inference(lemma,[status(thm)],[s2_funct_1__e4_38_1_1_2__finset_1])).
fof(dec, plain, (! [X,D,C] : ((subset(X,set_union2(D,singleton(C))) & in(C,X)) => (subset(set_difference(X,singleton(C)),D) & X = set_union2(set_difference(X,singleton(C)),singleton(C))))), inference(lemma,[status(thm)],[t43_xboole_1,commutativity_k2_xboole_0,t39_xboole_1,t46_zfmisc_1])).
fof(dec2, plain, (! [X,D,C] : ((subset(X,set_union2(D,singleton(C))) & ~ in(C,X)) => subset(X,D))), inference(lemma,[status(thm)],[d3_tarski,d2_xboole_0,d1_tarski])).
fof(pc1, plain, (! [C,D,H,X] : (((relation(H) & function(H) & relation_dom(H) = powerset(D) & (! [X] : (in(X,powerset(D)) => apply(H,X) = set_union2(X,singleton(C))))) & subset(X,set_union2(D,singleton(C))) & in(C,X)) => in(X,relation_rng(H)))), inference(lemma,[status(thm)],[dec,pw,rngd])).
fof(pc2, plain, (! [C,D,H,X] : (((relation(H) & function(H) & relation_dom(H) = powerset(D) & (! [X] : (in(X,powerset(D)) => apply(H,X) = set_union2(X,singleton(C))))) & subset(X,set_union2(D,singleton(C)))) => in(X,set_union2(powerset(D),relation_rng(H))))), inference(lemma,[status(thm)],[pc1,dec2,pw,d2_xboole_0])).
fof(pcov, plain, (! [C,D,H] : ((relation(H) & function(H) & relation_dom(H) = powerset(D) & (! [X] : (in(X,powerset(D)) => apply(H,X) = set_union2(X,singleton(C))))) => subset(powerset(set_union2(D,singleton(C))),set_union2(powerset(D),relation_rng(H))))), inference(lemma,[status(thm)],[d3_tarski,pw,pc2])).
fof(pstep, plain, (! [C,D] : (finite(powerset(D)) => finite(powerset(set_union2(D,singleton(C)))))), inference(lemma,[status(thm)],[hex,pcov,finr,l3_finset_1,t13_finset_1])).
fof(bse, plain, (! [A,Bf] : ((! [X] : (in(X,Bf) <=> (in(X,powerset(A)) & finite(powerset(X))))) => in(empty_set,Bf))), inference(lemma,[status(thm)],[pw,t2_xboole_1,t1_zfmisc_1,fc1_finset_1])).
fof(bstp, plain, (! [A,Bf,C,D] : (((! [X] : (in(X,Bf) <=> (in(X,powerset(A)) & finite(powerset(X))))) & in(C,A) & subset(D,A) & in(D,Bf)) => in(set_union2(D,singleton(C)),Bf))), inference(lemma,[status(thm)],[pw,pstep,t8_xboole_1,t37_zfmisc_1])).
fof(rgt, plain, (! [A] : (finite(A) => finite(powerset(A)))), inference(lemma,[status(thm)],[s1_xboole_0__e2_38_1__finset_1,s2_finset_1__e7_38_1__finset_1,bse,bstp])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t24_finset_1_neg,lft,rgt])).
% SZS output end Refutation for SEU093+1
%------------------------------------------------------------------------------
