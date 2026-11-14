import InitECandidate.Solver.MemSafe.BlsScalar.Stage
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.BlsScalar.Parts
namespace InitECandidate.Solver.MemSafe.BlsScalar.G1Body
variable {σ : Type}
def bound : Nat := 73787152629017350763
theorem stage_eq : parts1.2 = stage rest1 tail1 := by cbv
theorem body_eq : CryptoCost.Stem.splice parts1.1 parts1.2 = InitECandidate.Solver.MemSafe.BlsScalar.Parts.body1 := by cbv
theorem body_cost : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 10) InitECandidate.Solver.MemSafe.BlsScalar.Parts.body1 bound := by
 have hr : Cost σ guestCtx rest1 274877909813 := PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
 have ht : Cost σ guestCtx tail1 137438953511 := PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
 have hi : Keeps σ (nm "i") rest1 := keepsB_sound _ _ (by cbv)
 have hs : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 10) parts1.2 176334179144285 := by
  rw [stage_eq]
  exact InitECandidate.Solver.MemSafe.BlsScalar.Stage.cost hr ht hi
 have h := InitECandidate.Solver.MemSafe.BlsScalar.Stem.sound hs parts1.1 73787152629017350763 (by cbv) (by cbv)
 simpa only [body_eq,bound] using h
#print axioms body_cost
end InitECandidate.Solver.MemSafe.BlsScalar.G1Body
