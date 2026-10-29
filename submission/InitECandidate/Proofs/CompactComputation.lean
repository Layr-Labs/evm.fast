import Lean

/-! Compact certificates for closed definitional equalities. This tactic submits
`Eq.refl` without first duplicating kernel conversion in the elaborator. Lean's
kernel still checks the declared equality; a wrong proposed result is rejected.
No native evaluation, additional axioms, or skipped kernel checks are used. -/

open Lean Elab Tactic in
elab "kernel_rfl" : tactic => do
  liftMetaTactic fun goal => do
    goal.refl (check := false)
    pure []
