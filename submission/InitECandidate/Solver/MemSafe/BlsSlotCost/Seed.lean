import InitECandidate.Solver.MemSafe.BlsSlotCost.Core
import InitECandidate.Solver.MemSafe.BlsSlotCost.PrecompileOne
import InitECandidate.Solver.MemSafe.BlsCost.HotSeed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
variable {σ : Type}
def table0 := BlsCost.Callers.table0
theorem table0_sound : TblSound σ guestCtx table0 := BlsCost.Callers.table0_sound
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
