# Suggested status changes (TPTP v10.0.0 -> verified result)

4 problems whose TPTP status appears to be **wrong**, then 88 problems with status Unknown/Open that are now settled.

## 🔴 Status appears to be wrong

| | Problem | TPTP v10.0.0 | Should be | Evidence |
|---|---|---|---|---|
| 🔴 | **GRP740-1** | **Unsatisfiable** | **Satisfiable** | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/GRP/GRP740-1/ClaudeOpus---5.5.SAT-Mod.s): The clause set asks for a non-associative commutative Moufang loop. Such loops exist (smallest order 81, Bruck); the file has an 81-element model on Z3^4, checked in Lean by `decide`. |
| 🔴 | **SEU260+1** | **CounterSatisfiable** | **Theorem** | [ClaudeOpus---5.5.THM-Ref.s](Solutions/SEU/SEU260+1/ClaudeOpus---5.5.THM-Ref.s): MPTP t53_wellord1 (bushy). Our proof is GDV-verified (Vampire) and checked step by step with E; unless the axioms are inconsistent, the status is Theorem. |
| 🔴 | **SEU289+1** | **CounterSatisfiable** | **Theorem** | [ClaudeOpus---5.5.THM-Ref.s](Solutions/SEU/SEU289+1/ClaudeOpus---5.5.THM-Ref.s): MPTP t28_wellord2 (bushy). Our proof is GDV-verified (Vampire) and checked step by step with E; unless the axioms are inconsistent, the status is Theorem. |
| 🔴 | **ALG301-1** | **Satisfiable** | **Open** | no solution file: The single identity is the Equational Theories Project law E5093, which has no nontrivial finite model; whether it has a nontrivial (necessarily infinite) model is listed there as open, so the status Satisfiable is unsupported. |

## Unknown/Open problems now settled

| Problem | TPTP v10.0.0 | Verified | Solution file |
|---|---|---|---|
| FLD044-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD044-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD045-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD045-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD045-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD045-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD046-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD046-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD047-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD047-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD047-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD047-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD048-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD048-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD048-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD048-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD051-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD051-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD051-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD051-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD052-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD052-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD052-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD052-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD053-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD053-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD053-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD053-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD054-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD054-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD054-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD054-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD072-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD072-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD073-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD073-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD073-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD073-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD074-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD074-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD074-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD074-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD075-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD075-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD075-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD075-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD076-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD076-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD076-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD076-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD077-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD077-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD077-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD077-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD078-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD078-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD078-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD078-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD079-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD079-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD079-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD079-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD080-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD080-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD080-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD080-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD081-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD081-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD081-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD081-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD082-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD082-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD083-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD083-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD084-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD084-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD085-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD085-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD086-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD086-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD087-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD087-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD089-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD089-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD092-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD092-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD094-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD094-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD095-2 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/FLD/FLD095-2/ClaudeOpus---5.5.SAT-Mod.s) |
| FLD096-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD096-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD096-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD096-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD097-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD097-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD097-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD097-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD098-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD098-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD098-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD098-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD099-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD099-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD099-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD099-2/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD100-1 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD100-1/ClaudeOpus---5.5.UNS-Ref.s) |
| FLD100-2 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-Ref.s](Solutions/FLD/FLD100-2/ClaudeOpus---5.5.UNS-Ref.s) |
| RNG010-5 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-CRf.s](Solutions/RNG/RNG010-5/ClaudeOpus---5.5.UNS-CRf.s) |
| RNG010-6 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-CRf.s](Solutions/RNG/RNG010-6/ClaudeOpus---5.5.UNS-CRf.s) |
| RNG010-7 | Unknown | Unsatisfiable | [ClaudeOpus---5.5.UNS-CRf.s](Solutions/RNG/RNG010-7/ClaudeOpus---5.5.UNS-CRf.s) |
| SET086-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET086-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET086-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET086-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET087-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET087-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET087-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET087-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET088-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET088-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET088-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET088-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET089-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET089-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET089-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET089-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET090-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET090-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET091-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET091-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET091-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET091-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET092-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET092-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET092-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET092-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET109-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET109-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET109-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET109-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET110-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET110-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET110-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET110-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET111-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET111-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET111-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET111-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET112-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET112-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET112-7 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET112-7/ClaudeOpus---5.5.SAT-Mod.s) |
| SET113-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET113-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET114-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET114-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET115-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET115-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET116-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET116-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET119-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET119-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET120-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET120-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET121-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET121-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SET122-6 | Unknown | Satisfiable | [ClaudeOpus---5.5.SAT-Mod.s](Solutions/SET/SET122-6/ClaudeOpus---5.5.SAT-Mod.s) |
| SEU093+1 | Unknown | Theorem | [ClaudeOpus---5.5.THM-Ref.s](Solutions/SEU/SEU093+1/ClaudeOpus---5.5.THM-Ref.s) |
