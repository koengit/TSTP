%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : SEU370+2 : TPTP v10.0.0. Released v3.3.0.
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
%            specific calculus rule). Notes: MPTP t4_yellow_1 (boole_POSet = incl_POSet of powerset);
%            first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for SEU370+2
% SZS output start Refutation for SEU370+2
fof(d1_lattice3, axiom, (! [A,B] : ((strict_latt_str(B) & latt_str(B)) => (B = boole_lattice(A) <=> (the_carrier(B) = powerset(A) & (! [C] : (element(C,powerset(A)) => (! [D] : (element(D,powerset(A)) => (apply_binary(the_L_join(B),C,D) = subset_union2(A,C,D) & apply_binary(the_L_meet(B),C,D) = subset_intersection2(A,C,D)))))))))), file('Problems/SEU/SEU370+2.p',d1_lattice3)).
fof(dt_k1_lattice3, axiom, (! [A] : (strict_latt_str(boole_lattice(A)) & latt_str(boole_lattice(A)))), file('Problems/SEU/SEU370+2.p',dt_k1_lattice3)).
fof(fc2_lattice3, axiom, (! [A] : (~ empty_carrier(boole_lattice(A)) & strict_latt_str(boole_lattice(A)) & join_commutative(boole_lattice(A)) & join_associative(boole_lattice(A)) & meet_commutative(boole_lattice(A)) & meet_associative(boole_lattice(A)) & meet_absorbing(boole_lattice(A)) & join_absorbing(boole_lattice(A)) & lattice(boole_lattice(A)))), file('Problems/SEU/SEU370+2.p',fc2_lattice3)).
fof(redefinition_k2_lattice3, axiom, (! [A] : ((~ empty_carrier(A) & lattice(A) & latt_str(A)) => k2_lattice3(A) = relation_of_lattice(A))), file('Problems/SEU/SEU370+2.p',redefinition_k2_lattice3)).
fof(t32_filter_1, lemma, (! [A] : ((~ empty_carrier(A) & lattice(A) & latt_str(A)) => (! [B] : (element(B,the_carrier(A)) => (! [C] : (element(C,the_carrier(A)) => (in(ordered_pair_as_product_element(the_carrier(A),the_carrier(A),B,C),relation_of_lattice(A)) <=> below_refl(A,B,C)))))))), file('Problems/SEU/SEU370+2.p',t32_filter_1)).
fof(redefinition_k1_domain_1, axiom, (! [A,B,C,D] : ((~ empty(A) & ~ empty(B) & element(C,A) & element(D,B)) => ordered_pair_as_product_element(A,B,C,D) = ordered_pair(C,D))), file('Problems/SEU/SEU370+2.p',redefinition_k1_domain_1)).
fof(redefinition_r3_lattices, axiom, (! [A,B,C] : ((~ empty_carrier(A) & meet_commutative(A) & meet_absorbing(A) & join_absorbing(A) & latt_str(A) & element(B,the_carrier(A)) & element(C,the_carrier(A))) => (below_refl(A,B,C) <=> below(A,B,C)))), file('Problems/SEU/SEU370+2.p',redefinition_r3_lattices)).
fof(t2_lattice3, lemma, (! [A,B] : (element(B,the_carrier(boole_lattice(A))) => (! [C] : (element(C,the_carrier(boole_lattice(A))) => (below(boole_lattice(A),B,C) <=> subset(B,C)))))), file('Problems/SEU/SEU370+2.p',t2_lattice3)).
fof(fc1_subset_1, axiom, (! [A] : ~ empty(powerset(A))), file('Problems/SEU/SEU370+2.p',fc1_subset_1)).
fof(t1_subset, axiom, (! [A,B] : (in(A,B) => element(A,B))), file('Problems/SEU/SEU370+2.p',t1_subset)).
fof(dt_k2_lattice3, axiom, (! [A] : ((~ empty_carrier(A) & lattice(A) & latt_str(A)) => (reflexive(k2_lattice3(A)) & antisymmetric(k2_lattice3(A)) & transitive(k2_lattice3(A)) & v1_partfun1(k2_lattice3(A),the_carrier(A),the_carrier(A)) & relation_of2_as_subset(k2_lattice3(A),the_carrier(A),the_carrier(A))))), file('Problems/SEU/SEU370+2.p',dt_k2_lattice3)).
fof(dt_m2_relset_1, axiom, (! [A,B,C] : (relation_of2_as_subset(C,A,B) => element(C,powerset(cartesian_product2(A,B))))), file('Problems/SEU/SEU370+2.p',dt_m2_relset_1)).
fof(t3_subset, axiom, (! [A,B] : (element(A,powerset(B)) <=> subset(A,B))), file('Problems/SEU/SEU370+2.p',t3_subset)).
fof(d1_wellord2, axiom, (! [A,B] : (relation(B) => (B = inclusion_relation(A) <=> (relation_field(B) = A & (! [C,D] : ((in(C,A) & in(D,A)) => (in(ordered_pair(C,D),B) <=> subset(C,D)))))))), file('Problems/SEU/SEU370+2.p',d1_wellord2)).
fof(dt_k1_wellord2, axiom, (! [A] : relation(inclusion_relation(A))), file('Problems/SEU/SEU370+2.p',dt_k1_wellord2)).
fof(d2_relat_1, axiom, (! [A] : (relation(A) => (! [B] : (relation(B) => (A = B <=> (! [C,D] : (in(ordered_pair(C,D),A) <=> in(ordered_pair(C,D),B)))))))), file('Problems/SEU/SEU370+2.p',d2_relat_1)).
fof(dt_k9_filter_1, axiom, (! [A] : ((~ empty_carrier(A) & lattice(A) & latt_str(A)) => relation(relation_of_lattice(A)))), file('Problems/SEU/SEU370+2.p',dt_k9_filter_1)).
fof(t30_relat_1, lemma, (! [A,B,C] : (relation(C) => (in(ordered_pair(A,B),C) => (in(A,relation_field(C)) & in(B,relation_field(C)))))), file('Problems/SEU/SEU370+2.p',t30_relat_1)).
fof(d3_tarski, axiom, (! [A,B] : (subset(A,B) <=> (! [C] : (in(C,A) => in(C,B))))), file('Problems/SEU/SEU370+2.p',d3_tarski)).
fof(t106_zfmisc_1, lemma, (! [A,B,C,D] : (in(ordered_pair(A,B),cartesian_product2(C,D)) <=> (in(A,C) & in(B,D)))), file('Problems/SEU/SEU370+2.p',t106_zfmisc_1)).
fof(d2_yellow_1, axiom, (! [A] : boole_POSet(A) = poset_of_lattice(boole_lattice(A))), file('Problems/SEU/SEU370+2.p',d2_yellow_1)).
fof(d2_lattice3, axiom, (! [A] : ((~ empty_carrier(A) & lattice(A) & latt_str(A)) => poset_of_lattice(A) = rel_str_of(the_carrier(A),k2_lattice3(A)))), file('Problems/SEU/SEU370+2.p',d2_lattice3)).
fof(d1_yellow_1, axiom, (! [A] : incl_POSet(A) = rel_str_of(A,inclusion_order(A))), file('Problems/SEU/SEU370+2.p',d1_yellow_1)).
fof(redefinition_k1_yellow_1, axiom, (! [A] : inclusion_order(A) = inclusion_relation(A)), file('Problems/SEU/SEU370+2.p',redefinition_k1_yellow_1)).
fof(t4_yellow_1, conjecture, (! [A] : boole_POSet(A) = incl_POSet(powerset(A))), file('Problems/SEU/SEU370+2.p',t4_yellow_1)).
fof(t4_yellow_1_neg, negated_conjecture, ~ ((! [A] : boole_POSet(A) = incl_POSet(powerset(A)))), inference(negate_conjecture,[status(cth)],[t4_yellow_1])).
fof(c1, plain, (! [A] : the_carrier(boole_lattice(A)) = powerset(A)), inference(lemma,[status(thm)],[d1_lattice3,dt_k1_lattice3])).
fof(c2, plain, (! [A] : (~ empty_carrier(boole_lattice(A)) & lattice(boole_lattice(A)) & latt_str(boole_lattice(A)) & meet_commutative(boole_lattice(A)) & meet_absorbing(boole_lattice(A)) & join_absorbing(boole_lattice(A)))), inference(lemma,[status(thm)],[fc2_lattice3,dt_k1_lattice3])).
fof(k1, plain, (! [A] : k2_lattice3(boole_lattice(A)) = relation_of_lattice(boole_lattice(A))), inference(lemma,[status(thm)],[redefinition_k2_lattice3,c2])).
fof(pr, plain, (! [A,B,C] : ((in(B,powerset(A)) & in(C,powerset(A))) => (in(ordered_pair(B,C),relation_of_lattice(boole_lattice(A))) <=> subset(B,C)))), inference(lemma,[status(thm)],[t32_filter_1,redefinition_k1_domain_1,redefinition_r3_lattices,t2_lattice3,c1,c2,fc1_subset_1,t1_subset])).
fof(sub, plain, (! [A] : subset(relation_of_lattice(boole_lattice(A)),cartesian_product2(powerset(A),powerset(A)))), inference(lemma,[status(thm)],[dt_k2_lattice3,dt_m2_relset_1,t3_subset,k1,c1,c2])).
fof(fld, plain, (! [A] : relation_field(inclusion_relation(powerset(A))) = powerset(A)), inference(lemma,[status(thm)],[d1_wellord2,dt_k1_wellord2])).
fof(eqr, plain, (! [A] : relation_of_lattice(boole_lattice(A)) = inclusion_relation(powerset(A))), inference(lemma,[status(thm)],[d2_relat_1,dt_k9_filter_1,dt_k1_wellord2,d1_wellord2,fld,t30_relat_1,pr,sub,d3_tarski,t106_zfmisc_1,c2])).
fof(bp, plain, (! [A] : boole_POSet(A) = rel_str_of(powerset(A),k2_lattice3(boole_lattice(A)))), inference(lemma,[status(thm)],[d2_yellow_1,d2_lattice3,c1,c2])).
fof(ip, plain, (! [A] : incl_POSet(powerset(A)) = rel_str_of(powerset(A),inclusion_relation(powerset(A)))), inference(lemma,[status(thm)],[d1_yellow_1,redefinition_k1_yellow_1])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t4_yellow_1_neg,bp,ip,k1,eqr])).
% SZS output end Refutation for SEU370+2
%------------------------------------------------------------------------------
