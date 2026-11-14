import InitECandidate.Solver.MemSafe.BlsSlotCost.Callers.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def body_start_child := (declPair Guest.Software.guestFn_start_child).2.2
def b_start_child : Nat := 75325220848024197878010612612292765640240014900421680326628
theorem cost_start_child : Cost σ guestCtx body_start_child b_start_child := BlsSlotCost.Core.analyze_sound table3_sound (by cbv)
theorem cc_start_child : CalleeCost σ guestCtx (nm "start_child") b_start_child := by
 have hc : ∃ rs, guestCode (nm "start_child") = some ((declPair Guest.Software.guestFn_start_child).2.1,body_start_child,rs) :=
  declPair_valid (List.getElem_mem (n := 585) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_start_child
def table4 := BlsSlotCost.Core.extend table3 (nm "start_child") b_start_child
theorem table4_sound : TblSound σ guestCtx table4 := BlsSlotCost.Core.extend_sound table3_sound cc_start_child
#print axioms cc_start_child
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
