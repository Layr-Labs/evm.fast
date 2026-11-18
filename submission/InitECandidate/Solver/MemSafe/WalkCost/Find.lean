import InitECandidate.Solver.MemSafe.WalkCost.Rule
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
namespace InitECandidate.Solver.MemSafe.WalkCost.Htab
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
variable {σ : Type}
def bFind : Nat := 2^35+2
theorem loop_body_cost : Cost σ guestCtx Inv.findLoopBody 0 :=
 PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
theorem body_cost : Cost σ guestCtx Inv.findBody bFind := by
 have hw := InitECandidate.Solver.MemSafe.WalkCost.loopReadOk_sound guestCtx_bounded InitECandidate.Solver.MemSafe.WalkCost.find_loop_ok (loop_body_cost (σ := σ))
 unfold Inv.findBody
 apply cost_dec
 apply cost_dec
 apply cost_dec
 simpa only [bFind,Nat.zero_add,Nat.mul_one,Nat.add_zero] using cost_seq hw (cost_return (lv (nm "n")))
theorem cc_find : CalleeCost σ guestCtx (nm "htab_find_leaf") bFind :=
 PairCost.Core.callee_of_body Inv.code_htab_find_leaf body_cost
#print axioms cc_find
end InitECandidate.Solver.MemSafe.WalkCost.Htab
