%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SYN986+1.006 : TPTP v10.0.0. Released v4.0.0.
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
%            specific calculus rule). Notes: Orevkov size 6; same generator
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SYN986+1.006
% SZS output start Refutation for SYN986+1.006
fof(hyp2, axiom, (! [Y,X,Z,Z1] : (r(Y,X,Z) => (r(Z,X,Z1) => r(Y,succ(X),Z1)))), file('Problems/SYN/SYN986+1.006.p',hyp2)).
fof(hyp1, axiom, (! [Y] : r(Y,zero,succ(Y))), file('Problems/SYN/SYN986+1.006.p',hyp1)).
fof(ck, conjecture, (? [Z6,Z5,Z4,Z3,Z2,Z1,Z0] : (r(zero,zero,Z6) & r(zero,Z6,Z5) & r(zero,Z5,Z4) & r(zero,Z4,Z3) & r(zero,Z3,Z2) & r(zero,Z2,Z1) & r(zero,Z1,Z0))), file('Problems/SYN/SYN986+1.006.p',ck)).
fof(ck_neg, negated_conjecture, ~ ((? [Z6,Z5,Z4,Z3,Z2,Z1,Z0] : (r(zero,zero,Z6) & r(zero,Z6,Z5) & r(zero,Z5,Z4) & r(zero,Z4,Z3) & r(zero,Z3,Z2) & r(zero,Z2,Z1) & r(zero,Z1,Z0)))), inference(negate_conjecture,[status(cth)],[ck])).
fof(def_g0, definition, (! [X] : (g0(X) <=> (! [Y] : (? [Z] : r(Y,X,Z))))), introduced(definition,[new_symbols(definition,[g0])],[])).
fof(def_g1, definition, (! [X] : (g1(X) <=> (! [Y] : (g0(Y) => (? [Z] : (r(Y,X,Z) & g0(Z))))))), introduced(definition,[new_symbols(definition,[g1])],[])).
fof(def_g2, definition, (! [X] : (g2(X) <=> (! [Y] : (g1(Y) => (? [Z] : (r(Y,X,Z) & g1(Z))))))), introduced(definition,[new_symbols(definition,[g2])],[])).
fof(def_g3, definition, (! [X] : (g3(X) <=> (! [Y] : (g2(Y) => (? [Z] : (r(Y,X,Z) & g2(Z))))))), introduced(definition,[new_symbols(definition,[g3])],[])).
fof(def_g4, definition, (! [X] : (g4(X) <=> (! [Y] : (g3(Y) => (? [Z] : (r(Y,X,Z) & g3(Z))))))), introduced(definition,[new_symbols(definition,[g4])],[])).
fof(def_g5, definition, (! [X] : (g5(X) <=> (! [Y] : (g4(Y) => (? [Z] : (r(Y,X,Z) & g4(Z))))))), introduced(definition,[new_symbols(definition,[g5])],[])).
fof(close_0, plain, (! [X] : (g0(X) => g0(succ(X)))), inference(lemma,[status(thm)],[hyp2,def_g0])).
fof(close_1, plain, (! [X] : (g1(X) => g1(succ(X)))), inference(lemma,[status(thm)],[hyp2,def_g1])).
fof(close_2, plain, (! [X] : (g2(X) => g2(succ(X)))), inference(lemma,[status(thm)],[hyp2,def_g2])).
fof(close_3, plain, (! [X] : (g3(X) => g3(succ(X)))), inference(lemma,[status(thm)],[hyp2,def_g3])).
fof(close_4, plain, (! [X] : (g4(X) => g4(succ(X)))), inference(lemma,[status(thm)],[hyp2,def_g4])).
fof(close_5, plain, (! [X] : (g5(X) => g5(succ(X)))), inference(lemma,[status(thm)],[hyp2,def_g5])).
fof(zero_0, plain, g0(zero), inference(lemma,[status(thm)],[hyp1,def_g0])).
fof(zero_1, plain, g1(zero), inference(lemma,[status(thm)],[hyp1,def_g1,close_0])).
fof(zero_2, plain, g2(zero), inference(lemma,[status(thm)],[hyp1,def_g2,close_1])).
fof(zero_3, plain, g3(zero), inference(lemma,[status(thm)],[hyp1,def_g3,close_2])).
fof(zero_4, plain, g4(zero), inference(lemma,[status(thm)],[hyp1,def_g4,close_3])).
fof(zero_5, plain, g5(zero), inference(lemma,[status(thm)],[hyp1,def_g5,close_4])).
fof(one_5, plain, g5(succ(zero)), inference(lemma,[status(thm)],[zero_5,close_5])).
fof(chain_5, plain, (? [V5] : (r(zero,succ(zero),V5) & g4(V5))), inference(lemma,[status(thm)],[one_5,def_g5,zero_4])).
fof(chain_4, plain, (? [V5,V4] : (r(zero,succ(zero),V5) & r(zero,V5,V4) & g3(V4))), inference(lemma,[status(thm)],[chain_5,def_g4,zero_3])).
fof(chain_3, plain, (? [V5,V4,V3] : (r(zero,succ(zero),V5) & r(zero,V5,V4) & r(zero,V4,V3) & g2(V3))), inference(lemma,[status(thm)],[chain_4,def_g3,zero_2])).
fof(chain_2, plain, (? [V5,V4,V3,V2] : (r(zero,succ(zero),V5) & r(zero,V5,V4) & r(zero,V4,V3) & r(zero,V3,V2) & g1(V2))), inference(lemma,[status(thm)],[chain_3,def_g2,zero_1])).
fof(chain_1, plain, (? [V5,V4,V3,V2,V1] : (r(zero,succ(zero),V5) & r(zero,V5,V4) & r(zero,V4,V3) & r(zero,V3,V2) & r(zero,V2,V1) & g0(V1))), inference(lemma,[status(thm)],[chain_2,def_g1,zero_0])).
fof(chain_0, plain, (? [V5,V4,V3,V2,V1,V0] : (r(zero,succ(zero),V5) & r(zero,V5,V4) & r(zero,V4,V3) & r(zero,V3,V2) & r(zero,V2,V1) & r(zero,V1,V0))), inference(lemma,[status(thm)],[chain_1,def_g0])).
fof(done, plain, $false, inference(lemma,[status(thm)],[chain_0,ck_neg,hyp1])).
% SZS output end Refutation for SYN986+1.006
%------------------------------------------------------------------------------
