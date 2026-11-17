%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : FLD086-1 : TPTP v10.0.0. Bugfixed v2.1.0.
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
%            specific calculus rule). Notes: a > 0 => 0 <= 1/a; library + 1-3 steps
%            (attempts/FLD/steps/FLD086-1.p), first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for FLD086-1
% SZS output start Refutation for FLD086-1
cnf(symmetry_of_equality, axiom, (equalish(X,Y) | ~ equalish(Y,X)), file('Problems/FLD/FLD086-1.p',symmetry_of_equality)).
cnf(transitivity_of_equality, axiom, (equalish(X,Z) | ~ equalish(X,Y) | ~ equalish(Y,Z)), file('Problems/FLD/FLD086-1.p',transitivity_of_equality)).
cnf(commutativity_addition, axiom, (equalish(add(X,Y),add(Y,X)) | ~ defined(X) | ~ defined(Y)), file('Problems/FLD/FLD086-1.p',commutativity_addition)).
cnf(compatibility_of_equality_and_addition, axiom, (equalish(add(X,Z),add(Y,Z)) | ~ defined(Z) | ~ equalish(X,Y)), file('Problems/FLD/FLD086-1.p',compatibility_of_equality_and_addition)).
cnf(existence_of_identity_addition, axiom, (equalish(add(additive_identity,X),X) | ~ defined(X)), file('Problems/FLD/FLD086-1.p',existence_of_identity_addition)).
cnf(well_definedness_of_additive_identity, axiom, (defined(additive_identity)), file('Problems/FLD/FLD086-1.p',well_definedness_of_additive_identity)).
cnf(existence_of_inverse_addition, axiom, (equalish(add(X,additive_inverse(X)),additive_identity) | ~ defined(X)), file('Problems/FLD/FLD086-1.p',existence_of_inverse_addition)).
cnf(well_definedness_of_additive_inverse, axiom, (defined(additive_inverse(X)) | ~ defined(X)), file('Problems/FLD/FLD086-1.p',well_definedness_of_additive_inverse)).
cnf(well_definedness_of_addition, axiom, (defined(add(X,Y)) | ~ defined(X) | ~ defined(Y)), file('Problems/FLD/FLD086-1.p',well_definedness_of_addition)).
cnf(associativity_addition, axiom, (equalish(add(X,add(Y,Z)),add(add(X,Y),Z)) | ~ defined(X) | ~ defined(Y) | ~ defined(Z)), file('Problems/FLD/FLD086-1.p',associativity_addition)).
cnf(distributivity, axiom, (equalish(add(multiply(X,Z),multiply(Y,Z)),multiply(add(X,Y),Z)) | ~ defined(X) | ~ defined(Y) | ~ defined(Z)), file('Problems/FLD/FLD086-1.p',distributivity)).
cnf(compatibility_of_equality_and_multiplication, axiom, (equalish(multiply(X,Z),multiply(Y,Z)) | ~ defined(Z) | ~ equalish(X,Y)), file('Problems/FLD/FLD086-1.p',compatibility_of_equality_and_multiplication)).
cnf(well_definedness_of_multiplication, axiom, (defined(multiply(X,Y)) | ~ defined(X) | ~ defined(Y)), file('Problems/FLD/FLD086-1.p',well_definedness_of_multiplication)).
cnf(commutativity_multiplication, axiom, (equalish(multiply(X,Y),multiply(Y,X)) | ~ defined(X) | ~ defined(Y)), file('Problems/FLD/FLD086-1.p',commutativity_multiplication)).
cnf(totality_of_order_relation, axiom, (less_or_equal(X,Y) | less_or_equal(Y,X) | ~ defined(X) | ~ defined(Y)), file('Problems/FLD/FLD086-1.p',totality_of_order_relation)).
cnf(compatibility_of_equality_and_order_relation, axiom, (less_or_equal(Y,Z) | ~ less_or_equal(X,Z) | ~ equalish(X,Y)), file('Problems/FLD/FLD086-1.p',compatibility_of_equality_and_order_relation)).
cnf(transitivity_of_order_relation, axiom, (less_or_equal(X,Z) | ~ less_or_equal(X,Y) | ~ less_or_equal(Y,Z)), file('Problems/FLD/FLD086-1.p',transitivity_of_order_relation)).
cnf(compatibility_of_order_relation_and_addition, axiom, (less_or_equal(add(X,Z),add(Y,Z)) | ~ defined(Z) | ~ less_or_equal(X,Y)), file('Problems/FLD/FLD086-1.p',compatibility_of_order_relation_and_addition)).
cnf(well_definedness_of_multiplicative_inverse, axiom, (defined(multiplicative_inverse(X)) | ~ defined(X) | equalish(X,additive_identity)), file('Problems/FLD/FLD086-1.p',well_definedness_of_multiplicative_inverse)).
cnf(well_definedness_of_multiplicative_identity, axiom, (defined(multiplicative_identity)), file('Problems/FLD/FLD086-1.p',well_definedness_of_multiplicative_identity)).
cnf(compatibility_of_order_relation_and_multiplication, axiom, (less_or_equal(additive_identity,multiply(Y,Z)) | ~ less_or_equal(additive_identity,Y) | ~ less_or_equal(additive_identity,Z)), file('Problems/FLD/FLD086-1.p',compatibility_of_order_relation_and_multiplication)).
cnf(existence_of_identity_multiplication, axiom, (equalish(multiply(multiplicative_identity,X),X) | ~ defined(X)), file('Problems/FLD/FLD086-1.p',existence_of_identity_multiplication)).
cnf(existence_of_inverse_multiplication, axiom, (equalish(multiply(X,multiplicative_inverse(X)),multiplicative_identity) | ~ defined(X) | equalish(X,additive_identity)), file('Problems/FLD/FLD086-1.p',existence_of_inverse_multiplication)).
cnf(antisymmetry_of_order_relation, axiom, (equalish(X,Y) | ~ less_or_equal(X,Y) | ~ less_or_equal(Y,X)), file('Problems/FLD/FLD086-1.p',antisymmetry_of_order_relation)).
cnf(different_identities, axiom, (~ equalish(additive_identity,multiplicative_identity)), file('Problems/FLD/FLD086-1.p',different_identities)).
cnf(a_is_defined, hypothesis, (defined(a)), file('Problems/FLD/FLD086-1.p',a_is_defined)).
cnf(a_not_equal_to_additive_identity_2, negated_conjecture, (~ equalish(a,additive_identity)), file('Problems/FLD/FLD086-1.p',a_not_equal_to_additive_identity_2)).
cnf(less_or_equal_3, negated_conjecture, (less_or_equal(additive_identity,a)), file('Problems/FLD/FLD086-1.p',less_or_equal_3)).
cnf(not_less_or_equal_4, negated_conjecture, (~ less_or_equal(additive_identity,multiplicative_inverse(a))), file('Problems/FLD/FLD086-1.p',not_less_or_equal_4)).
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
fof(neg_mul, plain, (! [A,B] : ((defined(A) & defined(B)) => equalish(multiply(additive_inverse(A),B),additive_inverse(multiply(A,B))))), inference(lemma,[status(thm)],[sum0,uniq,well_definedness_of_multiplication,well_definedness_of_additive_inverse])).
fof(neg_cong, plain, (! [X,Y] : ((defined(X) & defined(Y) & equalish(X,Y)) => equalish(additive_inverse(X),additive_inverse(Y)))), inference(lemma,[status(thm)],[uniq,inv_l,add_r,e_sym,e_tr,well_definedness_of_additive_inverse])).
fof(le_refl, plain, (! [X] : (defined(X) => less_or_equal(X,X))), inference(lemma,[status(thm)],[totality_of_order_relation])).
fof(le_eq, plain, (! [X,Y] : ((defined(X) & defined(Y) & equalish(X,Y)) => less_or_equal(X,Y))), inference(lemma,[status(thm)],[le_refl,compatibility_of_equality_and_order_relation,e_sym])).
fof(le_r, plain, (! [X,Y,Z] : ((defined(X) & defined(Y) & less_or_equal(Z,X) & equalish(X,Y)) => less_or_equal(Z,Y))), inference(lemma,[status(thm)],[le_eq,transitivity_of_order_relation])).
fof(sub_pos, plain, (! [A,B] : ((defined(A) & defined(B) & less_or_equal(A,B)) => less_or_equal(additive_identity,add(B,additive_inverse(A))))), inference(lemma,[status(thm)],[compatibility_of_order_relation_and_addition,existence_of_inverse_addition,compatibility_of_equality_and_order_relation,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity])).
fof(ps1, plain, (! [A,B] : ((defined(A) & defined(B)) => equalish(add(add(B,additive_inverse(A)),A),B))), inference(lemma,[status(thm)],[associativity_addition,inv_l,add_r,add_0r,e_sym,e_tr,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity])).
fof(pos_sub, plain, (! [A,B] : ((defined(A) & defined(B) & less_or_equal(additive_identity,add(B,additive_inverse(A)))) => less_or_equal(A,B))), inference(lemma,[status(thm)],[compatibility_of_order_relation_and_addition,existence_of_identity_addition,compatibility_of_equality_and_order_relation,ps1,le_r,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity])).
fof(mneg, plain, (! [A,C] : ((defined(A) & defined(C)) => equalish(multiply(A,additive_inverse(C)),additive_inverse(multiply(A,C))))), inference(lemma,[status(thm)],[commutativity_multiplication,neg_mul,neg_cong,e_tr,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity,well_definedness_of_multiplicative_identity])).
fof(neg_pos, plain, (! [A] : ((defined(A) & less_or_equal(A,additive_identity)) => less_or_equal(additive_identity,additive_inverse(A)))), inference(lemma,[status(thm)],[sub_pos,existence_of_identity_addition,le_r,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity,well_definedness_of_multiplicative_identity])).
fof(sq, plain, (! [A] : (defined(A) => less_or_equal(additive_identity,multiply(A,A)))), inference(lemma,[status(thm)],[totality_of_order_relation,compatibility_of_order_relation_and_multiplication,neg_pos,mul_nn,le_r,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity,well_definedness_of_multiplicative_identity])).
fof(one_pos, plain, less_or_equal(additive_identity,multiplicative_identity), inference(lemma,[status(thm)],[sq,existence_of_identity_multiplication,le_r,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity,well_definedness_of_multiplicative_identity])).
fof(pi1, plain, (! [X] : ((defined(X) & less_or_equal(additive_identity,X) & ~ equalish(X,additive_identity) & less_or_equal(multiplicative_inverse(X),additive_identity)) => less_or_equal(additive_identity,multiply(X,additive_inverse(multiplicative_inverse(X)))))), inference(lemma,[status(thm)],[neg_pos,compatibility_of_order_relation_and_multiplication,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity,well_definedness_of_multiplicative_identity])).
fof(pi2, plain, (! [X] : ((defined(X) & less_or_equal(additive_identity,X) & ~ equalish(X,additive_identity) & less_or_equal(multiplicative_inverse(X),additive_identity)) => less_or_equal(additive_identity,additive_inverse(multiplicative_identity)))), inference(lemma,[status(thm)],[pi1,mneg,neg_cong,existence_of_inverse_multiplication,le_r,e_tr,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity,well_definedness_of_multiplicative_identity])).
fof(pi3a, plain, less_or_equal(additive_inverse(multiplicative_identity),add(additive_identity,additive_inverse(multiplicative_identity))), inference(lemma,[status(thm)],[le_eq,existence_of_identity_addition,e_sym,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity,well_definedness_of_multiplicative_identity])).
fof(pi3b, plain, (! [X] : ((defined(X) & less_or_equal(additive_identity,X) & ~ equalish(X,additive_identity) & less_or_equal(multiplicative_inverse(X),additive_identity)) => less_or_equal(additive_identity,add(additive_identity,additive_inverse(multiplicative_identity))))), inference(lemma,[status(thm)],[pi2,pi3a,transitivity_of_order_relation])).
fof(pi3, plain, (! [X] : ((defined(X) & less_or_equal(additive_identity,X) & ~ equalish(X,additive_identity) & less_or_equal(multiplicative_inverse(X),additive_identity)) => less_or_equal(multiplicative_identity,additive_identity))), inference(lemma,[status(thm)],[pi3b,pos_sub,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity,well_definedness_of_multiplicative_identity])).
fof(pos_inv, plain, (! [X] : ((defined(X) & less_or_equal(additive_identity,X) & ~ equalish(X,additive_identity)) => less_or_equal(additive_identity,multiplicative_inverse(X)))), inference(lemma,[status(thm)],[totality_of_order_relation,pi3,one_pos,antisymmetry_of_order_relation,different_identities,e_sym,well_definedness_of_multiplication,well_definedness_of_multiplicative_inverse,well_definedness_of_addition,well_definedness_of_additive_inverse,well_definedness_of_additive_identity,well_definedness_of_multiplicative_identity])).
fof(main, plain, (! [A] : ((defined(A) & ~ equalish(A,additive_identity) & less_or_equal(additive_identity,A)) => less_or_equal(additive_identity,multiplicative_inverse(A)))), inference(lemma,[status(thm)],[pos_inv])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[main,a_is_defined,a_not_equal_to_additive_identity_2,less_or_equal_3,not_less_or_equal_4])).
% SZS output end Refutation for FLD086-1
%------------------------------------------------------------------------------
