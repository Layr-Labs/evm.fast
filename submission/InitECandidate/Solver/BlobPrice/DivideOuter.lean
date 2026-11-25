import InitECandidate.Solver.BlobPrice.Div64Bound
import InitECandidate.Solver.MemSafe.Helpers.Divmnu

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace DivideOuter
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.Spec InitECandidate.Solver.SourceCost
open InitECandidate.Solver.MemSafe.Helpers
open AcceptedCostOverrideRules

private def table : TblState := ([(nm "div64by32",32)], [], [])
private theorem sound {σ : Type} : StateSound σ guestCtx table :=
  overrideCost_sound stateSound_empty Div64Bound.callee

abbrev bodyPrice : Nat := 55340232221128654884
theorem bodyCost {σ : Type} : Cost σ guestCtx dvBody3 bodyPrice :=
  CompactCostReplay.program_cost sound (by decide_cbv)

/-- The quotient has at most nine 32-bit places when both input lengths are at most eight. -/
theorem loopCost {σ : Type} :
    Inv.CostP σ guestCtx (fun s => wordOf s (nm "j") ≤ 9) dvL3 (9 * (bodyPrice+1)) :=
  BoundedCountdown.loop_cost (i := nm "j") (nonzeroVar_sound (by decide_cbv))
    (stepsB_sound (nm "j") false _ (by decide_cbv)) bodyCost

theorem quotientStart {m n : BitVec 64} (hm : m.toNat ≤ 8) (hn : n.toNat ≤ m.toNat) :
    ((m - n) + 1).toNat ≤ 9 := by
  have leword : n ≤ m := by simpa only [BitVec.le_def] using hn
  have bounded : (m-n).toNat + (1 : BitVec 64).toNat < 2^64 := by
    rw [BitVec.toNat_sub_of_le leword]
    change m.toNat - n.toNat + 1 < 2 ^ 64
    omega
  rw [BitVec.toNat_add_of_lt bounded, BitVec.toNat_sub_of_le leword]
  change m.toNat - n.toNat + 1 ≤ 9
  omega

#print axioms loopCost
end DivideOuter
