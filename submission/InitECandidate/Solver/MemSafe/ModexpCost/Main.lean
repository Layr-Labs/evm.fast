import InitECandidate.Solver.MemSafe.ModexpCost.Body
import InitECandidate.Solver.MemSafe.ModexpCost.PreTail
import InitECandidate.Solver.MemSafe.ModexpCost.Pre
import InitECandidate.Solver.MemSafe.ModexpCost.Callee
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ModexpCost
variable {σ : Type}
theorem cc_pre_modexp : CalleeCost σ guestCtx (nm "pre_modexp") (10^47) := by
 apply PairCost.Core.callee_of_body pre_code
 exact pre_whole_cost (pre_tail_cost (callee_cost body_cost))
#print axioms cc_pre_modexp
end InitECandidate.Solver.MemSafe.ModexpCost
