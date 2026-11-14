import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
import InitECandidate.Solver.Spec.StateRestore
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FrameCost.Restore
variable {σ : Type}
def bSet : Nat := 36893490140283929150
def bDel : Nat := 92233720368547758087
def bRestore : Nat := 2^64 * (bSet+bDel+2)
theorem cc_set : CalleeCost σ guestCtx (nm "htab_set") bSet :=
 BlsCost.Callers.table12_sound _ _ (by cbv)
theorem cc_del : CalleeCost σ guestCtx (nm "htab_del") bDel :=
 BlsCost.Callers.table12_sound _ _ (by cbv)
theorem cc_restore : CalleeCost σ guestCtx (nm "state_restore") bRestore :=
 state_restore_cost guestCtx_code cc_set cc_del
#print axioms cc_restore
end InitECandidate.Solver.MemSafe.FrameCost.Restore
