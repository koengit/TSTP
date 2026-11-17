%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : RNG010-5 : TPTP v10.0.0. Bugfixed v2.3.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : SUGGESTED CHANGE: Unknown -> Unsatisfiable (TPTP v10.0.0 status is Unknown; this file is
%            a verified cnfrefutation)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: same proof, axiom names renamed (inline axioms)
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for RNG010-5
% SZS output start CNFRefutation for RNG010-5
cnf(commutative_addition, axiom, (add(X,Y) = add(Y,X)), file('Problems/RNG/RNG010-5.p',commutative_addition)).
cnf(associative_addition, axiom, (add(add(X,Y),Z) = add(X,add(Y,Z))), file('Problems/RNG/RNG010-5.p',associative_addition)).
cnf(left_identity, axiom, (add(additive_identity,X) = X), file('Problems/RNG/RNG010-5.p',left_identity)).
cnf(right_identity, axiom, (add(X,additive_identity) = X), file('Problems/RNG/RNG010-5.p',right_identity)).
cnf(left_additive_inverse, axiom, (add(additive_inverse(X),X) = additive_identity), file('Problems/RNG/RNG010-5.p',left_additive_inverse)).
cnf(right_additive_inverse, axiom, (add(X,additive_inverse(X)) = additive_identity), file('Problems/RNG/RNG010-5.p',right_additive_inverse)).
cnf(additive_inverse_additive_inverse, axiom, (additive_inverse(additive_inverse(X)) = X), file('Problems/RNG/RNG010-5.p',additive_inverse_additive_inverse)).
cnf(multiply_additive_id2, axiom, (multiply(additive_identity,X) = additive_identity), file('Problems/RNG/RNG010-5.p',multiply_additive_id2)).
cnf(multiply_additive_id1, axiom, (multiply(X,additive_identity) = additive_identity), file('Problems/RNG/RNG010-5.p',multiply_additive_id1)).
cnf(distribute1, axiom, (multiply(X,add(Y,Z)) = add(multiply(X,Y),multiply(X,Z))), file('Problems/RNG/RNG010-5.p',distribute1)).
cnf(distribute2, axiom, (multiply(add(X,Y),Z) = add(multiply(X,Z),multiply(Y,Z))), file('Problems/RNG/RNG010-5.p',distribute2)).
cnf(right_alternative, axiom, (multiply(multiply(X,Y),Y) = multiply(X,multiply(Y,Y))), file('Problems/RNG/RNG010-5.p',right_alternative)).
cnf(left_alternative, axiom, (multiply(multiply(X,X),Y) = multiply(X,multiply(X,Y))), file('Problems/RNG/RNG010-5.p',left_alternative)).
cnf(associator, axiom, (associator(X,Y,Z) = add(multiply(multiply(X,Y),Z),additive_inverse(multiply(X,multiply(Y,Z))))), file('Problems/RNG/RNG010-5.p',associator)).
cnf(right_moufang, hypothesis, (multiply(Z,multiply(X,multiply(Y,X))) = multiply(multiply(multiply(Z,X),Y),X)), file('Problems/RNG/RNG010-5.p',right_moufang)).
cnf(defines_s, axiom, (s(W,X,Y,Z) = add(add(associator(multiply(W,X),Y,Z),additive_inverse(multiply(X,associator(W,Y,Z)))),additive_inverse(multiply(associator(X,Y,Z),W)))), file('Problems/RNG/RNG010-5.p',defines_s)).
cnf(prove_skew_symmetry, negated_conjecture, (s(a,b,c,d) != additive_inverse(s(b,a,c,d))), file('Problems/RNG/RNG010-5.p',prove_skew_symmetry)).
cnf(neg_add, plain, (additive_inverse(add(X,Y)) = add(additive_inverse(X),additive_inverse(Y))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_identity,right_identity,left_additive_inverse,right_additive_inverse,additive_inverse_additive_inverse,multiply_additive_id2,multiply_additive_id1,distribute1,distribute2,right_alternative,left_alternative,associator])).
cnf(mul_neg_r, plain, (multiply(X,additive_inverse(Y)) = additive_inverse(multiply(X,Y))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_identity,right_identity,left_additive_inverse,right_additive_inverse,additive_inverse_additive_inverse,multiply_additive_id2,multiply_additive_id1,distribute1,distribute2,right_alternative,left_alternative,associator,neg_add])).
cnf(mul_neg_l, plain, (multiply(additive_inverse(X),Y) = additive_inverse(multiply(X,Y))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_identity,right_identity,left_additive_inverse,right_additive_inverse,additive_inverse_additive_inverse,multiply_additive_id2,multiply_additive_id1,distribute1,distribute2,right_alternative,left_alternative,associator,neg_add])).
cnf(as_add1, plain, (associator(add(X1,X2),Y,Z) = add(associator(X1,Y,Z),associator(X2,Y,Z))), inference(lemma,[status(thm)],[associator,distribute1,distribute2,commutative_addition,associative_addition,neg_add,mul_neg_l,mul_neg_r,left_additive_inverse,right_additive_inverse,left_identity,right_identity,additive_inverse_additive_inverse])).
cnf(as_add2, plain, (associator(X,add(Y1,Y2),Z) = add(associator(X,Y1,Z),associator(X,Y2,Z))), inference(lemma,[status(thm)],[associator,distribute1,distribute2,commutative_addition,associative_addition,neg_add,mul_neg_l,mul_neg_r,left_additive_inverse,right_additive_inverse,left_identity,right_identity,additive_inverse_additive_inverse])).
cnf(as_add3, plain, (associator(X,Y,add(Z1,Z2)) = add(associator(X,Y,Z1),associator(X,Y,Z2))), inference(lemma,[status(thm)],[associator,distribute1,distribute2,commutative_addition,associative_addition,neg_add,mul_neg_l,mul_neg_r,left_additive_inverse,right_additive_inverse,left_identity,right_identity,additive_inverse_additive_inverse])).
cnf(as_xxy, plain, (associator(X,X,Y) = additive_identity), inference(lemma,[status(thm)],[associator,distribute1,distribute2,commutative_addition,associative_addition,neg_add,mul_neg_l,mul_neg_r,left_additive_inverse,right_additive_inverse,left_identity,right_identity,additive_inverse_additive_inverse,left_alternative])).
cnf(as_xyy, plain, (associator(X,Y,Y) = additive_identity), inference(lemma,[status(thm)],[associator,distribute1,distribute2,commutative_addition,associative_addition,neg_add,mul_neg_l,mul_neg_r,left_additive_inverse,right_additive_inverse,left_identity,right_identity,additive_inverse_additive_inverse,right_alternative])).
cnf(as_skew12, plain, (associator(Y,X,Z) = additive_inverse(associator(X,Y,Z))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,neg_add,additive_inverse_additive_inverse,as_add1,as_add2,as_xxy,multiply_additive_id2,multiply_additive_id1,associator])).
cnf(as_skew23, plain, (associator(X,Z,Y) = additive_inverse(associator(X,Y,Z))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,neg_add,additive_inverse_additive_inverse,as_add2,as_add3,as_xyy,multiply_additive_id2,multiply_additive_id1,associator])).
cnf(teich, plain, (add(associator(multiply(W,X),Y,Z),associator(W,X,multiply(Y,Z))) = add(add(associator(W,multiply(X,Y),Z),multiply(W,associator(X,Y,Z))),multiply(associator(W,X,Y),Z))), inference(lemma,[status(thm)],[associator,distribute1,distribute2,commutative_addition,associative_addition,neg_add,mul_neg_l,mul_neg_r,left_additive_inverse,right_additive_inverse,left_identity,right_identity,additive_inverse_additive_inverse])).
cnf(rm1, plain, (add(associator(multiply(Z,X),Y,X),associator(Z,X,multiply(Y,X))) = additive_identity), inference(lemma,[status(thm)],[associator,distribute1,distribute2,commutative_addition,associative_addition,neg_add,mul_neg_l,mul_neg_r,left_additive_inverse,right_additive_inverse,left_identity,right_identity,additive_inverse_additive_inverse,right_moufang])).
cnf(cd, plain, (associator(multiply(W,Y),Y,Z) = associator(W,Y,multiply(Z,Y))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,neg_add,additive_inverse_additive_inverse,rm1,as_skew23])).
cnf(m1, plain, (associator(W,Y,multiply(Y,Z)) = multiply(associator(W,Y,Z),Y)), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,neg_add,additive_inverse_additive_inverse,teich,cd,as_skew12,as_skew23,as_xxy,as_xyy,multiply_additive_id2,multiply_additive_id1])).
cnf(cyc, plain, (associator(Z,X,Y) = associator(X,Y,Z)), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,neg_add,additive_inverse_additive_inverse,as_skew12,as_skew23])).
cnf(m2, plain, (associator(X,multiply(X,Y),Z) = multiply(associator(X,Y,Z),X)), inference(lemma,[status(thm)],[m1,cyc])).
cnf(key, plain, (associator(multiply(X,X),Y,Z) = add(multiply(X,associator(X,Y,Z)),multiply(associator(X,Y,Z),X))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,neg_add,additive_inverse_additive_inverse,teich,m2,as_xxy,multiply_additive_id1,multiply_additive_id2])).
cnf(canc, plain, (add(A,B) != add(A,C) | B = C), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity])).
cnf(la, plain, (associator(multiply(add(W,X),add(W,X)),Y,Z) = add(multiply(add(W,X),associator(add(W,X),Y,Z)),multiply(associator(add(W,X),Y,Z),add(W,X)))), inference(lemma,[status(thm)],[key])).
cnf(lb, plain, (multiply(add(W,X),add(W,X)) = add(add(multiply(W,W),multiply(X,X)),add(multiply(W,X),multiply(X,W)))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,distribute1,distribute2])).
cnf(lc, plain, (associator(multiply(add(W,X),add(W,X)),Y,Z) = add(add(add(multiply(W,associator(W,Y,Z)),multiply(associator(W,Y,Z),W)),add(multiply(X,associator(X,Y,Z)),multiply(associator(X,Y,Z),X))),associator(add(multiply(W,X),multiply(X,W)),Y,Z))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,lb,as_add1,key])).
cnf(ld, plain, (add(multiply(add(W,X),associator(add(W,X),Y,Z)),multiply(associator(add(W,X),Y,Z),add(W,X))) = add(add(add(multiply(W,associator(W,Y,Z)),multiply(associator(W,Y,Z),W)),add(multiply(X,associator(X,Y,Z)),multiply(associator(X,Y,Z),X))),add(add(multiply(W,associator(X,Y,Z)),multiply(associator(X,Y,Z),W)),add(multiply(X,associator(W,Y,Z)),multiply(associator(W,Y,Z),X))))), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,as_add1,distribute1,distribute2])).
cnf(le, plain, (add(add(add(multiply(W,associator(W,Y,Z)),multiply(associator(W,Y,Z),W)),add(multiply(X,associator(X,Y,Z)),multiply(associator(X,Y,Z),X))),associator(add(multiply(W,X),multiply(X,W)),Y,Z)) = add(add(add(multiply(W,associator(W,Y,Z)),multiply(associator(W,Y,Z),W)),add(multiply(X,associator(X,Y,Z)),multiply(associator(X,Y,Z),X))),add(add(multiply(W,associator(X,Y,Z)),multiply(associator(X,Y,Z),W)),add(multiply(X,associator(W,Y,Z)),multiply(associator(W,Y,Z),X))))), inference(lemma,[status(thm)],[la,lc,ld])).
cnf(lin, plain, (associator(add(multiply(W,X),multiply(X,W)),Y,Z) = add(add(multiply(W,associator(X,Y,Z)),multiply(associator(X,Y,Z),W)),add(multiply(X,associator(W,Y,Z)),multiply(associator(W,Y,Z),X)))), inference(lemma,[status(thm)],[le,canc])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[commutative_addition,associative_addition,left_additive_inverse,right_additive_inverse,left_identity,right_identity,neg_add,lin,as_add1,defines_s,prove_skew_symmetry,mul_neg_l,mul_neg_r])).
% SZS output end CNFRefutation for RNG010-5
%------------------------------------------------------------------------------
