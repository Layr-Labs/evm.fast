import InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def table0 := BlsSlotCost.Bigint.table5
theorem table0_sound : TblSound σ guestCtx table0 := BlsSlotCost.Bigint.table5_sound
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
