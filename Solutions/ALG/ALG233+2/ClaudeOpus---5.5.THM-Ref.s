%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : ALG233+2 : TPTP v10.0.0. Released v3.4.0.
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
% SZS status Theorem for ALG233+2
% SZS output start Refutation for ALG233+2
fof(t4_subset, axiom, (! [A,B,C] : ((r2_hidden(A,B) & m1_subset_1(B,k1_zfmisc_1(C))) => m1_subset_1(A,C))), file('Problems/ALG/ALG233+2.p',t4_subset)).
fof(redefinition_m1_closure2, axiom, (! [A,B,C] : ((m1_pboole(B,A) & ~ v1_xboole_0(C) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => (! [D] : (m1_closure2(D,A,B,C) <=> m1_subset_1(D,C))))), file('Problems/ALG/ALG233+2.p',redefinition_m1_closure2)).
fof(redefinition_k6_closure2, axiom, (! [A,B] : (m1_pboole(B,A) => k6_closure2(A,B) = k1_closure2(A,B))), file('Problems/ALG/ALG233+2.p',redefinition_k6_closure2)).
fof(fc2_closure2, axiom, (! [A,B] : (m1_pboole(B,A) => (~ v1_xboole_0(k1_closure2(A,B)) & v1_fraenkel(k1_closure2(A,B)) & v1_pralg_2(k1_closure2(A,B))))), file('Problems/ALG/ALG233+2.p',fc2_closure2)).
fof(dt_k6_closure2, axiom, (! [A,B] : (m1_pboole(B,A) => (v1_closure2(k6_closure2(A,B),A,B) & v2_closure2(k6_closure2(A,B),A,B) & v3_closure2(k6_closure2(A,B),A,B) & v4_closure2(k6_closure2(A,B),A,B) & v5_closure2(k6_closure2(A,B),A,B) & v6_closure2(k6_closure2(A,B),A,B) & m1_subset_1(k6_closure2(A,B),k1_zfmisc_1(k1_closure2(A,B)))))), file('Problems/ALG/ALG233+2.p',dt_k6_closure2)).
fof(fraenkel_a_4_0_closure3, axiom, (! [A,B,C,D,E] : ((m1_pboole(C,B) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(B,C)))) => (r2_hidden(A,a_4_0_closure3(B,C,D,E)) <=> (? [F] : (m1_closure2(F,B,C,k6_closure2(B,C)) & A = k1_funct_1(F,E) & r2_hidden(F,D)))))), file('Problems/ALG/ALG233+2.p',fraenkel_a_4_0_closure3)).
fof(d4_closure3, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B))) => (! [D] : (m4_pboole(D,A,B) => (D = k2_closure3(A,B,C) <=> (! [E] : (r2_hidden(E,A) => k1_funct_1(D,E) = k3_tarski(a_4_0_closure3(A,B,C,E))))))))))), file('Problems/ALG/ALG233+2.p',d4_closure3)).
fof(dt_k2_closure3, axiom, (! [A,B,C] : ((m1_pboole(B,A) & m1_subset_1(C,k1_zfmisc_1(k1_closure2(A,B)))) => m4_pboole(k2_closure3(A,B,C),A,B))), file('Problems/ALG/ALG233+2.p',dt_k2_closure3)).
fof(d4_tarski, axiom, (! [A,B] : (B = k3_tarski(A) <=> (! [C] : (r2_hidden(C,B) <=> (? [D] : (r2_hidden(C,D) & r2_hidden(D,A))))))), file('Problems/ALG/ALG233+2.p',d4_tarski)).
fof(fraenkel_a_3_0_closure3, axiom, (! [A,B,C,D] : (m1_pboole(C,B) => (r2_hidden(A,a_3_0_closure3(B,C,D)) <=> (? [E] : (m1_subset_1(E,k1_zfmisc_1(k1_closure2(B,C))) & A = k2_closure3(B,C,E) & r2_hidden(E,D)))))), file('Problems/ALG/ALG233+2.p',fraenkel_a_3_0_closure3)).
fof(d3_tarski, axiom, (! [A,B] : (r1_tarski(A,B) <=> (! [C] : (r2_hidden(C,A) => r2_hidden(C,B))))), file('Problems/ALG/ALG233+2.p',d3_tarski)).
fof(d5_pboole, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_pboole(C,A) => (r2_pboole(A,B,C) <=> (! [D] : (r2_hidden(D,A) => r1_tarski(k1_funct_1(B,D),k1_funct_1(C,D))))))))), file('Problems/ALG/ALG233+2.p',d5_pboole)).
fof(dt_m4_pboole, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m4_pboole(C,A,B) => m1_pboole(C,A))))), file('Problems/ALG/ALG233+2.p',dt_m4_pboole)).
fof(d13_pboole, axiom, (! [A,B] : (m1_pboole(B,A) => (! [C] : (m1_pboole(C,A) => (r6_pboole(A,B,C) <=> (r2_pboole(A,B,C) & r2_pboole(A,C,B))))))), file('Problems/ALG/ALG233+2.p',d13_pboole)).
fof(t14_closure3, conjecture, (! [A,B] : (m1_pboole(B,A) => (! [C] : ((! [D] : (r2_hidden(D,C) => m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))))) => (! [D] : (m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) => (! [E] : (m1_subset_1(E,k1_zfmisc_1(k1_closure2(A,B))) => ((E = a_3_0_closure3(A,B,C) & D = k3_tarski(C)) => r6_pboole(A,k2_closure3(A,B,E),k2_closure3(A,B,D))))))))))), file('Problems/ALG/ALG233+2.p',t14_closure3)).
fof(t14_closure3_neg, negated_conjecture, ~ ((! [A,B] : (m1_pboole(B,A) => (! [C] : ((! [D] : (r2_hidden(D,C) => m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))))) => (! [D] : (m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) => (! [E] : (m1_subset_1(E,k1_zfmisc_1(k1_closure2(A,B))) => ((E = a_3_0_closure3(A,B,C) & D = k3_tarski(C)) => r6_pboole(A,k2_closure3(A,B,E),k2_closure3(A,B,D)))))))))))), inference(negate_conjecture,[status(cth)],[t14_closure3])).
fof(s1, plain, (! [A,B,Y,F] : ((m1_pboole(B,A) & m1_subset_1(Y,k1_zfmisc_1(k1_closure2(A,B))) & r2_hidden(F,Y)) => m1_closure2(F,A,B,k6_closure2(A,B)))), inference(lemma,[status(thm)],[t4_subset,redefinition_m1_closure2,redefinition_k6_closure2,fc2_closure2,dt_k6_closure2])).
fof(s2, plain, (! [A,B,Y,S,Z] : ((m1_pboole(B,A) & m1_subset_1(Y,k1_zfmisc_1(k1_closure2(A,B)))) => (r2_hidden(Z,a_4_0_closure3(A,B,Y,S)) <=> (? [F] : (r2_hidden(F,Y) & Z = k1_funct_1(F,S)))))), inference(lemma,[status(thm)],[fraenkel_a_4_0_closure3,s1])).
fof(s3, plain, (! [A,B,Y,S] : ((m1_pboole(B,A) & m1_subset_1(Y,k1_zfmisc_1(k1_closure2(A,B))) & r2_hidden(S,A)) => k1_funct_1(k2_closure3(A,B,Y),S) = k3_tarski(a_4_0_closure3(A,B,Y,S)))), inference(lemma,[status(thm)],[d4_closure3,dt_k2_closure3])).
fof(s4, plain, (! [A,B,Y,S,W] : ((m1_pboole(B,A) & m1_subset_1(Y,k1_zfmisc_1(k1_closure2(A,B))) & r2_hidden(S,A)) => (r2_hidden(W,k1_funct_1(k2_closure3(A,B,Y),S)) <=> (? [F] : (r2_hidden(F,Y) & r2_hidden(W,k1_funct_1(F,S))))))), inference(lemma,[status(thm)],[s3,d4_tarski,s2])).
fof(s5, plain, (! [A,B,C,D,E,G] : ((m1_pboole(B,A) & (! [X] : (r2_hidden(X,C) => m1_subset_1(X,k1_zfmisc_1(k1_closure2(A,B))))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(E,k1_zfmisc_1(k1_closure2(A,B))) & E = a_3_0_closure3(A,B,C) & D = k3_tarski(C)) => (r2_hidden(G,E) <=> (? [X] : (r2_hidden(X,C) & G = k2_closure3(A,B,X)))))), inference(lemma,[status(thm)],[fraenkel_a_3_0_closure3])).
fof(s6, plain, (! [A,B,C,D,E,F] : ((m1_pboole(B,A) & (! [X] : (r2_hidden(X,C) => m1_subset_1(X,k1_zfmisc_1(k1_closure2(A,B))))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(E,k1_zfmisc_1(k1_closure2(A,B))) & E = a_3_0_closure3(A,B,C) & D = k3_tarski(C)) => (r2_hidden(F,D) <=> (? [X] : (r2_hidden(F,X) & r2_hidden(X,C)))))), inference(lemma,[status(thm)],[d4_tarski])).
fof(s7a, plain, (! [A,B,C,D,E,S,W] : (((m1_pboole(B,A) & (! [X] : (r2_hidden(X,C) => m1_subset_1(X,k1_zfmisc_1(k1_closure2(A,B))))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(E,k1_zfmisc_1(k1_closure2(A,B))) & E = a_3_0_closure3(A,B,C) & D = k3_tarski(C)) & r2_hidden(S,A)) => (r2_hidden(W,k1_funct_1(k2_closure3(A,B,E),S)) <=> (? [X,F] : (r2_hidden(X,C) & r2_hidden(F,X) & r2_hidden(W,k1_funct_1(F,S))))))), inference(lemma,[status(thm)],[s4,s5])).
fof(s7b, plain, (! [A,B,C,D,E,S,W] : (((m1_pboole(B,A) & (! [X] : (r2_hidden(X,C) => m1_subset_1(X,k1_zfmisc_1(k1_closure2(A,B))))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(E,k1_zfmisc_1(k1_closure2(A,B))) & E = a_3_0_closure3(A,B,C) & D = k3_tarski(C)) & r2_hidden(S,A)) => (r2_hidden(W,k1_funct_1(k2_closure3(A,B,D),S)) <=> (? [X,F] : (r2_hidden(X,C) & r2_hidden(F,X) & r2_hidden(W,k1_funct_1(F,S))))))), inference(lemma,[status(thm)],[s4,s6])).
fof(s8, plain, (! [A,B,C,D,E,S] : (((m1_pboole(B,A) & (! [X] : (r2_hidden(X,C) => m1_subset_1(X,k1_zfmisc_1(k1_closure2(A,B))))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(E,k1_zfmisc_1(k1_closure2(A,B))) & E = a_3_0_closure3(A,B,C) & D = k3_tarski(C)) & r2_hidden(S,A)) => (r1_tarski(k1_funct_1(k2_closure3(A,B,E),S),k1_funct_1(k2_closure3(A,B,D),S)) & r1_tarski(k1_funct_1(k2_closure3(A,B,D),S),k1_funct_1(k2_closure3(A,B,E),S))))), inference(lemma,[status(thm)],[d3_tarski,s7a,s7b])).
fof(s9, plain, (! [A,B,C,D,E] : ((m1_pboole(B,A) & (! [X] : (r2_hidden(X,C) => m1_subset_1(X,k1_zfmisc_1(k1_closure2(A,B))))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(E,k1_zfmisc_1(k1_closure2(A,B))) & E = a_3_0_closure3(A,B,C) & D = k3_tarski(C)) => (r2_pboole(A,k2_closure3(A,B,E),k2_closure3(A,B,D)) & r2_pboole(A,k2_closure3(A,B,D),k2_closure3(A,B,E))))), inference(lemma,[status(thm)],[d5_pboole,s8,dt_k2_closure3,dt_m4_pboole])).
fof(s10, plain, (! [A,B,C,D,E] : ((m1_pboole(B,A) & (! [X] : (r2_hidden(X,C) => m1_subset_1(X,k1_zfmisc_1(k1_closure2(A,B))))) & m1_subset_1(D,k1_zfmisc_1(k1_closure2(A,B))) & m1_subset_1(E,k1_zfmisc_1(k1_closure2(A,B))) & E = a_3_0_closure3(A,B,C) & D = k3_tarski(C)) => r6_pboole(A,k2_closure3(A,B,E),k2_closure3(A,B,D)))), inference(lemma,[status(thm)],[d13_pboole,s9,dt_k2_closure3,dt_m4_pboole])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[s10,t14_closure3_neg])).
% SZS output end Refutation for ALG233+2
%------------------------------------------------------------------------------
