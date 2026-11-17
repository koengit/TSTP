%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : ALG229+4 : TPTP v10.0.0. Released v3.4.0.
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
%            specific calculus rule).
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for ALG229+4
% SZS output start Refutation for ALG229+4
fof(dt_k5_closure2, axiom, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => m4_pboole(k5_closure2(A,B,C),A,k1_mboolean(A,B)))), file('Problems/ALG/ALG229+4.p',dt_k5_closure2)).
fof(dt_m4_pboole, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m4_pboole(C,A,B) => m1_pboole(C,A))))), file('Problems/ALG/ALG229+4.p',dt_m4_pboole)).
fof(dt_k1_mboolean, axiom, (! [A,B] : (m1_pboole(B,A) => m1_pboole(k1_mboolean(A,B),A))), file('Problems/ALG/ALG229+4.p',dt_k1_mboolean)).
fof(dt_k2_mboolean, axiom, (! [A,B] : (m1_pboole(B,A) => m1_pboole(k2_mboolean(A,B),A))), file('Problems/ALG/ALG229+4.p',dt_k2_mboolean)).
fof(dt_k2_closure3, axiom, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => m4_pboole(k2_closure3(A,B,C),A,B))), file('Problems/ALG/ALG229+4.p',dt_k2_closure3)).
fof(d2_mboolean, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_pboole(C,A) => (C = k2_mboolean(A,B) <=> (! [D] : (r2_hidden(D,A) => k1_funct_1(C,D) = k3_tarski(k1_funct_1(B,D))))))))), file('Problems/ALG/ALG229+4.p',d2_mboolean)).
fof(d4_closure3, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) => (! [D] : (m4_pboole(D,A,B) => (D = k2_closure3(A,B,C) <=> (! [E] : (r2_hidden(E,A) => k1_funct_1(D,E) = k3_tarski(a_4_0_closure3(A,B,C,E))))))))))), file('Problems/ALG/ALG229+4.p',d4_closure3)).
fof(redefinition_k5_closure2, axiom, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => k5_closure2(A,B,C) = k4_closure2(A,B,C))), file('Problems/ALG/ALG229+4.p',redefinition_k5_closure2)).
fof(t15_closure2, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) => (~ v1_xboole_0(C) => (! [D] : (r2_hidden(D,A) => k1_funct_1(k4_closure2(A,B,C),D) = a_4_0_closure2(A,B,C,D)))))))), file('Problems/ALG/ALG229+4.p',t15_closure2)).
fof(fraenkel_a_4_0_closure2, axiom, (! [A,B,C,D,E] : ((m1_pboole(C,B) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(B,C)))) => (r2_hidden(A,a_4_0_closure2(B,C,D,E)) <=> (? [F] : (m1_closure2(F,B,C,k2_closure2(B,C)) & A = k1_funct_1(F,E) & r2_hidden(F,D)))))), file('Problems/ALG/ALG229+4.p',fraenkel_a_4_0_closure2)).
fof(fraenkel_a_4_0_closure3, axiom, (! [A,B,C,D,E] : ((m1_pboole(C,B) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(B,C)))) => (r2_hidden(A,a_4_0_closure3(B,C,D,E)) <=> (? [F] : (m1_closure2(F,B,C,k6_closure2(B,C)) & A = k1_funct_1(F,E) & r2_hidden(F,D)))))), file('Problems/ALG/ALG229+4.p',fraenkel_a_4_0_closure3)).
fof(redefinition_k2_closure2, axiom, (! [A,B] : (m1_pboole(B,A) => k2_closure2(A,B) = k1_closure2(A,B))), file('Problems/ALG/ALG229+4.p',redefinition_k2_closure2)).
fof(redefinition_k6_closure2, axiom, (! [A,B] : (m1_pboole(B,A) => k6_closure2(A,B) = k1_closure2(A,B))), file('Problems/ALG/ALG229+4.p',redefinition_k6_closure2)).
fof(t2_tarski, axiom, (! [A,B] : ((! [C] : (r2_hidden(C,A) <=> r2_hidden(C,B))) => A = B)), file('Problems/ALG/ALG229+4.p',t2_tarski)).
fof(d4_closure2, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) => ((C != k1_xboole_0 => k4_closure2(A,B,C) = k3_closure2(C)) & (C = k1_xboole_0 => k4_closure2(A,B,C) = k1_pboole(A))))))), file('Problems/ALG/ALG229+4.p',d4_closure2)).
fof(t6_boole, axiom, (! [A] : (v1_xboole_0(A) => A = k1_xboole_0)), file('Problems/ALG/ALG229+4.p',t6_boole)).
fof(fc3_pboole, axiom, (! [A] : (v1_relat_1(k1_pboole(A)) & v3_relat_1(k1_pboole(A)) & v1_funct_1(k1_pboole(A)))), file('Problems/ALG/ALG229+4.p',fc3_pboole)).
fof(d15_pboole, axiom, (! [A,B] : (m1_pboole(B,A) => (v3_relat_1(B) <=> (! [C] : (r2_hidden(C,A) => v1_xboole_0(k1_funct_1(B,C))))))), file('Problems/ALG/ALG229+4.p',d15_pboole)).
fof(dt_k1_pboole, axiom, (! [A] : m1_pboole(k1_pboole(A),A)), file('Problems/ALG/ALG229+4.p',dt_k1_pboole)).
fof(t7_boole, axiom, (! [A,B] : ~ ((r2_hidden(A,B) & v1_xboole_0(B)))), file('Problems/ALG/ALG229+4.p',t7_boole)).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('Problems/ALG/ALG229+4.p',fc1_xboole_0)).
fof(t3_pboole, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_pboole(C,A) => ((! [D] : (r2_hidden(D,A) => k1_funct_1(B,D) = k1_funct_1(C,D))) => B = C))))), file('Problems/ALG/ALG229+4.p',t3_pboole)).
fof(reflexivity_r6_pboole, axiom, (! [A,B,C] : ((m1_pboole(B,A) & m1_pboole(C,A)) => r6_pboole(A,B,B))), file('Problems/ALG/ALG229+4.p',reflexivity_r6_pboole)).
fof(t10_closure3, conjecture, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) => r6_pboole(A,k2_closure3(A,B,C),k2_mboolean(A,k5_closure2(A,B,C))))))), file('Problems/ALG/ALG229+4.p',t10_closure3)).
fof(t10_closure3_neg, negated_conjecture, ~ ((! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) => r6_pboole(A,k2_closure3(A,B,C),k2_mboolean(A,k5_closure2(A,B,C)))))))), inference(negate_conjecture,[status(cth)],[t10_closure3])).
fof(p1, plain, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => m1_pboole(k5_closure2(A,B,C),A))), inference(lemma,[status(thm)],[dt_k5_closure2,dt_m4_pboole,dt_k1_mboolean])).
fof(p2, plain, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => m1_pboole(k2_mboolean(A,k5_closure2(A,B,C)),A))), inference(lemma,[status(thm)],[dt_k2_mboolean,p1])).
fof(p3, plain, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => m1_pboole(k2_closure3(A,B,C),A))), inference(lemma,[status(thm)],[dt_k2_closure3,dt_m4_pboole])).
fof(p4, plain, (! [A,B,C,S] : (((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) & r2_hidden(S,A)) => k1_funct_1(k2_mboolean(A,k5_closure2(A,B,C)),S) = k3_tarski(k1_funct_1(k5_closure2(A,B,C),S)))), inference(lemma,[status(thm)],[d2_mboolean,p1,p2])).
fof(p5, plain, (! [A,B,C,S] : (((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) & r2_hidden(S,A)) => k1_funct_1(k2_closure3(A,B,C),S) = k3_tarski(a_4_0_closure3(A,B,C,S)))), inference(lemma,[status(thm)],[d4_closure3,dt_k2_closure3])).
fof(n1, plain, (! [A,B,C,S] : (((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) & ~ v1_xboole_0(C) & r2_hidden(S,A)) => k1_funct_1(k5_closure2(A,B,C),S) = a_4_0_closure2(A,B,C,S))), inference(lemma,[status(thm)],[redefinition_k5_closure2,t15_closure2])).
fof(n2a, plain, (! [A,B,C,S,Z] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => (r2_hidden(Z,a_4_0_closure2(A,B,C,S)) <=> r2_hidden(Z,a_4_0_closure3(A,B,C,S))))), inference(lemma,[status(thm)],[fraenkel_a_4_0_closure2,fraenkel_a_4_0_closure3,redefinition_k2_closure2,redefinition_k6_closure2])).
fof(n2, plain, (! [A,B,C,S] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => a_4_0_closure2(A,B,C,S) = a_4_0_closure3(A,B,C,S))), inference(lemma,[status(thm)],[t2_tarski,n2a])).
fof(n3, plain, (! [A,B,C,S] : (((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) & ~ v1_xboole_0(C) & r2_hidden(S,A)) => k1_funct_1(k2_mboolean(A,k5_closure2(A,B,C)),S) = k1_funct_1(k2_closure3(A,B,C),S))), inference(lemma,[status(thm)],[p4,p5,n1,n2])).
fof(e1, plain, (! [A,B,C] : (((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) & v1_xboole_0(C)) => k5_closure2(A,B,C) = k1_pboole(A))), inference(lemma,[status(thm)],[redefinition_k5_closure2,d4_closure2,t6_boole])).
fof(e3, plain, (! [A,S] : (r2_hidden(S,A) => k1_funct_1(k1_pboole(A),S) = k1_xboole_0)), inference(lemma,[status(thm)],[fc3_pboole,d15_pboole,dt_k1_pboole,t6_boole])).
fof(e4, plain, (! [A,B,C,S] : (((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) & v1_xboole_0(C)) => a_4_0_closure3(A,B,C,S) = k1_xboole_0)), inference(lemma,[status(thm)],[t2_tarski,fraenkel_a_4_0_closure3,t7_boole,fc1_xboole_0])).
fof(e6, plain, (! [A,B,C,S] : (((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) & v1_xboole_0(C) & r2_hidden(S,A)) => k1_funct_1(k2_mboolean(A,k5_closure2(A,B,C)),S) = k1_funct_1(k2_closure3(A,B,C),S))), inference(lemma,[status(thm)],[p4,p5,e1,e3,e4])).
fof(m1, plain, (! [A,B,C,S] : (((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) & r2_hidden(S,A)) => k1_funct_1(k2_mboolean(A,k5_closure2(A,B,C)),S) = k1_funct_1(k2_closure3(A,B,C),S))), inference(lemma,[status(thm)],[n3,e6])).
fof(m2, plain, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => k2_closure3(A,B,C) = k2_mboolean(A,k5_closure2(A,B,C)))), inference(lemma,[status(thm)],[t3_pboole,m1,p2,p3])).
fof(m3, plain, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => r6_pboole(A,k2_closure3(A,B,C),k2_mboolean(A,k5_closure2(A,B,C))))), inference(lemma,[status(thm)],[m2,reflexivity_r6_pboole,p2,p3])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[m3,t10_closure3_neg])).
% SZS output end Refutation for ALG229+4
%------------------------------------------------------------------------------
