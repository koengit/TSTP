elab "add_digit_bounds" : tactic => withMainContext do
  for d in (← getLCtx) do
    if d.isImplementationDetail then continue
    if ← Meta.isDefEq d.type (mkConst ``M) then
      let pf := mkApp (mkConst ``digitOf_le) d.toExpr
      let ty ← Meta.inferType pf
      liftMetaTactic fun g => do
        let g ← g.assert `hd ty pf
        let (_, g) ← g.intro1P
        return [g]
