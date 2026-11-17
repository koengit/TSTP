%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU033+1 : TPTP v10.0.0. Bugfixed v4.0.0.
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
%            specific calculus rule). Notes: t66_funct_1: inv(A;B) = inv B;inv A via the
%            characterisation t54_funct_1 (domain by extensionality, both directions pointwise); 15
%            steps, first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU033+1
% SZS output start Refutation for SEU033+1
fof(dt_k2_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (relation(function_inverse(A)) & function(function_inverse(A))))), file('Problems/SEU/SEU033+1.p',dt_k2_funct_1)).
fof(t54_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (one_to_one(A) => (! [B] : ((relation(B) & function(B)) => (B = function_inverse(A) <=> (relation_dom(B) = relation_rng(A) & (! [C,D] : (((in(C,relation_rng(A)) & D = apply(B,C)) => (in(D,relation_dom(A)) & C = apply(A,D))) & ((in(D,relation_dom(A)) & C = apply(A,D)) => (in(C,relation_rng(A)) & D = apply(B,C)))))))))))), file('Problems/SEU/SEU033+1.p',t54_funct_1)).
fof(d5_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B] : (B = relation_rng(A) <=> (! [C] : (in(C,B) <=> (? [D] : (in(D,relation_dom(A)) & C = apply(A,D))))))))), file('Problems/SEU/SEU033+1.p',d5_funct_1)).
fof(fc1_funct_1, axiom, (! [A,B] : ((relation(A) & function(A) & relation(B) & function(B)) => (relation(relation_composition(A,B)) & function(relation_composition(A,B))))), file('Problems/SEU/SEU033+1.p',fc1_funct_1)).
fof(t46_funct_1, axiom, (! [A] : ((relation(A) & function(A)) => (! [B] : ((relation(B) & function(B)) => ((one_to_one(A) & one_to_one(B)) => one_to_one(relation_composition(A,B))))))), file('Problems/SEU/SEU033+1.p',t46_funct_1)).
fof(t21_funct_1, axiom, (! [A,B] : ((relation(B) & function(B)) => (! [C] : ((relation(C) & function(C)) => (in(A,relation_dom(relation_composition(C,B))) <=> (in(A,relation_dom(C)) & in(apply(C,A),relation_dom(B)))))))), file('Problems/SEU/SEU033+1.p',t21_funct_1)).
fof(t22_funct_1, axiom, (! [A,B] : ((relation(B) & function(B)) => (! [C] : ((relation(C) & function(C)) => (in(A,relation_dom(relation_composition(C,B))) => apply(relation_composition(C,B),A) = apply(B,apply(C,A))))))), file('Problems/SEU/SEU033+1.p',t22_funct_1)).
fof(t2_tarski, axiom, (! [A,B] : ((! [C] : (in(C,A) <=> in(C,B))) => A = B)), file('Problems/SEU/SEU033+1.p',t2_tarski)).
fof(t66_funct_1, conjecture, (! [A] : ((relation(A) & function(A)) => (! [B] : ((relation(B) & function(B)) => ((one_to_one(A) & one_to_one(B)) => function_inverse(relation_composition(A,B)) = relation_composition(function_inverse(B),function_inverse(A))))))), file('Problems/SEU/SEU033+1.p',t66_funct_1)).
fof(t66_funct_1_neg, negated_conjecture, ~ ((! [A] : ((relation(A) & function(A)) => (! [B] : ((relation(B) & function(B)) => ((one_to_one(A) & one_to_one(B)) => function_inverse(relation_composition(A,B)) = relation_composition(function_inverse(B),function_inverse(A)))))))), inference(negate_conjecture,[status(cth)],[t66_funct_1])).
fof(ty, plain, (! [F] : ((relation(F) & function(F)) => (relation(function_inverse(F)) & function(function_inverse(F))))), inference(lemma,[status(thm)],[dt_k2_funct_1])).
fof(iv, plain, (! [F] : ((relation(F) & function(F) & one_to_one(F)) => (relation_dom(function_inverse(F)) = relation_rng(F) & (! [Y] : (in(Y,relation_rng(F)) => (in(apply(function_inverse(F),Y),relation_dom(F)) & apply(F,apply(function_inverse(F),Y)) = Y))) & (! [X] : (in(X,relation_dom(F)) => (in(apply(F,X),relation_rng(F)) & apply(function_inverse(F),apply(F,X)) = X)))))), inference(lemma,[status(thm)],[t54_funct_1,ty])).
fof(rngd, plain, (! [F,Y] : ((relation(F) & function(F)) => (in(Y,relation_rng(F)) <=> (? [X] : (in(X,relation_dom(F)) & Y = apply(F,X)))))), inference(lemma,[status(thm)],[d5_funct_1])).
fof(cty, plain, (! [A,B] : ((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) => (relation(relation_composition(A,B)) & function(relation_composition(A,B)) & one_to_one(relation_composition(A,B)) & relation(relation_composition(function_inverse(B),function_inverse(A))) & function(relation_composition(function_inverse(B),function_inverse(A)))))), inference(lemma,[status(thm)],[fc1_funct_1,t46_funct_1,ty])).
fof(cdom, plain, (! [A,B,X] : ((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) => ((in(X,relation_dom(relation_composition(A,B))) <=> (in(X,relation_dom(A)) & in(apply(A,X),relation_dom(B)))) & (in(X,relation_dom(relation_composition(A,B))) => apply(relation_composition(A,B),X) = apply(B,apply(A,X)))))), inference(lemma,[status(thm)],[t21_funct_1,t22_funct_1])).
fof(gdom, plain, (! [A,B,Y] : ((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) => ((in(Y,relation_dom(relation_composition(function_inverse(B),function_inverse(A)))) <=> (in(Y,relation_rng(B)) & in(apply(function_inverse(B),Y),relation_rng(A)))) & (in(Y,relation_dom(relation_composition(function_inverse(B),function_inverse(A)))) => apply(relation_composition(function_inverse(B),function_inverse(A)),Y) = apply(function_inverse(A),apply(function_inverse(B),Y)))))), inference(lemma,[status(thm)],[t21_funct_1,t22_funct_1,ty,iv])).
fof(crng, plain, (! [A,B,Y] : ((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) => (in(Y,relation_rng(relation_composition(A,B))) <=> (? [X] : (in(X,relation_dom(A)) & in(apply(A,X),relation_dom(B)) & Y = apply(B,apply(A,X))))))), inference(lemma,[status(thm)],[rngd,cty,cdom])).
fof(eq1, plain, (! [A,B,Y] : (((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) & in(Y,relation_rng(B)) & in(apply(function_inverse(B),Y),relation_rng(A))) => in(Y,relation_rng(relation_composition(A,B))))), inference(lemma,[status(thm)],[crng,iv])).
fof(eq2, plain, (! [A,B,Y,X] : (((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) & in(X,relation_dom(A)) & in(apply(A,X),relation_dom(B)) & Y = apply(B,apply(A,X))) => (in(Y,relation_rng(B)) & apply(function_inverse(B),Y) = apply(A,X) & in(apply(function_inverse(B),Y),relation_rng(A))))), inference(lemma,[status(thm)],[iv])).
fof(eqm, plain, (! [A,B,Y] : ((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) => (in(Y,relation_dom(relation_composition(function_inverse(B),function_inverse(A)))) <=> in(Y,relation_rng(relation_composition(A,B)))))), inference(lemma,[status(thm)],[gdom,eq1,eq2,crng])).
fof(eqd, plain, (! [A,B] : ((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) => relation_dom(relation_composition(function_inverse(B),function_inverse(A))) = relation_rng(relation_composition(A,B)))), inference(lemma,[status(thm)],[eqm,t2_tarski])).
fof(p2, plain, (! [A,B,Y] : (((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) & in(Y,relation_rng(relation_composition(A,B)))) => (in(apply(relation_composition(function_inverse(B),function_inverse(A)),Y),relation_dom(relation_composition(A,B))) & Y = apply(relation_composition(A,B),apply(relation_composition(function_inverse(B),function_inverse(A)),Y))))), inference(lemma,[status(thm)],[eqm,gdom,eq1,crng,eq2,iv,cdom])).
fof(p3, plain, (! [A,B,X] : (((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) & in(X,relation_dom(relation_composition(A,B)))) => (in(apply(relation_composition(A,B),X),relation_rng(relation_composition(A,B))) & X = apply(relation_composition(function_inverse(B),function_inverse(A)),apply(relation_composition(A,B),X))))), inference(lemma,[status(thm)],[cdom,crng,eq2,eqm,gdom,iv])).
fof(fin, plain, (! [A,B] : ((relation(A) & function(A) & one_to_one(A) & relation(B) & function(B) & one_to_one(B)) => relation_composition(function_inverse(B),function_inverse(A)) = function_inverse(relation_composition(A,B)))), inference(lemma,[status(thm)],[t54_funct_1,cty,eqd,p2,p3])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t66_funct_1_neg,fin])).
% SZS output end Refutation for SEU033+1
%------------------------------------------------------------------------------
