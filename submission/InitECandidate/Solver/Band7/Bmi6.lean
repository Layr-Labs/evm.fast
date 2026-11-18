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

def bBmi : Nat := bTop

theorem bTop_eq : bTop = bBmi := rfl

/-- **`build_mpt_indexed`'s conditional cost, literal bound** (about `2^261`). -/
theorem hypBmiCost_lit :
    MemSafe.Eb.HypBmiCost σ bBmi :=
  Inv.CalleeCostP.mono bmi_condCost7 (Nat.le_refl _)

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.hypBmiCost_lit
