import InitECandidate.Solver.MemSafe.DelegationCost.Shape
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.DelegationCost
variable {σ : Type}
def bodyB : Nat := 888136978026197466234665924320360953439679
theorem body_cost : Cost σ guestCtx body bodyB :=
 PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
#print axioms body_cost
end InitECandidate.Solver.MemSafe.DelegationCost
