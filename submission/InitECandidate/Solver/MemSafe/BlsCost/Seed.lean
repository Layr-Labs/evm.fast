import InitECandidate.Solver.MemSafe.ConstCost.Prim.C14
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def table0 := ConstCost.Prim.table14
theorem table0_sound : TblSound σ guestCtx table0 := ConstCost.Prim.table14_sound
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.BlsCost.Callees
