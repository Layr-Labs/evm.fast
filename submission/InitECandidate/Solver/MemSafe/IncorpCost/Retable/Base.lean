import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S040
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def table0 := ReceiptCost.Retable.table40
theorem table0_sound : TblSound σ guestCtx table0 := ReceiptCost.Retable.table40_sound
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
