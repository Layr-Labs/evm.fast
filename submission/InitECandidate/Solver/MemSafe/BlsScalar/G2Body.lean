import InitECandidate.Solver.MemSafe.BlsScalar.Stage
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.BlsScalar.Parts
namespace InitECandidate.Solver.MemSafe.BlsScalar.G2Body
variable {σ : Type}
def bound : Nat := 73788033612712725368
theorem stage_eq : parts2.2 = stage rest2 tail2 := by cbv
theorem body_eq : CryptoCost.Stem.splice parts2.1 parts2.2 = InitECandidate.Solver.MemSafe.BlsScalar.Parts.body2 := by cbv
theorem body_cost : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 10) InitECandidate.Solver.MemSafe.BlsScalar.Parts.body2 bound := by
 have hr : Cost σ guestCtx rest2 1649267450179 := PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
 have ht : Cost σ guestCtx tail2 137438953511 := PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
 have hi : Keeps σ (nm "i") rest2 := keepsB_sound _ _ (by cbv)
 have hs : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 10) parts2.2 1057317874518891 := by
  rw [stage_eq]
  exact InitECandidate.Solver.MemSafe.BlsScalar.Stage.cost hr ht hi
 have h := InitECandidate.Solver.MemSafe.BlsScalar.Stem.sound hs parts2.1 73788033612712725368 (by cbv) (by cbv)
 simpa only [body_eq,bound] using h
#print axioms body_cost
end InitECandidate.Solver.MemSafe.BlsScalar.G2Body
