%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU088+1 : TPTP v10.0.0. Bugfixed v4.0.0.
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
%            specific calculus rule). Notes: t19_finset_1: A x {e} = rng(x->(x,e)) finite, A x B =
%            union of rng(e -> A x {e}), l22_finset_1; 12 steps, first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU088+1
% SZS output start Refutation for SEU088+1
fof(d5_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B] : (B = relation_rng(A) <=> (! [C] : (in(C,B) <=> (? [D] : (in(D,relation_dom(A)) & C = apply(A,D))))))))), file('Problems/SEU/SEU088+1.p',d5_funct_1)).
fof(d2_zfmisc_1, axiom, (! [A,B,C] : (C = cartesian_product2(A,B) <=> (! [D] : (in(D,C) <=> (? [E,F] : (in(E,A) & in(F,B) & D = ordered_pair(E,F))))))), file('Problems/SEU/SEU088+1.p',d2_zfmisc_1)).
fof(d1_tarski, axiom, (! [A,B] : (B = singleton(A) <=> (! [C] : (in(C,B) <=> C = A)))), file('Problems/SEU/SEU088+1.p',d1_tarski)).
fof(t129_zfmisc_1, axiom, (! [A,B,C,D] : (in(ordered_pair(A,B),cartesian_product2(C,singleton(D))) <=> (in(A,C) & B = D))), file('Problems/SEU/SEU088+1.p',t129_zfmisc_1)).
fof(t2_tarski, axiom, (! [A,B] : ((! [C] : (in(C,A) <=> in(C,B))) => A = B)), file('Problems/SEU/SEU088+1.p',t2_tarski)).
fof(t17_finset_1, axiom, (! [A,B] : ((relation(B) & function(B)) => (finite(A) => finite(relation_image(B,A))))), file('Problems/SEU/SEU088+1.p',t17_finset_1)).
fof(t146_relat_1, axiom, (! [A] : (relation(A) => relation_image(A,relation_dom(A)) = relation_rng(A))), file('Problems/SEU/SEU088+1.p',t146_relat_1)).
fof(s3_funct_1__e1_30_1__finset_1, axiom, (! [A,B] : (? [C] : (relation(C) & function(C) & relation_dom(C) = A & (! [D] : (in(D,A) => apply(C,D) = ordered_pair(D,B)))))), file('Problems/SEU/SEU088+1.p',s3_funct_1__e1_30_1__finset_1)).
fof(d4_tarski, axiom, (! [A,B] : (B = union(A) <=> (! [C] : (in(C,B) <=> (? [D] : (in(C,D) & in(D,A))))))), file('Problems/SEU/SEU088+1.p',d4_tarski)).
fof(t19_finset_1, conjecture, (! [A,B] : ((finite(A) & finite(B)) => finite(cartesian_product2(A,B)))), file('Problems/SEU/SEU088+1.p',t19_finset_1)).
fof(t19_finset_1_neg, negated_conjecture, ~ ((! [A,B] : ((finite(A) & finite(B)) => finite(cartesian_product2(A,B))))), inference(negate_conjecture,[status(cth)],[t19_finset_1])).
fof(s3_funct_1__e8_30__finset_1, axiom, (! [A,B] : (? [C] : (relation(C) & function(C) & relation_dom(C) = B & (! [D] : (in(D,B) => apply(C,D) = cartesian_product2(A,singleton(D))))))), file('Problems/SEU/SEU088+1.p',s3_funct_1__e8_30__finset_1)).
fof(l22_finset_1, axiom, (! [A] : ((finite(A) & (! [B] : (in(B,A) => finite(B)))) => finite(union(A)))), file('Problems/SEU/SEU088+1.p',l22_finset_1)).
fof(rngd, plain, (! [F,Y] : ((relation(F) & function(F)) => (in(Y,relation_rng(F)) <=> (? [X] : (in(X,relation_dom(F)) & Y = apply(F,X)))))), inference(lemma,[status(thm)],[d5_funct_1])).
fof(cpe, plain, (! [A,E,Z] : (in(Z,cartesian_product2(A,singleton(E))) <=> (? [X] : (in(X,A) & Z = ordered_pair(X,E))))), inference(lemma,[status(thm)],[d2_zfmisc_1,d1_tarski,t129_zfmisc_1])).
fof(rng1m, plain, (! [A,E,F,Z] : ((relation(F) & function(F) & relation_dom(F) = A & (! [D] : (in(D,A) => apply(F,D) = ordered_pair(D,E)))) => (in(Z,relation_rng(F)) <=> in(Z,cartesian_product2(A,singleton(E)))))), inference(lemma,[status(thm)],[rngd,cpe])).
fof(rng1, plain, (! [A,E,F] : ((relation(F) & function(F) & relation_dom(F) = A & (! [D] : (in(D,A) => apply(F,D) = ordered_pair(D,E)))) => relation_rng(F) = cartesian_product2(A,singleton(E)))), inference(lemma,[status(thm)],[rng1m,t2_tarski])).
fof(finr, plain, (! [F] : ((relation(F) & function(F) & finite(relation_dom(F))) => finite(relation_rng(F)))), inference(lemma,[status(thm)],[t17_finset_1,t146_relat_1])).
fof(fin1, plain, (! [A,E] : (finite(A) => finite(cartesian_product2(A,singleton(E))))), inference(lemma,[status(thm)],[s3_funct_1__e1_30_1__finset_1,rng1,finr])).
fof(elfin, plain, (! [A,B,G,Z] : (((relation(G) & function(G) & relation_dom(G) = B & (! [D] : (in(D,B) => apply(G,D) = cartesian_product2(A,singleton(D))))) & finite(A) & in(Z,relation_rng(G))) => finite(Z))), inference(lemma,[status(thm)],[rngd,fin1])).
fof(cp, plain, (! [A,B,Z] : (in(Z,cartesian_product2(A,B)) <=> (? [X,Y] : (in(X,A) & in(Y,B) & Z = ordered_pair(X,Y))))), inference(lemma,[status(thm)],[d2_zfmisc_1])).
fof(unm1, plain, (! [A,B,G,Z] : ((relation(G) & function(G) & relation_dom(G) = B & (! [D] : (in(D,B) => apply(G,D) = cartesian_product2(A,singleton(D))))) => (in(Z,union(relation_rng(G))) <=> (? [E] : (in(E,B) & in(Z,cartesian_product2(A,singleton(E)))))))), inference(lemma,[status(thm)],[d4_tarski,rngd])).
fof(unm, plain, (! [A,B,G,Z] : ((relation(G) & function(G) & relation_dom(G) = B & (! [D] : (in(D,B) => apply(G,D) = cartesian_product2(A,singleton(D))))) => (in(Z,union(relation_rng(G))) <=> in(Z,cartesian_product2(A,B))))), inference(lemma,[status(thm)],[unm1,cp,cpe])).
fof(un, plain, (! [A,B,G] : ((relation(G) & function(G) & relation_dom(G) = B & (! [D] : (in(D,B) => apply(G,D) = cartesian_product2(A,singleton(D))))) => union(relation_rng(G)) = cartesian_product2(A,B))), inference(lemma,[status(thm)],[unm,t2_tarski])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t19_finset_1_neg,s3_funct_1__e8_30__finset_1,un,elfin,finr,l22_finset_1])).
% SZS output end Refutation for SEU088+1
%------------------------------------------------------------------------------
