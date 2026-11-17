%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : FLD046-1 : TPTP v10.0.0. Bugfixed v2.1.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Unsatisfiable
% Output   : Refutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : SUGGESTED CHANGE: Unknown -> Unsatisfiable (TPTP v10.0.0 status is Unknown; this file is
%            a verified refutation)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: 1/(-a) = -(1/a): (-a)(-(1/a)) = a(1/a) = 1, -a != 0,
%            uniqueness of multiplicative inverses; first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for FLD046-1
% SZS output start Refutation for FLD046-1
cnf(symmetry_of_equality, axiom, (equalish(X,Y) | ~ equalish(Y,X)), file('Problems/FLD/FLD046-1.p',symmetry_of_equality)).
cnf(transitivity_of_equality, axiom, (equalish(X,Z) | ~ equalish(X,Y) | ~ equalish(Y,Z)), file('Problems/FLD/FLD046-1.p',transitivity_of_equality)).
cnf(commutativity_addition, axiom, (equalish(add(X,Y),add(Y,X)) | ~ defined(X) | ~ defined(Y)), file('Problems/FLD/FLD046-1.p',commutativity_addition)).
cnf(compatibility_of_equality_and_addition, axiom, (equalish(add(X,Z),add(Y,Z)) | ~ defined(Z) | ~ equalish(X,Y)), file('Problems/FLD/FLD046-1.p',compatibility_of_equality_and_addition)).
cnf(existence_of_identity_addition, axiom, (equalish(add(additive_identity,X),X) | ~ defined(X)), file('Problems/FLD/FLD046-1.p',existence_of_identity_addition)).
cnf(well_definedness_of_additive_identity, axiom, (defined(additive_identity)), file('Problems/FLD/FLD046-1.p',well_definedness_of_additive_identity)).
cnf(existence_of_inverse_addition, axiom, (equalish(add(X,additive_inverse(X)),additive_identity) | ~ defined(X)), file('Problems/FLD/FLD046-1.p',existence_of_inverse_addition)).
cnf(well_definedness_of_additive_inverse, axiom, (defined(additive_inverse(X)) | ~ defined(X)), file('Problems/FLD/FLD046-1.p',well_definedness_of_additive_inverse)).
cnf(well_definedness_of_addition, axiom, (defined(add(X,Y)) | ~ defined(X) | ~ defined(Y)), file('Problems/FLD/FLD046-1.p',well_definedness_of_addition)).
cnf(associativity_addition, axiom, (equalish(add(X,add(Y,Z)),add(add(X,Y),Z)) | ~ defined(X) | ~ defined(Y) | ~ defined(Z)), file('Problems/FLD/FLD046-1.p',associativity_addition)).
cnf(distributivity, axiom, (equalish(add(multiply(X,Z),multiply(Y,Z)),multiply(add(X,Y),Z)) | ~ defined(X) | ~ defined(Y) | ~ defined(Z)), file('Problems/FLD/FLD046-1.p',distributivity)).
cnf(compatibility_of_equality_and_multiplication, axiom, (equalish(multiply(X,Z),multiply(Y,Z)) | ~ defined(Z) | ~ equalish(X,Y)), file('Problems/FLD/FLD046-1.p',compatibility_of_equality_and_multiplication)).
cnf(well_definedness_of_multiplication, axiom, (defined(multiply(X,Y)) | ~ defined(X) | ~ defined(Y)), file('Problems/FLD/FLD046-1.p',well_definedness_of_multiplication)).
cnf(commutativity_multiplication, axiom, (equalish(multiply(X,Y),multiply(Y,X)) | ~ defined(X) | ~ defined(Y)), file('Problems/FLD/FLD046-1.p',commutativity_multiplication)).
cnf(existence_of_identity_multiplication, axiom, (equalish(multiply(multiplicative_identity,X),X) | ~ defined(X)), file('Problems/FLD/FLD046-1.p',existence_of_identity_multiplication)).
cnf(well_definedness_of_multiplicative_identity, axiom, (defined(multiplicative_identity)), file('Problems/FLD/FLD046-1.p',well_definedness_of_multiplicative_identity)).
cnf(existence_of_inverse_multiplication, axiom, (equalish(multiply(X,multiplicative_inverse(X)),multiplicative_identity) | ~ defined(X) | equalish(X,additive_identity)), file('Problems/FLD/FLD046-1.p',existence_of_inverse_multiplication)).
cnf(well_definedness_of_multiplicative_inverse, axiom, (defined(multiplicative_inverse(X)) | ~ defined(X) | equalish(X,additive_identity)), file('Problems/FLD/FLD046-1.p',well_definedness_of_multiplicative_inverse)).
cnf(associativity_multiplication, axiom, (equalish(multiply(X,multiply(Y,Z)),multiply(multiply(X,Y),Z)) | ~ defined(X) | ~ defined(Y) | ~ defined(Z)), file('Problems/FLD/FLD046-1.p',associativity_multiplication)).
cnf(a_is_defined, hypothesis, (defined(a)), file('Problems/FLD/FLD046-1.p',a_is_defined)).
cnf(a_not_equal_to_additive_identity_2, negated_conjecture, (~ equalish(a,additive_identity)), file('Problems/FLD/FLD046-1.p',a_not_equal_to_additive_identity_2)).
cnf(mult_inverse_not_equal_to_additive_inverse_3, negated_conjecture, (~ equalish(multiplicative_inverse(additive_inverse(a)),additive_inverse(multiplicative_inverse(a)))), file('Problems/FLD/FLD046-1.p',mult_inverse_not_equal_to_additive_inverse_3)).
fof(e_sym, plain, (! [X,Y] : (equalish(X,Y) => equalish(Y,X))), inference(lemma,[status(thm)],[symmetry_of_equality])).
fof(e_tr, plain, (! [X,Y,Z] : ((equalish(X,Y) & equalish(Y,Z)) => equalish(X,Z))), inference(lemma,[status(thm)],[transitivity_of_equality])).
fof(add_r, plain, (! [X,Y,Z] : ((defined(X) & defined(Y) & defined(Z) & equalish(Y,Z)) => equalish(add(X,Y),add(X,Z)))), inference(lemma,[status(thm)],[commutativity_addition,compatibility_of_equality_and_addition,transitivity_of_equality])).
fof(add_0r, plain, (! [X] : (defined(X) => equalish(add(X,additive_identity),X))), inference(lemma,[status(thm)],[commutativity_addition,existence_of_identity_addition,transitivity_of_equality,well_definedness_of_additive_identity])).
fof(c1, plain, (! [X,Y] : ((defined(X) & defined(Y)) => equalish(X,add(X,add(Y,additive_inverse(Y)))))), inference(lemma,[status(thm)],[e_sym,e_tr,add_0r,add_r,existence_of_inverse_addition,well_definedness_of_additive_inverse,well_definedness_of_addition,well_definedness_of_additive_identity])).
fof(c2, plain, (! [X,Y] : ((defined(X) & defined(Y)) => equalish(add(X,add(Y,additive_inverse(Y))),add(add(X,Y),additive_inverse(Y))))), inference(lemma,[status(thm)],[associativity_addition,well_definedness_of_additive_inverse])).
fof(c3, plain, (! [X,Y,W] : ((defined(X) & defined(Y) & equalish(add(X,Y),W)) => equalish(add(add(X,Y),additive_inverse(Y)),add(W,additive_inverse(Y))))), inference(lemma,[status(thm)],[compatibility_of_equality_and_addition,well_definedness_of_additive_inverse])).
fof(uniq, plain, (! [X,Y] : ((defined(X) & defined(Y) & equalish(add(X,Y),additive_identity)) => equalish(X,additive_inverse(Y)))), inference(lemma,[status(thm)],[c1,c2,c3,e_tr,existence_of_identity_addition,well_definedness_of_additive_inverse])).
fof(canc, plain, (! [U] : ((defined(U) & equalish(add(U,U),U)) => equalish(U,additive_identity))), inference(lemma,[status(thm)],[c1,c2,c3,e_tr,existence_of_inverse_addition])).
fof(zero_mul, plain, (! [B] : (defined(B) => equalish(multiply(additive_identity,B),additive_identity))), inference(lemma,[status(thm)],[canc,e_tr,distributivity,existence_of_identity_addition,compatibility_of_equality_and_multiplication,well_definedness_of_multiplication,well_definedness_of_additive_identity])).
fof(inv_l, plain, (! [X] : (defined(X) => equalish(add(additive_inverse(X),X),additive_identity))), inference(lemma,[status(thm)],[commutativity_addition,existence_of_inverse_addition,transitivity_of_equality,well_definedness_of_additive_inverse])).
fof(sum0, plain, (! [A,B] : ((defined(A) & defined(B)) => equalish(add(multiply(additive_inverse(A),B),multiply(A,B)),additive_identity))), inference(lemma,[status(thm)],[distributivity,inv_l,compatibility_of_equality_and_multiplication,zero_mul,e_tr,well_definedness_of_additive_inverse])).
fof(add_cong, plain, (! [X,Y,U,V] : ((defined(X) & defined(Y) & defined(U) & defined(V) & equalish(X,U) & equalish(Y,V)) => equalish(add(X,Y),add(U,V)))), inference(lemma,[status(thm)],[compatibility_of_equality_and_addition,add_r,e_tr])).
fof(sum0b, plain, (! [A,B] : ((defined(A) & defined(B)) => equalish(add(multiply(A,additive_inverse(B)),multiply(A,B)),additive_identity))), inference(lemma,[status(thm)],[sum0,add_cong,commutativity_multiplication,e_tr,well_definedness_of_multiplication,well_definedness_of_additive_inverse])).
fof(s2, plain, (! [A,B] : ((defined(A) & defined(B)) => equalish(add(multiply(A,B),multiply(A,additive_inverse(B))),additive_identity))), inference(lemma,[status(thm)],[sum0b,commutativity_addition,e_tr,well_definedness_of_multiplication,well_definedness_of_additive_inverse])).
fof(mul_nn, plain, (! [A,B] : ((defined(A) & defined(B)) => equalish(multiply(additive_inverse(A),additive_inverse(B)),multiply(A,B)))), inference(lemma,[status(thm)],[sum0,s2,uniq,e_sym,e_tr,well_definedness_of_multiplication,well_definedness_of_additive_inverse])).
fof(mul_r, plain, (! [X,Y,Z] : ((defined(X) & defined(Y) & defined(Z) & equalish(Y,Z)) => equalish(multiply(X,Y),multiply(X,Z)))), inference(lemma,[status(thm)],[commutativity_multiplication,compatibility_of_equality_and_multiplication,transitivity_of_equality])).
fof(mul_1r, plain, (! [X] : (defined(X) => equalish(multiply(X,multiplicative_identity),X))), inference(lemma,[status(thm)],[commutativity_multiplication,existence_of_identity_multiplication,transitivity_of_equality,well_definedness_of_multiplicative_identity])).
fof(inv_l1, plain, (! [X] : ((defined(X) & ~ equalish(X,additive_identity)) => (defined(multiplicative_inverse(X)) & equalish(multiply(multiplicative_inverse(X),X),multiplicative_identity)))), inference(lemma,[status(thm)],[existence_of_inverse_multiplication,well_definedness_of_multiplicative_inverse,commutativity_multiplication,transitivity_of_equality])).
fof(m1, plain, (! [X,Y] : ((defined(X) & defined(Y) & ~ equalish(X,additive_identity)) => equalish(Y,multiply(multiply(multiplicative_inverse(X),X),Y)))), inference(lemma,[status(thm)],[inv_l1,existence_of_identity_multiplication,compatibility_of_equality_and_multiplication,e_sym,e_tr])).
fof(m2, plain, (! [X,Y] : ((defined(X) & defined(Y) & ~ equalish(X,additive_identity)) => equalish(multiply(multiply(multiplicative_inverse(X),X),Y),multiply(multiplicative_inverse(X),multiply(X,Y))))), inference(lemma,[status(thm)],[inv_l1,associativity_multiplication,e_sym])).
fof(m3, plain, (! [X,Y] : ((defined(X) & defined(Y) & ~ equalish(X,additive_identity) & equalish(multiply(X,Y),multiplicative_identity)) => equalish(multiply(multiplicative_inverse(X),multiply(X,Y)),multiplicative_inverse(X)))), inference(lemma,[status(thm)],[inv_l1,mul_r,mul_1r,e_tr,well_definedness_of_multiplication,well_definedness_of_multiplicative_identity])).
fof(muniq, plain, (! [X,Y] : ((defined(X) & defined(Y) & ~ equalish(X,additive_identity) & equalish(multiply(X,Y),multiplicative_identity)) => equalish(Y,multiplicative_inverse(X)))), inference(lemma,[status(thm)],[m1,m2,m3,e_tr])).
fof(neg_nz, plain, (! [A] : ((defined(A) & ~ equalish(A,additive_identity)) => ~ equalish(additive_inverse(A),additive_identity))), inference(lemma,[status(thm)],[existence_of_inverse_addition,add_r,add_0r,e_sym,e_tr,well_definedness_of_additive_inverse,well_definedness_of_additive_identity])).
fof(prod, plain, (! [A] : ((defined(A) & ~ equalish(A,additive_identity)) => equalish(multiply(additive_inverse(A),additive_inverse(multiplicative_inverse(A))),multiplicative_identity))), inference(lemma,[status(thm)],[mul_nn,existence_of_inverse_multiplication,well_definedness_of_multiplicative_inverse,e_tr])).
fof(main, plain, (! [A] : ((defined(A) & ~ equalish(A,additive_identity)) => equalish(multiplicative_inverse(additive_inverse(A)),additive_inverse(multiplicative_inverse(A))))), inference(lemma,[status(thm)],[prod,neg_nz,muniq,e_sym,well_definedness_of_additive_inverse,well_definedness_of_multiplicative_inverse])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[main,a_is_defined,a_not_equal_to_additive_identity_2,mult_inverse_not_equal_to_additive_inverse_3])).
% SZS output end Refutation for FLD046-1
%------------------------------------------------------------------------------
