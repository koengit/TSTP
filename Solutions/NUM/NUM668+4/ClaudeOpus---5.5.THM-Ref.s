%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM668+4 : TPTP v10.0.0. Released v7.3.0.
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
%            specific calculus rule). Notes: Landau satz18 (x+y > x); first try
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for NUM668+4
% SZS output start Refutation for NUM668+4
fof(fact_def__n__is, axiom, scratc80655173d_n_is = scratc561994812d_e_is(scratc621356814nd_nat), file('Problems/NUM/NUM668+4.p',fact_def__n__is)).
fof(fact_def__e__is, axiom, (! [X] : scratc561994812d_e_is(X) = fequal_TPTP_ind), file('Problems/NUM/NUM668+4.p',fact_def__e__is)).
fof(help_pp_2_1_U, axiom, pp(fTrue), file('Problems/NUM/NUM668+4.p',help_pp_2_1_U)).
fof(help_fconj_3_1_U, axiom, (! [P,Q] : (~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)) | pp(Q))), file('Problems/NUM/NUM668+4.p',help_fconj_3_1_U)).
fof(help_fconj_2_1_U, axiom, (! [P,Q] : (~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)) | pp(P))), file('Problems/NUM/NUM668+4.p',help_fconj_2_1_U)).
fof(help_fconj_1_1_U, axiom, (! [P,Q] : (~ pp(P) | ~ pp(Q) | pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)))), file('Problems/NUM/NUM668+4.p',help_fconj_1_1_U)).
fof(help_fFalse_1_1_T, axiom, (! [P] : (gg_bool(P) => (P = fTrue | P = fFalse))), file('Problems/NUM/NUM668+4.p',help_fFalse_1_1_T)).
fof(help_fFalse_1_1_U, axiom, ~ pp(fFalse), file('Problems/NUM/NUM668+4.p',help_fFalse_1_1_U)).
fof(help_fimplies_3_1_U, axiom, (! [P,Q] : (~ pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) | ~ pp(P) | pp(Q))), file('Problems/NUM/NUM668+4.p',help_fimplies_3_1_U)).
fof(help_fimplies_2_1_U, axiom, (! [Q,P] : (~ pp(Q) | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)))), file('Problems/NUM/NUM668+4.p',help_fimplies_2_1_U)).
fof(help_fimplies_1_1_U, axiom, (! [P,Q] : (pp(P) | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)))), file('Problems/NUM/NUM668+4.p',help_fimplies_1_1_U)).
fof(help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U, axiom, (! [P,X7] : (~ pp(aa_TPTP_ind_bool(P,X7)) | pp(fEx_TPTP_ind(P)))), file('Problems/NUM/NUM668+4.p',help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U)).
fof(help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T, axiom, (! [X7,Y] : (X7 != Y | pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)))), file('Problems/NUM/NUM668+4.p',help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T)).
fof(help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T, axiom, (! [X7,Y] : ((gg_TPTP_ind(X7) & gg_TPTP_ind(Y)) => (~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)) | X7 = Y))), file('Problems/NUM/NUM668+4.p',help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T)).
fof(help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U, axiom, (! [P,Q,R] : aa_TPTP_ind_bool(cOMBS_2003118649l_bool(P,Q),R) = aa_bool_bool(aa_TPT2142672771l_bool(P,R),aa_TPTP_ind_bool(Q,R))), file('Problems/NUM/NUM668+4.p',help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U)).
fof(help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U, axiom, (! [P,Q,R] : aa_TPTP_ind_bool(aa_TPT43085870d_bool(cOMBC_1555011498d_bool(P),Q),R) = aa_TPTP_ind_bool(aa_TPT43085870d_bool(P,R),Q)), file('Problems/NUM/NUM668+4.p',help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U)).
fof(help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U, axiom, (! [P,Q,R] : aa_TPT2142672771l_bool(cOMBB_658106424TP_ind(P,Q),R) = aa_boo1142376798l_bool(P,aa_TPTP_ind_bool(Q,R))), file('Problems/NUM/NUM668+4.p',help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U)).
fof(fact_def__n__some, axiom, scratc341337455n_some = scratc1744996461l_some(scratc621356814nd_nat), file('Problems/NUM/NUM668+4.p',fact_def__n__some)).
fof(fact_def__l__some, axiom, (! [X,Xa] : (pp(aa_fun171081125l_bool(scratc1744996461l_some(X),Xa)) <=> pp(scratc114925186_d_not(aa_fun171081125l_bool(scratc486852005all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),scratc622275194nd_non(X,Xa)))))), file('Problems/NUM/NUM668+4.p',fact_def__l__some)).
fof(fact_def__non, axiom, (! [X,Xa,Xb] : (pp(aa_TPTP_ind_bool(scratc622275194nd_non(X,Xa),Xb)) <=> pp(scratc114925186_d_not(aa_TPTP_ind_bool(Xa,Xb))))), file('Problems/NUM/NUM668+4.p',fact_def__non)).
fof(fact_def__d__not, axiom, (! [X] : (pp(scratc114925186_d_not(X)) <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc580836473nd_imp,X),fFalse)))), file('Problems/NUM/NUM668+4.p',fact_def__d__not)).
fof(fact_def__imp, axiom, scratc580836473nd_imp = fimplies, file('Problems/NUM/NUM668+4.p',fact_def__imp)).
fof(fact_def__all, axiom, (! [X] : scratc514678830nd_all(X) = scratc486852005all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X))), file('Problems/NUM/NUM668+4.p',fact_def__all)).
fof(fact_ATP_Olambda__93, axiom, (! [Uu,Uua] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu),Uua)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2117898680bnd_in,Uua),Uu)))), file('Problems/NUM/NUM668+4.p',fact_ATP_Olambda__93)).
fof(fact_def__all__of, axiom, (! [X,Xa] : (pp(aa_fun171081125l_bool(scratc486852005all_of(X),Xa)) <=> (! [X2] : (gg_TPTP_ind(X2) => (scratc1020004404_is_of(X2,X) => pp(aa_TPTP_ind_bool(Xa,X2))))))), file('Problems/NUM/NUM668+4.p',fact_def__all__of)).
fof(fact_def__is__of, axiom, (! [X,Xa] : (scratc1020004404_is_of(X,Xa) <=> pp(aa_TPTP_ind_bool(Xa,X)))), file('Problems/NUM/NUM668+4.p',fact_def__is__of)).
fof(fact_def__diffprop, axiom, (! [X,Xa,Xb] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1063865531ffprop(X),Xa),Xb)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80655173d_n_is,X),aa_TPTP_ind_TPTP_ind(scratc81114359d_n_pl(Xa),Xb))))), file('Problems/NUM/NUM668+4.p',fact_def__diffprop)).
fof(gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind, axiom, (! [B_1,B_2] : gg_TPTP_ind(aa_TPTP_ind_TPTP_ind(B_1,B_2))), file('Problems/NUM/NUM668+4.p',gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind)).
fof(fact_def__d__29__ii, axiom, (! [X,Xa] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc420596088_29_ii,X),Xa)) <=> pp(aa_fun171081125l_bool(scratc341337455n_some,aa_TPT43085870d_bool(scratc1063865531ffprop(X),Xa))))), file('Problems/NUM/NUM668+4.p',fact_def__d__29__ii)).
fof(conj_0, conjecture, pp(aa_fun171081125l_bool(scratc486852005all_of(aTP_Lamm_a),aTP_Lamm_ab)), file('Problems/NUM/NUM668+4.p',conj_0)).
fof(conj_0_neg, negated_conjecture, ~ (pp(aa_fun171081125l_bool(scratc486852005all_of(aTP_Lamm_a),aTP_Lamm_ab))), inference(negate_conjecture,[status(cth)],[conj_0])).
fof(fact_ATP_Olambda__13, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_a,Uu)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2117898680bnd_in,Uu),scratc621356814nd_nat)))), file('Problems/NUM/NUM668+4.p',fact_ATP_Olambda__13)).
fof(fact_ATP_Olambda__50, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_ab,Uu)) <=> pp(aa_fun171081125l_bool(scratc486852005all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_aa,Uu))))), file('Problems/NUM/NUM668+4.p',fact_ATP_Olambda__50)).
fof(fact_ATP_Olambda__78, axiom, (! [Uu,Uua] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_aa,Uu),Uua)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc420596088_29_ii,aa_TPTP_ind_TPTP_ind(scratc81114359d_n_pl(Uu),Uua)),Uu)))), file('Problems/NUM/NUM668+4.p',fact_ATP_Olambda__78)).
fof(eq_iff, plain, (! [X,Y] : ((gg_TPTP_ind(X) & gg_TPTP_ind(Y)) => (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc80655173d_n_is,X),Y)) <=> X = Y))), inference(lemma,[status(thm)],[fact_def__n__is,fact_def__e__is,help_pp_2_1_U,help_fconj_3_1_U,help_fconj_2_1_U,help_fconj_1_1_U,help_fFalse_1_1_T,help_fFalse_1_1_U,help_fimplies_3_1_U,help_fimplies_2_1_U,help_fimplies_1_1_U,help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U,help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T,help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T,help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U,help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U,help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U])).
fof(some_i, plain, (! [P,U] : ((gg_TPTP_ind(U) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2117898680bnd_in,U),scratc621356814nd_nat)) & pp(aa_TPTP_ind_bool(P,U))) => pp(aa_fun171081125l_bool(scratc341337455n_some,P)))), inference(lemma,[status(thm)],[fact_def__n__some,fact_def__l__some,fact_def__non,fact_def__d__not,fact_def__imp,fact_def__all,fact_ATP_Olambda__93,fact_def__all__of,fact_def__is__of,help_pp_2_1_U,help_fconj_3_1_U,help_fconj_2_1_U,help_fconj_1_1_U,help_fFalse_1_1_T,help_fFalse_1_1_U,help_fimplies_3_1_U,help_fimplies_2_1_U,help_fimplies_1_1_U,help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U,help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T,help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T,help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U,help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U,help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U])).
fof(dw, plain, (! [X,Y] : ((gg_TPTP_ind(X) & gg_TPTP_ind(Y)) => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1063865531ffprop(aa_TPTP_ind_TPTP_ind(scratc81114359d_n_pl(X),Y)),X),Y)))), inference(lemma,[status(thm)],[fact_def__diffprop,eq_iff,gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind])).
fof(g18, plain, (! [X,Y] : ((gg_TPTP_ind(X) & gg_TPTP_ind(Y) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2117898680bnd_in,X),scratc621356814nd_nat)) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2117898680bnd_in,Y),scratc621356814nd_nat))) => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc420596088_29_ii,aa_TPTP_ind_TPTP_ind(scratc81114359d_n_pl(X),Y)),X)))), inference(lemma,[status(thm)],[fact_def__d__29__ii,dw,some_i])).
fof(done, plain, $false, inference(lemma,[status(thm)],[conj_0_neg,g18,fact_def__all__of,fact_def__is__of,fact_ATP_Olambda__13,fact_ATP_Olambda__50,fact_ATP_Olambda__78])).
% SZS output end Refutation for NUM668+4
%------------------------------------------------------------------------------
