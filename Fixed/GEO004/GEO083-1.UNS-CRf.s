%------------------------------------------------------------------------------
% File     : E---3.2.5
% Problem  : GEO083-1, with Axioms/GEO004-0.ax replaced by the fixed version in this folder (NOT TPTP v10.0.0)
% Result   : Unsatisfiable
% Output   : CNFRefutation
% Verified : GDV VerifiedGood (Vampire 5.1 as the trusted ATP), against the tptp4X-expanded problem with the fixed axioms
% Comments : Found by E 3.2.5 (--auto, 300 s) in the unguided sweep on Vera (run geo-fixed-300c); E's own derivation, leaves replaced by the problem's text (scratch/fix_leaves.py). Corollary 2.6(1): the sum is monotone; the meets are hypotheses, so the guarded sum_defn applies.
% Checking : GDV with the problem expanded by tptp4X against a TPTP tree whose Axioms/GEO004-0.ax is this folder's
%            (GDV's own include lookup must not see the unfixed file)
%------------------------------------------------------------------------------
% SZS status Unsatisfiable for GEO083-1 (FIXED GEO004-0; E 3.2.5 --auto, run geo-fixed-300 on Vera)
% SZS output start CNFRefutation
cnf(sum_defn_6, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,C) | incident_c(D,A)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', sum_defn_6)).
cnf(c8_44, axiom, (~ meet(A,B,C) | ax0_sk12(C,B) = sum(B,C)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', c8_44)).
cnf(corollary_2_6_1_69, negated_conjecture, (meet(sk17,sk14,sk16)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', corollary_2_6_1_69)).
cnf(part_of_defn_1, axiom, (~ part_of(A,B) | ~ incident_c(C,A) | incident_c(C,B)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', part_of_defn_1)).
cnf(part_of_defn_3, axiom, (~ incident_c(ax0_sk1(A,B),B) | part_of(A,B)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', part_of_defn_3)).
cnf(corollary_2_6_1_67, negated_conjecture, (part_of(sk15,sk16)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', corollary_2_6_1_67)).
cnf(part_of_defn_2, axiom, (incident_c(ax0_sk1(A,B),A) | part_of(A,B)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', part_of_defn_2)).
cnf(sum_defn_4, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,A) | incident_c(D,B) | incident_c(D,C)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', sum_defn_4)).
cnf(sum_defn_5, axiom, (~ meet(SMP,B,C) | A != sum(B,C) | ~ incident_c(D,B) | incident_c(D,A)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', sum_defn_5)).
cnf(corollary_2_6_1_68, negated_conjecture, (meet(sk17,sk14,sk15)), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', corollary_2_6_1_68)).
cnf(corollary_2_6_1_70, negated_conjecture, (~ part_of(sum(sk14,sk15),sum(sk14,sk16))), file('attempts/curves/fixed_proofs/GEO083-1.fixed.p', corollary_2_6_1_70)).
cnf(c_0_11, plain, (incident_c(X5,X4)|~meet(X1,X2,X3)|X4!=sum(X2,X3)|~incident_c(X5,X3)), inference(fof_simplification,[status(thm)],[sum_defn_6])).
cnf(c_0_12, plain, (ax0_sk12(X3,X2)=sum(X2,X3)|~meet(X1,X2,X3)), inference(fof_simplification,[status(thm)],[c8_44])).
cnf(c_0_13, plain, (incident_c(X5,X4)|~meet(X1,X2,X3)|X4!=sum(X2,X3)|~incident_c(X5,X3)), c_0_11).
cnf(c_0_14, plain, (ax0_sk12(X3,X2)=sum(X2,X3)|~meet(X1,X2,X3)), c_0_12).
cnf(c_0_15, negated_conjecture, (meet(sk17,sk14,sk16)), corollary_2_6_1_69).
cnf(c_0_16, plain, (incident_c(X3,X2)|~part_of(X1,X2)|~incident_c(X3,X1)), inference(fof_simplification,[status(thm)],[part_of_defn_1])).
cnf(c_0_17, plain, (part_of(X1,X2)|~incident_c(ax0_sk1(X1,X2),X2)), inference(fof_simplification,[status(thm)],[part_of_defn_3])).
cnf(c_0_18, plain, (incident_c(X1,sum(X2,X3))|~meet(X4,X2,X3)|~incident_c(X1,X3)), inference(er,[status(thm)],[c_0_13])).
cnf(c_0_19, negated_conjecture, (sum(sk14,sk16)=ax0_sk12(sk16,sk14)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
cnf(c_0_20, plain, (incident_c(X3,X2)|~part_of(X1,X2)|~incident_c(X3,X1)), c_0_16).
cnf(c_0_21, negated_conjecture, (part_of(sk15,sk16)), corollary_2_6_1_67).
cnf(c_0_22, plain, (part_of(X1,X2)|~incident_c(ax0_sk1(X1,X2),X2)), c_0_17).
cnf(c_0_23, negated_conjecture, (incident_c(X1,ax0_sk12(sk16,sk14))|~incident_c(X1,sk16)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_15]), c_0_19])).
cnf(c_0_24, negated_conjecture, (incident_c(X1,sk16)|~incident_c(X1,sk15)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
cnf(c_0_25, axiom, (incident_c(ax0_sk1(X1,X2),X1)|part_of(X1,X2)), part_of_defn_2).
cnf(c_0_26, plain, (incident_c(X5,X2)|incident_c(X5,X3)|~meet(X1,X2,X3)|X4!=sum(X2,X3)|~incident_c(X5,X4)), inference(fof_simplification,[status(thm)],[sum_defn_4])).
cnf(c_0_27, plain, (incident_c(X5,X4)|~meet(X1,X2,X3)|X4!=sum(X2,X3)|~incident_c(X5,X2)), inference(fof_simplification,[status(thm)],[sum_defn_5])).
cnf(c_0_28, negated_conjecture, (part_of(X1,ax0_sk12(sk16,sk14))|~incident_c(ax0_sk1(X1,ax0_sk12(sk16,sk14)),sk16)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
cnf(c_0_29, negated_conjecture, (incident_c(ax0_sk1(sk15,X1),sk16)|part_of(sk15,X1)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
cnf(c_0_30, plain, (incident_c(X5,X2)|incident_c(X5,X3)|~meet(X1,X2,X3)|X4!=sum(X2,X3)|~incident_c(X5,X4)), c_0_26).
cnf(c_0_31, plain, (incident_c(X5,X4)|~meet(X1,X2,X3)|X4!=sum(X2,X3)|~incident_c(X5,X2)), c_0_27).
cnf(c_0_32, negated_conjecture, (part_of(sk15,ax0_sk12(sk16,sk14))), inference(spm,[status(thm)],[c_0_28, c_0_29])).
cnf(c_0_33, plain, (incident_c(X1,X2)|incident_c(X1,X3)|~meet(X4,X3,X2)|~incident_c(X1,sum(X3,X2))), inference(er,[status(thm)],[c_0_30])).
cnf(c_0_34, negated_conjecture, (meet(sk17,sk14,sk15)), corollary_2_6_1_68).
cnf(c_0_35, negated_conjecture, (~part_of(sum(sk14,sk15),sum(sk14,sk16))), inference(fof_simplification,[status(thm)],[corollary_2_6_1_70])).
cnf(c_0_36, plain, (incident_c(X1,sum(X2,X3))|~meet(X4,X2,X3)|~incident_c(X1,X2)), inference(er,[status(thm)],[c_0_31])).
cnf(c_0_37, negated_conjecture, (incident_c(X1,ax0_sk12(sk16,sk14))|~incident_c(X1,sk15)), inference(spm,[status(thm)],[c_0_20, c_0_32])).
cnf(c_0_38, plain, (incident_c(ax0_sk1(sum(X1,X2),X3),X1)|incident_c(ax0_sk1(sum(X1,X2),X3),X2)|part_of(sum(X1,X2),X3)|~meet(X4,X1,X2)), inference(spm,[status(thm)],[c_0_33, c_0_25])).
cnf(c_0_39, negated_conjecture, (sum(sk14,sk15)=ax0_sk12(sk15,sk14)), inference(spm,[status(thm)],[c_0_14, c_0_34])).
cnf(c_0_40, negated_conjecture, (~part_of(sum(sk14,sk15),sum(sk14,sk16))), c_0_35).
cnf(c_0_41, negated_conjecture, (incident_c(X1,ax0_sk12(sk16,sk14))|~incident_c(X1,sk14)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_15]), c_0_19])).
cnf(c_0_42, negated_conjecture, (part_of(X1,ax0_sk12(sk16,sk14))|~incident_c(ax0_sk1(X1,ax0_sk12(sk16,sk14)),sk15)), inference(spm,[status(thm)],[c_0_22, c_0_37])).
cnf(c_0_43, negated_conjecture, (incident_c(ax0_sk1(ax0_sk12(sk15,sk14),X1),sk15)|incident_c(ax0_sk1(ax0_sk12(sk15,sk14),X1),sk14)|part_of(ax0_sk12(sk15,sk14),X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_34]), c_0_39]), c_0_39]), c_0_39])).
cnf(c_0_44, negated_conjecture, (~part_of(ax0_sk12(sk15,sk14),ax0_sk12(sk16,sk14))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40, c_0_39]), c_0_19])).
cnf(c_0_45, negated_conjecture, (part_of(X1,ax0_sk12(sk16,sk14))|~incident_c(ax0_sk1(X1,ax0_sk12(sk16,sk14)),sk14)), inference(spm,[status(thm)],[c_0_22, c_0_41])).
cnf(c_0_46, negated_conjecture, (incident_c(ax0_sk1(ax0_sk12(sk15,sk14),ax0_sk12(sk16,sk14)),sk14)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_44])).
cnf(c_0_47, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_44]), ['proof']).
% SZS output end CNFRefutation
