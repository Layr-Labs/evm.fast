import InitECandidate.Solver.MemSafe.SlotCost.Core
import InitECandidate.Solver.MemSafe.SlotCost.Compare
import InitECandidate.Solver.MemSafe.SeqCost.Callers.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SlotCost.Callees
variable {σ : Type}
def table0 := SlotCost.Core.extend SeqCost.Callers.table10 (nm "bal_sort_gt") 33
theorem table0_sound : TblSound σ guestCtx table0 := SlotCost.Core.extend_sound SeqCost.Callers.table10_sound SlotCost.Compare.callee_bound
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.SlotCost.Callees
