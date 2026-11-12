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
  6484356997289713489883399332781977854032012983525739547991540440757885346705771

theorem bTop_eq : bTop = bBmi := by decide +kernel

/-- **`build_mpt_indexed`'s conditional cost, literal bound** (about `2^261`). -/
theorem hypBmiCost_lit :
    MemSafe.Eb.HypBmiCost σ 6484356997289713489883399332781977854032012983525739547991540440757885346705771 :=
  Inv.CalleeCostP.mono bmi_condCost7 (by rw [bTop_eq]; exact le_refl _)

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.hypBmiCost_lit
