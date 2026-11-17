%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : ALG230+4 : TPTP v10.0.0. Released v3.4.0.
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
%            specific calculus rule). Notes: chainy large version (37,879 formulas); same proof file,
%            so the status CounterSatisfiable is wrong.
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for ALG230+4
% SZS output start Refutation for ALG230+4
fof(redefinition_k3_closure3, axiom, (! [A,B,C,D] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => k3_closure3(A,B,C,D) = k2_xboole_0(C,D))), file('Problems/ALG/ALG230+4.p',redefinition_k3_closure3)).
fof(dt_k3_closure3, axiom, (! [A,B,C,D] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => m1_subset_1(k3_closure3(A,B,C,D),k1_zfmisc_1(k1_closure2(A,B))))), file('Problems/ALG/ALG230+4.p',dt_k3_closure3)).
fof(fraenkel_a_4_0_closure3, axiom, (! [A,B,C,D,E] : ((m1_pboole(C,B) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(B,C)))) => (r2_hidden(A,a_4_0_closure3(B,C,D,E)) <=> (? [F] : (m1_closure2(F,B,C,k6_closure2(B,C)) & A = k1_funct_1(F,E) & r2_hidden(F,D)))))), file('Problems/ALG/ALG230+4.p',fraenkel_a_4_0_closure3)).
fof(d2_xboole_0, axiom, (! [A,B,C] : (C = k2_xboole_0(A,B) <=> (! [D] : (r2_hidden(D,C) <=> (r2_hidden(D,A) | r2_hidden(D,B)))))), file('Problems/ALG/ALG230+4.p',d2_xboole_0)).
fof(d4_tarski, axiom, (! [A,B] : (B = k3_tarski(A) <=> (! [C] : (r2_hidden(C,B) <=> (? [D] : (r2_hidden(C,D) & r2_hidden(D,A))))))), file('Problems/ALG/ALG230+4.p',d4_tarski)).
fof(t2_tarski, axiom, (! [A,B] : ((! [C] : (r2_hidden(C,A) <=> r2_hidden(C,B))) => A = B)), file('Problems/ALG/ALG230+4.p',t2_tarski)).
fof(d4_closure3, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) => (! [D] : (m4_pboole(D,A,B) => (D = k2_closure3(A,B,C) <=> (! [E] : (r2_hidden(E,A) => k1_funct_1(D,E) = k3_tarski(a_4_0_closure3(A,B,C,E))))))))))), file('Problems/ALG/ALG230+4.p',d4_closure3)).
fof(dt_k2_closure3, axiom, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => m4_pboole(k2_closure3(A,B,C),A,B))), file('Problems/ALG/ALG230+4.p',dt_k2_closure3)).
fof(d7_pboole, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_pboole(C,A) => (! [D] : (m1_pboole(D,A) => (D = k2_pboole(A,B,C) <=> (! [E] : (r2_hidden(E,A) => k1_funct_1(D,E) = k2_xboole_0(k1_funct_1(B,E),k1_funct_1(C,E))))))))))), file('Problems/ALG/ALG230+4.p',d7_pboole)).
fof(dt_k2_pboole, axiom, (! [A,B,C] : ((m1_pboole(B,A) & m1_pboole(C,A)) => m1_pboole(k2_pboole(A,B,C),A))), file('Problems/ALG/ALG230+4.p',dt_k2_pboole)).
fof(dt_m4_pboole, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m4_pboole(C,A,B) => m1_pboole(C,A))))), file('Problems/ALG/ALG230+4.p',dt_m4_pboole)).
fof(t3_pboole, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_pboole(C,A) => ((! [D] : (r2_hidden(D,A) => k1_funct_1(B,D) = k1_funct_1(C,D))) => B = C))))), file('Problems/ALG/ALG230+4.p',t3_pboole)).
fof(reflexivity_r6_pboole, axiom, (! [A,B,C] : ((m1_pboole(B,A) & m1_pboole(C,A)) => r6_pboole(A,B,B))), file('Problems/ALG/ALG230+4.p',reflexivity_r6_pboole)).
fof(t11_closure3, conjecture, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) => (! [D] : (m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) => r6_pboole(A,k2_closure3(A,B,k3_closure3(A,B,C,D)),k2_pboole(A,k2_closure3(A,B,C),k2_closure3(A,B,D))))))))), file('Problems/ALG/ALG230+4.p',t11_closure3)).
fof(t11_closure3_neg, negated_conjecture, ~ ((! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) => (! [D] : (m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) => r6_pboole(A,k2_closure3(A,B,k3_closure3(A,B,C,D)),k2_pboole(A,k2_closure3(A,B,C),k2_closure3(A,B,D)))))))))), inference(negate_conjecture,[status(cth)],[t11_closure3])).
fof(s1, plain, (! [A,B,C,D] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => k3_closure3(A,B,C,D) = k2_xboole_0(C,D))), inference(lemma,[status(thm)],[redefinition_k3_closure3])).
fof(s2, plain, (! [A,B,C,D] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => m1_subset_1(k2_xboole_0(C,D),k1_zfmisc_1(k1_closure2(A,B))))), inference(lemma,[status(thm)],[dt_k3_closure3,s1])).
fof(s3, plain, (! [A,B,C,D,E,X] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => (r2_hidden(X,a_4_0_closure3(A,B,k2_xboole_0(C,D),E)) <=> (r2_hidden(X,a_4_0_closure3(A,B,C,E)) | r2_hidden(X,a_4_0_closure3(A,B,D,E)))))), inference(lemma,[status(thm)],[fraenkel_a_4_0_closure3,d2_xboole_0,s2])).
fof(s4, plain, (! [A,B,C,D,E,Y] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => (r2_hidden(Y,k3_tarski(a_4_0_closure3(A,B,k2_xboole_0(C,D),E))) <=> (r2_hidden(Y,k3_tarski(a_4_0_closure3(A,B,C,E))) | r2_hidden(Y,k3_tarski(a_4_0_closure3(A,B,D,E))))))), inference(lemma,[status(thm)],[d4_tarski,s3])).
fof(s5a, plain, (! [A,B,C,D,E,Y] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => (r2_hidden(Y,k3_tarski(a_4_0_closure3(A,B,k2_xboole_0(C,D),E))) <=> r2_hidden(Y,k2_xboole_0(k3_tarski(a_4_0_closure3(A,B,C,E)),k3_tarski(a_4_0_closure3(A,B,D,E))))))), inference(lemma,[status(thm)],[d2_xboole_0,s4])).
fof(s5, plain, (! [A,B,C,D,E] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => k3_tarski(a_4_0_closure3(A,B,k2_xboole_0(C,D),E)) = k2_xboole_0(k3_tarski(a_4_0_closure3(A,B,C,E)),k3_tarski(a_4_0_closure3(A,B,D,E))))), inference(lemma,[status(thm)],[t2_tarski,s5a])).
fof(s6, plain, (! [A,B,C,E] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & r2_hidden(E,A)) => k1_funct_1(k2_closure3(A,B,C),E) = k3_tarski(a_4_0_closure3(A,B,C,E)))), inference(lemma,[status(thm)],[d4_closure3,dt_k2_closure3])).
fof(s7a, plain, (! [A,B,C,D,E] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) & r2_hidden(E,A)) => k1_funct_1(k2_pboole(A,k2_closure3(A,B,C),k2_closure3(A,B,D)),E) = k2_xboole_0(k1_funct_1(k2_closure3(A,B,C),E),k1_funct_1(k2_closure3(A,B,D),E)))), inference(lemma,[status(thm)],[d7_pboole,dt_k2_pboole,dt_k2_closure3,dt_m4_pboole])).
fof(s7b, plain, (! [A,B,C,D,E] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) & r2_hidden(E,A)) => k1_funct_1(k2_closure3(A,B,k2_xboole_0(C,D)),E) = k1_funct_1(k2_pboole(A,k2_closure3(A,B,C),k2_closure3(A,B,D)),E))), inference(lemma,[status(thm)],[s2,s5,s6,s7a])).
fof(s7, plain, (! [A,B,C,D] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => k2_closure3(A,B,k2_xboole_0(C,D)) = k2_pboole(A,k2_closure3(A,B,C),k2_closure3(A,B,D)))), inference(lemma,[status(thm)],[t3_pboole,s7b,s2,dt_k2_closure3,dt_m4_pboole,dt_k2_pboole])).
fof(s8, plain, (! [A,B,C,D] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B)))) => r6_pboole(A,k2_closure3(A,B,k3_closure3(A,B,C,D)),k2_pboole(A,k2_closure3(A,B,C),k2_closure3(A,B,D))))), inference(lemma,[status(thm)],[s1,s7,reflexivity_r6_pboole,dt_k2_pboole,dt_k2_closure3,dt_m4_pboole])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[s8,t11_closure3_neg])).
% SZS output end Refutation for ALG230+4
%------------------------------------------------------------------------------
