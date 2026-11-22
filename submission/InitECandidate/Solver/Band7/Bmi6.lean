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
  5810264100468725117462607549120581772692477599993536979099629270891

theorem bTop_eq : bTop = bBmi := by decide +kernel

/-- **`build_mpt_indexed`'s conditional cost, literal bound**. -/
theorem hypBmiCost_lit :
    MemSafe.Eb.HypBmiCost σ 5810264100468725117462607549120581772692477599993536979099629270891 :=
  Inv.CalleeCostP.mono bmi_condCost7 (by rw [bTop_eq]; exact le_refl _)

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.hypBmiCost_lit
