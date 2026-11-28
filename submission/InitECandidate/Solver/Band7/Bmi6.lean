import InitECandidate.Solver.Band7.Bmi5

set_option autoImplicit false

/-!
# `build_mpt_indexed`: the literal bound (Band7)

`hypBmiCost_lit : Eb.HypBmiCost σ B` at the plain `Eb.BmiPreC`.
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

def bBmi : Nat :=
  6949460632004596789485027832616145239543168717527527731265

theorem bTop_le : bTop ≤ bBmi := by decide +kernel

/-- **`build_mpt_indexed`'s conditional cost, literal bound**. -/
theorem hypBmiCost_lit :
    MemSafe.Eb.HypBmiCost σ 6949460632004596789485027832616145239543168717527527731265 :=
  Inv.CalleeCostP.mono bmi_condCost7 bTop_le

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.hypBmiCost_lit
