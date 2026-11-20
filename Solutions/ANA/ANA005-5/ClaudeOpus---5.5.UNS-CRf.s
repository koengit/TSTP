%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : ANA005-5 : TPTP v10.0.0. Released v1.0.0.
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
%            specific calculus rule). Notes: ≤ ε/2; triangle inequality and half+half = ε; AC
%            rearrangement under equalish. 25 steps.
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for ANA005-5
% SZS output start CNFRefutation for ANA005-5
cnf(clause_5, hypothesis, (~ less_or_equalish(epsilon_0,n0)), file('Problems/ANA/ANA005-5.p',clause_5)).
cnf(zero_and_half, axiom, (less_or_equalish(X,n0) | ~ less_or_equalish(half(X),n0)), file('Problems/ANA/ANA005-5.p',zero_and_half)).
cnf(clause_1, hypothesis, (less_or_equalish(Epsilon,n0) | ~ less_or_equalish(delta_1(Epsilon),n0)), file('Problems/ANA/ANA005-5.p',clause_1)).
cnf(clause_2, hypothesis, (less_or_equalish(Epsilon,n0) | ~ less_or_equalish(delta_2(Epsilon),n0)), file('Problems/ANA/ANA005-5.p',clause_2)).
cnf(commutativity_of_less_or_equal, axiom, (less_or_equalish(X,Y) | less_or_equalish(Y,X)), file('Problems/ANA/ANA005-5.p',commutativity_of_less_or_equal)).
cnf(equal_implies_less_or_equal, axiom, (~ equalish(X,Y) | less_or_equalish(X,Y)), file('Problems/ANA/ANA005-5.p',equal_implies_less_or_equal)).
cnf(less_or_equal_substitution1, axiom, (~ equalish(X,Z) | ~ less_or_equalish(X,Y) | less_or_equalish(Z,Y)), file('Problems/ANA/ANA005-5.p',less_or_equal_substitution1)).
cnf(minimum1, axiom, (~ less_or_equalish(X,Y) | equalish(minimum(X,Y),X)), file('Problems/ANA/ANA005-5.p',minimum1)).
cnf(minimum5, axiom, (~ less_or_equalish(Y,X) | equalish(minimum(X,Y),Y)), file('Problems/ANA/ANA005-5.p',minimum5)).
cnf(symmetry, axiom, (~ equalish(X,Y) | equalish(Y,X)), file('Problems/ANA/ANA005-5.p',symmetry)).
cnf(transitivity_of_less_or_equal, axiom, (~ less_or_equalish(X,Y) | ~ less_or_equalish(Y,Z) | less_or_equalish(X,Z)), file('Problems/ANA/ANA005-5.p',transitivity_of_less_or_equal)).
cnf(clause_6, hypothesis, (less_or_equalish(Delta,n0) | less_or_equalish(absolute(add(xs(Delta),negate(a_real_number))),Delta)), file('Problems/ANA/ANA005-5.p',clause_6)).
cnf(clause_3, hypothesis, (less_or_equalish(Epsilon,n0) | ~ less_or_equalish(absolute(add(Z,negate(a_real_number))),delta_1(Epsilon)) | less_or_equalish(absolute(add(f(Z),negate(f(a_real_number)))),Epsilon)), file('Problems/ANA/ANA005-5.p',clause_3)).
cnf(clause_4, hypothesis, (less_or_equalish(Epsilon,n0) | ~ less_or_equalish(absolute(add(Z,negate(a_real_number))),delta_2(Epsilon)) | less_or_equalish(absolute(add(g(Z),negate(g(a_real_number)))),Epsilon)), file('Problems/ANA/ANA005-5.p',clause_4)).
cnf(add_to_both_sides_of_less_equal1, axiom, (~ less_or_equalish(X,Y) | less_or_equalish(add(X,Z),add(Y,Z))), file('Problems/ANA/ANA005-5.p',add_to_both_sides_of_less_equal1)).
cnf(commutativity_of_add, axiom, (equalish(add(X,Y),add(Y,X))), file('Problems/ANA/ANA005-5.p',commutativity_of_add)).
cnf(half_plus_half_is_whole, axiom, (equalish(add(half(X),half(X)),X)), file('Problems/ANA/ANA005-5.p',half_plus_half_is_whole)).
cnf(absolute_sum_less_or_equal_sum_of_absolutes1, axiom, (less_or_equalish(absolute(add(X,Y)),add(absolute(X),absolute(Y)))), file('Problems/ANA/ANA005-5.p',absolute_sum_less_or_equal_sum_of_absolutes1)).
cnf(associativity_of_add, axiom, (equalish(add(add(X,Y),Z),add(X,add(Y,Z)))), file('Problems/ANA/ANA005-5.p',associativity_of_add)).
cnf(add_substitution1, axiom, (~ equalish(X,Z) | equalish(add(X,Y),add(Z,Y))), file('Problems/ANA/ANA005-5.p',add_substitution1)).
cnf(transitivity, axiom, (~ equalish(X,Y) | ~ equalish(Y,Z) | equalish(X,Z)), file('Problems/ANA/ANA005-5.p',transitivity)).
cnf(add_substitution2, axiom, (~ equalish(Y,Z) | equalish(add(X,Y),add(X,Z))), file('Problems/ANA/ANA005-5.p',add_substitution2)).
cnf(absolute_substitution, axiom, (~ equalish(X,Z) | equalish(absolute(X),absolute(Z))), file('Problems/ANA/ANA005-5.p',absolute_substitution)).
cnf(clause_7, negated_conjecture, (less_or_equalish(Delta,n0) | ~ less_or_equalish(absolute(add(add(f(xs(Delta)),g(xs(Delta))),add(negate(f(a_real_number)),negate(g(a_real_number))))),epsilon_0)), file('Problems/ANA/ANA005-5.p',clause_7)).
cnf(g1, plain, (~ less_or_equalish(half(epsilon_0),n0)), inference(lemma,[status(thm)],[clause_5,zero_and_half])).
cnf(g2, plain, (~ less_or_equalish(delta_1(half(epsilon_0)),n0)), inference(lemma,[status(thm)],[clause_1,g1])).
cnf(g3, plain, (~ less_or_equalish(delta_2(half(epsilon_0)),n0)), inference(lemma,[status(thm)],[clause_2,g1])).
cnf(g4, plain, (~ less_or_equalish(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))),n0)), inference(lemma,[status(thm)],[commutativity_of_less_or_equal,equal_implies_less_or_equal,g2,g3,less_or_equal_substitution1,minimum1,minimum5,symmetry,transitivity_of_less_or_equal])).
cnf(g6, plain, (less_or_equalish(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))),delta_1(half(epsilon_0)))), inference(lemma,[status(thm)],[commutativity_of_less_or_equal,equal_implies_less_or_equal,minimum1,minimum5,transitivity_of_less_or_equal])).
cnf(g7, plain, (less_or_equalish(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))),delta_2(half(epsilon_0)))), inference(lemma,[status(thm)],[commutativity_of_less_or_equal,equal_implies_less_or_equal,g6,minimum5,transitivity_of_less_or_equal])).
cnf(g8, plain, (less_or_equalish(absolute(add(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0)))),negate(a_real_number))),delta_1(half(epsilon_0)))), inference(lemma,[status(thm)],[clause_6,g4,g6,transitivity_of_less_or_equal])).
cnf(g9, plain, (less_or_equalish(absolute(add(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0)))),negate(a_real_number))),delta_2(half(epsilon_0)))), inference(lemma,[status(thm)],[clause_6,g4,g7,transitivity_of_less_or_equal])).
cnf(g10, plain, (less_or_equalish(absolute(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(f(a_real_number)))),half(epsilon_0))), inference(lemma,[status(thm)],[clause_3,g1,g8])).
cnf(g11, plain, (less_or_equalish(absolute(add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number)))),half(epsilon_0))), inference(lemma,[status(thm)],[clause_4,g1,g9])).
cnf(g12a, plain, (less_or_equalish(add(absolute(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(f(a_real_number)))),absolute(add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number))))),add(half(epsilon_0),absolute(add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number))))))), inference(lemma,[status(thm)],[add_to_both_sides_of_less_equal1,g10])).
cnf(g12b, plain, (less_or_equalish(add(half(epsilon_0),absolute(add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number))))),add(half(epsilon_0),half(epsilon_0)))), inference(lemma,[status(thm)],[add_to_both_sides_of_less_equal1,commutativity_of_add,equal_implies_less_or_equal,g11,half_plus_half_is_whole,less_or_equal_substitution1,symmetry,transitivity_of_less_or_equal])).
cnf(g12, plain, (less_or_equalish(absolute(add(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(f(a_real_number))),add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number))))),epsilon_0)), inference(lemma,[status(thm)],[absolute_sum_less_or_equal_sum_of_absolutes1,equal_implies_less_or_equal,g12a,g12b,half_plus_half_is_whole,transitivity_of_less_or_equal])).
cnf(a1, plain, (equalish(add(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0)))))),add(negate(f(a_real_number)),negate(g(a_real_number)))),add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),add(negate(f(a_real_number)),negate(g(a_real_number))))))), inference(lemma,[status(thm)],[associativity_of_add])).
cnf(a2, plain, (equalish(add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),add(negate(f(a_real_number)),negate(g(a_real_number)))),add(add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(f(a_real_number))),negate(g(a_real_number))))), inference(lemma,[status(thm)],[associativity_of_add,symmetry])).
cnf(a3, plain, (equalish(add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(f(a_real_number))),add(negate(f(a_real_number)),g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0)))))))), inference(lemma,[status(thm)],[commutativity_of_add])).
cnf(a4, plain, (equalish(add(add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(f(a_real_number))),negate(g(a_real_number))),add(add(negate(f(a_real_number)),g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0)))))),negate(g(a_real_number))))), inference(lemma,[status(thm)],[a3,add_substitution1])).
cnf(a5, plain, (equalish(add(add(negate(f(a_real_number)),g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0)))))),negate(g(a_real_number))),add(negate(f(a_real_number)),add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number)))))), inference(lemma,[status(thm)],[associativity_of_add])).
cnf(a6, plain, (equalish(add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),add(negate(f(a_real_number)),negate(g(a_real_number)))),add(negate(f(a_real_number)),add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number)))))), inference(lemma,[status(thm)],[a2,a4,a5,transitivity])).
cnf(a7, plain, (equalish(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),add(negate(f(a_real_number)),negate(g(a_real_number))))),add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),add(negate(f(a_real_number)),add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number))))))), inference(lemma,[status(thm)],[a6,add_substitution2])).
cnf(a8, plain, (equalish(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),add(negate(f(a_real_number)),add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number))))),add(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(f(a_real_number))),add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number)))))), inference(lemma,[status(thm)],[associativity_of_add,symmetry])).
cnf(g13, plain, (equalish(add(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0)))))),add(negate(f(a_real_number)),negate(g(a_real_number)))),add(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(f(a_real_number))),add(g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),negate(g(a_real_number)))))), inference(lemma,[status(thm)],[a1,a7,a8,transitivity])).
cnf(g14, plain, (less_or_equalish(absolute(add(add(f(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0))))),g(xs(minimum(delta_1(half(epsilon_0)),delta_2(half(epsilon_0)))))),add(negate(f(a_real_number)),negate(g(a_real_number))))),epsilon_0)), inference(lemma,[status(thm)],[absolute_substitution,g12,g13,less_or_equal_substitution1,symmetry])).
cnf(done, plain, ($false), inference(lemma,[status(thm)],[clause_7,g14,g4])).
% SZS output end CNFRefutation for ANA005-5
%------------------------------------------------------------------------------
