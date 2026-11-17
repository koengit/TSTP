%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SYN986-10.005 : TPTP v10.0.0. Released v7.3.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Unsatisfiable
% Output   : Refutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : agrees with TPTP v10.0.0 (Unsatisfiable)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: UEQ encoding; same generator
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for SYN986-10.005
% SZS output start Refutation for SYN986-10.005
cnf(hyp2, axiom, (ifeq(r(Z,X,Z1),true,ifeq(r(Y,X,Z),true,r(Y,succ(X),Z1),true),true) = true), file('Problems/SYN/SYN986-10.005.p',hyp2)).
cnf(ifeq_axiom, axiom, (ifeq(A,A,B,C) = B), file('Problems/SYN/SYN986-10.005.p',ifeq_axiom)).
cnf(hyp1, axiom, (r(Y,zero,succ(Y)) = true), file('Problems/SYN/SYN986-10.005.p',hyp1)).
cnf(ck, negated_conjecture, (tuple(r(zero,Z5,Z4),r(zero,Z4,Z3),r(zero,Z3,Z2),r(zero,Z2,Z1),r(zero,Z1,Z0),r(zero,zero,Z5)) != tuple(true,true,true,true,true,true)), file('Problems/SYN/SYN986-10.005.p',ck)).
fof(def_g0, definition, (! [X] : (g0(X) <=> (! [Y] : (? [Z] : r(Y,X,Z) = true)))), introduced(definition,[new_symbols(definition,[g0])],[])).
fof(def_g1, definition, (! [X] : (g1(X) <=> (! [Y] : (g0(Y) => (? [Z] : (r(Y,X,Z) = true & g0(Z))))))), introduced(definition,[new_symbols(definition,[g1])],[])).
fof(def_g2, definition, (! [X] : (g2(X) <=> (! [Y] : (g1(Y) => (? [Z] : (r(Y,X,Z) = true & g1(Z))))))), introduced(definition,[new_symbols(definition,[g2])],[])).
fof(def_g3, definition, (! [X] : (g3(X) <=> (! [Y] : (g2(Y) => (? [Z] : (r(Y,X,Z) = true & g2(Z))))))), introduced(definition,[new_symbols(definition,[g3])],[])).
fof(def_g4, definition, (! [X] : (g4(X) <=> (! [Y] : (g3(Y) => (? [Z] : (r(Y,X,Z) = true & g3(Z))))))), introduced(definition,[new_symbols(definition,[g4])],[])).
fof(close_0, plain, (! [X] : (g0(X) => g0(succ(X)))), inference(lemma,[status(thm)],[hyp2,ifeq_axiom,def_g0])).
fof(close_1, plain, (! [X] : (g1(X) => g1(succ(X)))), inference(lemma,[status(thm)],[hyp2,ifeq_axiom,def_g1])).
fof(close_2, plain, (! [X] : (g2(X) => g2(succ(X)))), inference(lemma,[status(thm)],[hyp2,ifeq_axiom,def_g2])).
fof(close_3, plain, (! [X] : (g3(X) => g3(succ(X)))), inference(lemma,[status(thm)],[hyp2,ifeq_axiom,def_g3])).
fof(close_4, plain, (! [X] : (g4(X) => g4(succ(X)))), inference(lemma,[status(thm)],[hyp2,ifeq_axiom,def_g4])).
fof(zero_0, plain, g0(zero), inference(lemma,[status(thm)],[hyp1,def_g0])).
fof(zero_1, plain, g1(zero), inference(lemma,[status(thm)],[hyp1,def_g1,close_0])).
fof(zero_2, plain, g2(zero), inference(lemma,[status(thm)],[hyp1,def_g2,close_1])).
fof(zero_3, plain, g3(zero), inference(lemma,[status(thm)],[hyp1,def_g3,close_2])).
fof(zero_4, plain, g4(zero), inference(lemma,[status(thm)],[hyp1,def_g4,close_3])).
fof(one_4, plain, g4(succ(zero)), inference(lemma,[status(thm)],[zero_4,close_4])).
fof(chain_4, plain, (? [V4] : (r(zero,succ(zero),V4) = true & g3(V4))), inference(lemma,[status(thm)],[one_4,def_g4,zero_3])).
fof(chain_3, plain, (? [V4,V3] : (r(zero,succ(zero),V4) = true & r(zero,V4,V3) = true & g2(V3))), inference(lemma,[status(thm)],[chain_4,def_g3,zero_2])).
fof(chain_2, plain, (? [V4,V3,V2] : (r(zero,succ(zero),V4) = true & r(zero,V4,V3) = true & r(zero,V3,V2) = true & g1(V2))), inference(lemma,[status(thm)],[chain_3,def_g2,zero_1])).
fof(chain_1, plain, (? [V4,V3,V2,V1] : (r(zero,succ(zero),V4) = true & r(zero,V4,V3) = true & r(zero,V3,V2) = true & r(zero,V2,V1) = true & g0(V1))), inference(lemma,[status(thm)],[chain_2,def_g1,zero_0])).
fof(chain_0, plain, (? [V4,V3,V2,V1,V0] : (r(zero,succ(zero),V4) = true & r(zero,V4,V3) = true & r(zero,V3,V2) = true & r(zero,V2,V1) = true & r(zero,V1,V0) = true)), inference(lemma,[status(thm)],[chain_1,def_g0])).
fof(done, plain, $false, inference(lemma,[status(thm)],[chain_0,ck,hyp1,ifeq_axiom])).
% SZS output end Refutation for SYN986-10.005
%------------------------------------------------------------------------------
