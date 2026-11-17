%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM784+4 : TPTP v10.0.0. Released v7.3.0.
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
%            specific calculus rule). Notes: Landau satz81c (rationals, from satz81b)
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for NUM784+4
% SZS output start Refutation for NUM784+4
fof(fact_satz81b, axiom, pp(aa_fun171081125l_bool(scratc2010171869all_of(aTP_Lamm_a),aTP_Lamm_cg)), file('Problems/NUM/NUM784+4.p',fact_satz81b)).
fof(fact_def__all__of, axiom, (! [X,Xa] : (pp(aa_fun171081125l_bool(scratc2010171869all_of(X),Xa)) <=> (! [X2] : (gg_TPTP_ind(X2) => (scratc94598652_is_of(X2,X) => pp(aa_TPTP_ind_bool(Xa,X2))))))), file('Problems/NUM/NUM784+4.p',fact_def__all__of)).
fof(fact_def__is__of, axiom, (! [X,Xa] : (scratc94598652_is_of(X,Xa) <=> pp(aa_TPTP_ind_bool(Xa,X)))), file('Problems/NUM/NUM784+4.p',fact_def__is__of)).
fof(fact_ATP_Olambda__25, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_a,Uu)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc146720640bnd_in,Uu),scratc1926537546nd_rat)))), file('Problems/NUM/NUM784+4.p',fact_ATP_Olambda__25)).
fof(fact_ATP_Olambda__235, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_cg,Uu)) <=> pp(aa_fun171081125l_bool(scratc2010171869all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cf,Uu))))), file('Problems/NUM/NUM784+4.p',fact_ATP_Olambda__235)).
fof(fact_ATP_Olambda__252, axiom, (! [Uu,Uua] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cf,Uu),Uua)) <=> pp(scratc1819269114nd_ec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc286867143_rt_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc921529522t_more,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc58392886t_less,Uu),Uua))))), file('Problems/NUM/NUM784+4.p',fact_ATP_Olambda__252)).
fof(fact_def__rt__moreis, axiom, (! [X,Xa] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc386354684moreis,X),Xa)) <=> pp(aa_bool_bool(scratc914659060d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc921529522t_more,X),Xa)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc286867143_rt_is,X),Xa))))), file('Problems/NUM/NUM784+4.p',fact_def__rt__moreis)).
fof(fact_def__d__and, axiom, (! [X,Xa] : (pp(scratc1229537902_d_and(X,Xa)) <=> pp(scratc1337003082_d_not(scratc914003055d_l_ec(X,Xa))))), file('Problems/NUM/NUM784+4.p',fact_def__d__and)).
fof(fact_def__l__ec, axiom, (! [X,Xa] : (pp(scratc914003055d_l_ec(X,Xa)) <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc1852971185nd_imp,X),scratc1337003082_d_not(Xa))))), file('Problems/NUM/NUM784+4.p',fact_def__l__ec)).
fof(fact_def__d__not, axiom, (! [X] : (pp(scratc1337003082_d_not(X)) <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc1852971185nd_imp,X),fFalse)))), file('Problems/NUM/NUM784+4.p',fact_def__d__not)).
fof(fact_def__imp, axiom, scratc1852971185nd_imp = fimplies, file('Problems/NUM/NUM784+4.p',fact_def__imp)).
fof(fact_def__l__or, axiom, (! [X] : scratc914659060d_l_or(X) = aa_boo1142376798l_bool(scratc1852971185nd_imp,scratc1337003082_d_not(X))), file('Problems/NUM/NUM784+4.p',fact_def__l__or)).
fof(fact_def__and3, axiom, (! [X,Xa,Xb] : (scratc1392548439d_and3(X,Xa,Xb) <=> pp(scratc1229537902_d_and(X,scratc1229537902_d_and(Xa,Xb))))), file('Problems/NUM/NUM784+4.p',fact_def__and3)).
fof(fact_def__ec3, axiom, (! [X,Xa,Xb] : (pp(scratc1819269114nd_ec3(X,Xa,Xb)) <=> scratc1392548439d_and3(scratc914003055d_l_ec(X,Xa),scratc914003055d_l_ec(Xa,Xb),scratc914003055d_l_ec(Xb,X)))), file('Problems/NUM/NUM784+4.p',fact_def__ec3)).
fof(help_pp_2_1_U, axiom, pp(fTrue), file('Problems/NUM/NUM784+4.p',help_pp_2_1_U)).
fof(help_fconj_3_1_U, axiom, (! [P,Q] : (~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)) | pp(Q))), file('Problems/NUM/NUM784+4.p',help_fconj_3_1_U)).
fof(help_fconj_2_1_U, axiom, (! [P,Q] : (~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)) | pp(P))), file('Problems/NUM/NUM784+4.p',help_fconj_2_1_U)).
fof(help_fconj_1_1_U, axiom, (! [P,Q] : (~ pp(P) | ~ pp(Q) | pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)))), file('Problems/NUM/NUM784+4.p',help_fconj_1_1_U)).
fof(help_fFalse_1_1_T, axiom, (! [P] : (gg_bool(P) => (P = fTrue | P = fFalse))), file('Problems/NUM/NUM784+4.p',help_fFalse_1_1_T)).
fof(help_fFalse_1_1_U, axiom, ~ pp(fFalse), file('Problems/NUM/NUM784+4.p',help_fFalse_1_1_U)).
fof(help_fimplies_3_1_U, axiom, (! [P,Q] : (~ pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) | ~ pp(P) | pp(Q))), file('Problems/NUM/NUM784+4.p',help_fimplies_3_1_U)).
fof(help_fimplies_2_1_U, axiom, (! [Q,P] : (~ pp(Q) | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)))), file('Problems/NUM/NUM784+4.p',help_fimplies_2_1_U)).
fof(help_fimplies_1_1_U, axiom, (! [P,Q] : (pp(P) | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)))), file('Problems/NUM/NUM784+4.p',help_fimplies_1_1_U)).
fof(help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U, axiom, (! [P,X7] : (~ pp(aa_TPTP_ind_bool(P,X7)) | pp(fEx_TPTP_ind(P)))), file('Problems/NUM/NUM784+4.p',help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U)).
fof(help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T, axiom, (! [X7,Y] : (X7 != Y | pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)))), file('Problems/NUM/NUM784+4.p',help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T)).
fof(help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T, axiom, (! [X7,Y] : ((gg_TPTP_ind(X7) & gg_TPTP_ind(Y)) => (~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)) | X7 = Y))), file('Problems/NUM/NUM784+4.p',help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T)).
fof(help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U, axiom, (! [P,Q,R] : aa_TPTP_ind_bool(cOMBS_2003118649l_bool(P,Q),R) = aa_bool_bool(aa_TPT2142672771l_bool(P,R),aa_TPTP_ind_bool(Q,R))), file('Problems/NUM/NUM784+4.p',help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U)).
fof(help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U, axiom, (! [P,Q,R] : aa_TPTP_ind_bool(aa_TPT43085870d_bool(cOMBC_1555011498d_bool(P),Q),R) = aa_TPTP_ind_bool(aa_TPT43085870d_bool(P,R),Q)), file('Problems/NUM/NUM784+4.p',help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U)).
fof(help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U, axiom, (! [P,Q,R] : aa_TPT2142672771l_bool(cOMBB_658106424TP_ind(P,Q),R) = aa_boo1142376798l_bool(P,aa_TPTP_ind_bool(Q,R))), file('Problems/NUM/NUM784+4.p',help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U)).
fof(conj_0, conjecture, pp(aa_fun171081125l_bool(scratc2010171869all_of(aTP_Lamm_a),aTP_Lamm_ab)), file('Problems/NUM/NUM784+4.p',conj_0)).
fof(conj_0_neg, negated_conjecture, ~ (pp(aa_fun171081125l_bool(scratc2010171869all_of(aTP_Lamm_a),aTP_Lamm_ab))), inference(negate_conjecture,[status(cth)],[conj_0])).
fof(fact_ATP_Olambda__238, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_ab,Uu)) <=> pp(aa_fun171081125l_bool(scratc2010171869all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_aa,Uu))))), file('Problems/NUM/NUM784+4.p',fact_ATP_Olambda__238)).
fof(fact_ATP_Olambda__300, axiom, (! [Uu,Uua] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_aa,Uu),Uua)) <=> (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc386354684moreis,Uu),Uua)) => pp(scratc1337003082_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc58392886t_less,Uu),Uua)))))), file('Problems/NUM/NUM784+4.p',fact_ATP_Olambda__300)).
fof(s81b, plain, (! [X,Y] : ((gg_TPTP_ind(X) & gg_TPTP_ind(Y) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc146720640bnd_in,X),scratc1926537546nd_rat)) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc146720640bnd_in,Y),scratc1926537546nd_rat))) => pp(scratc1819269114nd_ec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc286867143_rt_is,X),Y),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc921529522t_more,X),Y),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc58392886t_less,X),Y))))), inference(lemma,[status(thm)],[fact_satz81b,fact_def__all__of,fact_def__is__of,fact_ATP_Olambda__25,fact_ATP_Olambda__235,fact_ATP_Olambda__252])).
fof(core, plain, (! [X,Y] : (pp(scratc1819269114nd_ec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc286867143_rt_is,X),Y),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc921529522t_more,X),Y),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc58392886t_less,X),Y))) => (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc386354684moreis,X),Y)) => pp(scratc1337003082_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc58392886t_less,X),Y)))))), inference(lemma,[status(thm)],[fact_def__rt__moreis,fact_def__d__and,fact_def__l__ec,fact_def__d__not,fact_def__imp,fact_def__l__or,fact_def__and3,fact_def__ec3,help_pp_2_1_U,help_fconj_3_1_U,help_fconj_2_1_U,help_fconj_1_1_U,help_fFalse_1_1_T,help_fFalse_1_1_U,help_fimplies_3_1_U,help_fimplies_2_1_U,help_fimplies_1_1_U,help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U,help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T,help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T,help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U,help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U,help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U])).
fof(done, plain, $false, inference(lemma,[status(thm)],[conj_0_neg,s81b,core,fact_def__all__of,fact_def__is__of,fact_ATP_Olambda__25,fact_ATP_Olambda__238,fact_ATP_Olambda__300])).
% SZS output end Refutation for NUM784+4
%------------------------------------------------------------------------------
