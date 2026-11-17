%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM636+4 : TPTP v10.0.0. Released v7.3.0.
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
%            specific calculus rule). Notes: Landau Grundlagen satz2 (x' != x), HOL->FOL encoding;
%            induction
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for NUM636+4
% SZS output start Refutation for NUM636+4
fof(fact_def__nis, axiom, (! [X,Xa] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2088211583nd_nis,X),Xa)) <=> pp(scratc561180296_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1975714239d_n_is,X),Xa))))), file('Problems/NUM/NUM636+4.p',fact_def__nis)).
fof(fact_def__d__not, axiom, (! [X] : (pp(scratc561180296_d_not(X)) <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc2047166451nd_imp,X),fFalse)))), file('Problems/NUM/NUM636+4.p',fact_def__d__not)).
fof(fact_def__n__is, axiom, scratc1975714239d_n_is = scratc309570230d_e_is(scratc2087686792nd_nat), file('Problems/NUM/NUM636+4.p',fact_def__n__is)).
fof(fact_def__e__is, axiom, (! [X] : scratc309570230d_e_is(X) = fequal_TPTP_ind), file('Problems/NUM/NUM636+4.p',fact_def__e__is)).
fof(fact_def__imp, axiom, scratc2047166451nd_imp = fimplies, file('Problems/NUM/NUM636+4.p',fact_def__imp)).
fof(help_fFalse_1_1_T, axiom, (! [P] : (gg_bool(P) => (P = fTrue | P = fFalse))), file('Problems/NUM/NUM636+4.p',help_fFalse_1_1_T)).
fof(help_fFalse_1_1_U, axiom, ~ pp(fFalse), file('Problems/NUM/NUM636+4.p',help_fFalse_1_1_U)).
fof(help_fimplies_3_1_U, axiom, (! [P,Q] : (~ pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) | ~ pp(P) | pp(Q))), file('Problems/NUM/NUM636+4.p',help_fimplies_3_1_U)).
fof(help_fimplies_2_1_U, axiom, (! [Q,P] : (~ pp(Q) | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)))), file('Problems/NUM/NUM636+4.p',help_fimplies_2_1_U)).
fof(help_fimplies_1_1_U, axiom, (! [P,Q] : (pp(P) | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)))), file('Problems/NUM/NUM636+4.p',help_fimplies_1_1_U)).
fof(help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T, axiom, (! [X7,Y] : (X7 != Y | pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)))), file('Problems/NUM/NUM636+4.p',help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T)).
fof(help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T, axiom, (! [X7,Y] : ((gg_TPTP_ind(X7) & gg_TPTP_ind(Y)) => (~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)) | X7 = Y))), file('Problems/NUM/NUM636+4.p',help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T)).
fof(fact_k__SepE1, axiom, (! [X0,X12,X22] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X22),aa_fun1431113780TP_ind(scratc337463667_d_Sep(X0),X12))) => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X22),X0)))), file('Problems/NUM/NUM636+4.p',fact_k__SepE1)).
fof(fact_def__d__Subq, axiom, (! [X,Xa] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1148913756d_Subq,X),Xa)) <=> (! [X2] : (gg_TPTP_ind(X2) => (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X2),X)) => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X2),Xa))))))), file('Problems/NUM/NUM636+4.p',fact_def__d__Subq)).
fof(fact_k__PowerI, axiom, (! [X0,X12] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1148913756d_Subq,X12),X0)) => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc1909866188_power,X0))))), file('Problems/NUM/NUM636+4.p',fact_k__PowerI)).
fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind, axiom, (! [B_1,B_2] : gg_TPTP_ind(aa_fun1431113780TP_ind(B_1,B_2))), file('Problems/NUM/NUM636+4.p',gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind)).
fof(fact_n__1__p, axiom, scratc1466259514_is_of(scratc820767612nd_n_1,aTP_Lamm_a), file('Problems/NUM/NUM636+4.p',fact_n__1__p)).
fof(fact_def__is__of, axiom, (! [X,Xa] : (scratc1466259514_is_of(X,Xa) <=> pp(aa_TPTP_ind_bool(Xa,X)))), file('Problems/NUM/NUM636+4.p',fact_def__is__of)).
fof(fact_ATP_Olambda__6, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_a,Uu)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,Uu),scratc2087686792nd_nat)))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__6)).
fof(fact_def__n__1, axiom, scratc820767612nd_n_1 = aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,scratc954648526ptyset), file('Problems/NUM/NUM636+4.p',fact_def__n__1)).
fof(gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind, axiom, (! [B_1,B_2] : gg_TPTP_ind(aa_TPTP_ind_TPTP_ind(B_1,B_2))), file('Problems/NUM/NUM636+4.p',gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind)).
fof(fact_n__ax3, axiom, pp(aa_fun171081125l_bool(scratc2026207007all_of(aTP_Lamm_a),aTP_Lamm_bs)), file('Problems/NUM/NUM636+4.p',fact_n__ax3)).
fof(fact_def__all__of, axiom, (! [X,Xa] : (pp(aa_fun171081125l_bool(scratc2026207007all_of(X),Xa)) <=> (! [X2] : (gg_TPTP_ind(X2) => (scratc1466259514_is_of(X2,X) => pp(aa_TPTP_ind_bool(Xa,X2))))))), file('Problems/NUM/NUM636+4.p',fact_def__all__of)).
fof(fact_ATP_Olambda__4, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_bs,Uu)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2088211583nd_nis,aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,Uu)),scratc820767612nd_n_1)))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__4)).
fof(fact_ATP_Olambda__2, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_aa,Uu)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2088211583nd_nis,aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,Uu)),Uu)))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__2)).
fof(fact_k__SepI, axiom, (! [X0,X12,X22] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X22),X0)) => (pp(aa_TPTP_ind_bool(X12,X22)) => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X22),aa_fun1431113780TP_ind(scratc337463667_d_Sep(X0),X12)))))), file('Problems/NUM/NUM636+4.p',fact_k__SepI)).
fof(fact_suc__p, axiom, pp(aa_fun171081125l_bool(scratc2026207007all_of(aTP_Lamm_a),aTP_Lamm_bt)), file('Problems/NUM/NUM636+4.p',fact_suc__p)).
fof(fact_ATP_Olambda__3, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_bt,Uu)) <=> scratc1466259514_is_of(aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,Uu),aTP_Lamm_a))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__3)).
fof(fact_n__ax4, axiom, pp(aa_fun171081125l_bool(scratc2026207007all_of(aTP_Lamm_a),aTP_Lamm_br)), file('Problems/NUM/NUM636+4.p',fact_n__ax4)).
fof(fact_ATP_Olambda__7, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_br,Uu)) <=> pp(aa_fun171081125l_bool(scratc2026207007all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bq,Uu))))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__7)).
fof(fact_ATP_Olambda__14, axiom, (! [Uu,Uua] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bq,Uu),Uua)) <=> (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1975714239d_n_is,aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,Uua))) => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1975714239d_n_is,Uu),Uua))))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__14)).
fof(fact_k__SepE2, axiom, (! [X0,X12,X22] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X22),aa_fun1431113780TP_ind(scratc337463667_d_Sep(X0),X12))) => pp(aa_TPTP_ind_bool(X12,X22)))), file('Problems/NUM/NUM636+4.p',fact_k__SepE2)).
fof(fact_def__cond1, axiom, scratc2053496758_cond1 = aa_TPT43085870d_bool(scratc1975714234d_n_in,scratc820767612nd_n_1), file('Problems/NUM/NUM636+4.p',fact_def__cond1)).
fof(fact_def__n__in, axiom, scratc1975714234d_n_in = scratc404541500d_esti(scratc2087686792nd_nat), file('Problems/NUM/NUM636+4.p',fact_def__n__in)).
fof(fact_def__esti, axiom, (! [X] : scratc404541500d_esti(X) = scratc908175294bnd_in), file('Problems/NUM/NUM636+4.p',fact_def__esti)).
fof(fact_def__cond2, axiom, (! [X] : (pp(aa_TPTP_ind_bool(scratc2053496759_cond2,X)) <=> pp(aa_fun171081125l_bool(scratc2026172588_n_all,aa_TPT43085870d_bool(aTP_Lamm_ab,X))))), file('Problems/NUM/NUM636+4.p',fact_def__cond2)).
fof(fact_def__n__all, axiom, scratc2026172588_n_all = scratc1981008808nd_all(scratc2087686792nd_nat), file('Problems/NUM/NUM636+4.p',fact_def__n__all)).
fof(fact_def__all, axiom, (! [X] : scratc1981008808nd_all(X) = scratc2026207007all_of(aa_TPT43085870d_bool(aTP_Lamm_ae,X))), file('Problems/NUM/NUM636+4.p',fact_def__all)).
fof(fact_ATP_Olambda__16, axiom, (! [Uu,Uua] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ab,Uu),Uua)) <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc2047166451nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1975714234d_n_in,Uua),Uu)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1975714234d_n_in,aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,Uua)),Uu))))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__16)).
fof(fact_ATP_Olambda__23, axiom, (! [Uu,Uua] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ae,Uu),Uua)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,Uua),Uu)))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__23)).
fof(fact_n__ax5, axiom, pp(aa_fun171081125l_bool(scratc2026207007all_of(aTP_Lamm_bn),aTP_Lamm_bp)), file('Problems/NUM/NUM636+4.p',fact_n__ax5)).
fof(fact_ATP_Olambda__5, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_bn,Uu)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,Uu),aa_TPTP_ind_TPTP_ind(scratc1909866188_power,scratc2087686792nd_nat))))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__5)).
fof(fact_ATP_Olambda__1, axiom, (! [Uu] : (pp(aa_TPTP_ind_bool(aTP_Lamm_bp,Uu)) <=> (pp(aa_TPTP_ind_bool(scratc2053496758_cond1,Uu)) => (pp(aa_TPTP_ind_bool(scratc2053496759_cond2,Uu)) => pp(aa_fun171081125l_bool(scratc2026207007all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bo,Uu))))))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__1)).
fof(conj_0, conjecture, pp(aa_fun171081125l_bool(scratc2026207007all_of(aTP_Lamm_a),aTP_Lamm_aa)), file('Problems/NUM/NUM636+4.p',conj_0)).
fof(conj_0_neg, negated_conjecture, ~ (pp(aa_fun171081125l_bool(scratc2026207007all_of(aTP_Lamm_a),aTP_Lamm_aa))), inference(negate_conjecture,[status(cth)],[conj_0])).
fof(fact_ATP_Olambda__21, axiom, (! [Uu,Uua] : (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bo,Uu),Uua)) <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1975714234d_n_in,Uua),Uu)))), file('Problems/NUM/NUM636+4.p',fact_ATP_Olambda__21)).
fof(nis_iff, plain, (! [X,Y] : ((gg_TPTP_ind(X) & gg_TPTP_ind(Y)) => (pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2088211583nd_nis,X),Y)) <=> X != Y))), inference(lemma,[status(thm)],[fact_def__nis,fact_def__d__not,fact_def__n__is,fact_def__e__is,fact_def__imp,help_fFalse_1_1_T,help_fFalse_1_1_U,help_fimplies_3_1_U,help_fimplies_2_1_U,help_fimplies_1_1_U,help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T,help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T])).
fof(s_pow, plain, pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,aa_fun1431113780TP_ind(scratc337463667_d_Sep(scratc2087686792nd_nat),aTP_Lamm_aa)),aa_TPTP_ind_TPTP_ind(scratc1909866188_power,scratc2087686792nd_nat))), inference(lemma,[status(thm)],[fact_k__SepE1,fact_def__d__Subq,fact_k__PowerI,gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind])).
fof(one_nat, plain, (gg_TPTP_ind(scratc820767612nd_n_1) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,scratc820767612nd_n_1),scratc2087686792nd_nat))), inference(lemma,[status(thm)],[fact_n__1__p,fact_def__is__of,fact_ATP_Olambda__6,fact_def__n__1,gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind])).
fof(one_s, plain, pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,scratc820767612nd_n_1),aa_fun1431113780TP_ind(scratc337463667_d_Sep(scratc2087686792nd_nat),aTP_Lamm_aa))), inference(lemma,[status(thm)],[one_nat,fact_n__ax3,fact_def__all__of,fact_def__is__of,fact_ATP_Olambda__6,fact_ATP_Olambda__4,fact_ATP_Olambda__2,fact_k__SepI])).
fof(suc_nat, plain, (! [X] : ((gg_TPTP_ind(X) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X),scratc2087686792nd_nat))) => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,X)),scratc2087686792nd_nat)))), inference(lemma,[status(thm)],[fact_suc__p,fact_def__all__of,fact_def__is__of,fact_ATP_Olambda__6,fact_ATP_Olambda__3])).
fof(inj, plain, (! [X,Y] : ((gg_TPTP_ind(X) & gg_TPTP_ind(Y) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X),scratc2087686792nd_nat)) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,Y),scratc2087686792nd_nat)) & aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,X) = aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,Y)) => X = Y)), inference(lemma,[status(thm)],[fact_n__ax4,fact_def__all__of,fact_def__is__of,fact_ATP_Olambda__6,fact_ATP_Olambda__7,fact_ATP_Olambda__14,fact_def__n__is,fact_def__e__is,help_fFalse_1_1_T,help_fFalse_1_1_U,help_fimplies_3_1_U,help_fimplies_2_1_U,help_fimplies_1_1_U,help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T,help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T])).
fof(step, plain, (! [X] : ((gg_TPTP_ind(X) & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,X),aa_fun1431113780TP_ind(scratc337463667_d_Sep(scratc2087686792nd_nat),aTP_Lamm_aa)))) => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc908175294bnd_in,aa_TPTP_ind_TPTP_ind(scratc1108832938rdsucc,X)),aa_fun1431113780TP_ind(scratc337463667_d_Sep(scratc2087686792nd_nat),aTP_Lamm_aa))))), inference(lemma,[status(thm)],[fact_k__SepE1,fact_k__SepE2,fact_k__SepI,fact_ATP_Olambda__2,nis_iff,suc_nat,inj,gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind])).
fof(c1, plain, pp(aa_TPTP_ind_bool(scratc2053496758_cond1,aa_fun1431113780TP_ind(scratc337463667_d_Sep(scratc2087686792nd_nat),aTP_Lamm_aa))), inference(lemma,[status(thm)],[fact_def__cond1,fact_def__n__in,fact_def__esti,one_s])).
fof(c2, plain, pp(aa_TPTP_ind_bool(scratc2053496759_cond2,aa_fun1431113780TP_ind(scratc337463667_d_Sep(scratc2087686792nd_nat),aTP_Lamm_aa))), inference(lemma,[status(thm)],[fact_def__cond2,fact_def__n__all,fact_def__all,fact_def__all__of,fact_def__is__of,fact_ATP_Olambda__16,fact_ATP_Olambda__23,fact_def__n__in,fact_def__esti,fact_def__imp,step,help_fFalse_1_1_T,help_fFalse_1_1_U,help_fimplies_3_1_U,help_fimplies_2_1_U,help_fimplies_1_1_U,help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T,help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T])).
fof(ind, plain, pp(aa_fun171081125l_bool(scratc2026207007all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bo,aa_fun1431113780TP_ind(scratc337463667_d_Sep(scratc2087686792nd_nat),aTP_Lamm_aa)))), inference(lemma,[status(thm)],[fact_n__ax5,fact_def__all__of,fact_def__is__of,fact_ATP_Olambda__5,fact_ATP_Olambda__1,s_pow,c1,c2,gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind])).
fof(done, plain, $false, inference(lemma,[status(thm)],[conj_0_neg,ind,fact_def__all__of,fact_def__is__of,fact_ATP_Olambda__21,fact_def__n__in,fact_def__esti,fact_k__SepE2])).
% SZS output end Refutation for NUM636+4
%------------------------------------------------------------------------------
