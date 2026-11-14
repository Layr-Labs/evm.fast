import InitECandidate.Solver.MemSafe.BlsSlotCost.Callers.C11
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def body_op_staticcall := (declPair Guest.Software.guestFn_op_staticcall).2.2
def b_op_staticcall : Nat := 75325220848024199188097725885392898704542541495716146325704
theorem cost_op_staticcall : Cost σ guestCtx body_op_staticcall b_op_staticcall := BlsSlotCost.Core.analyze_sound table11_sound (by cbv)
theorem cc_op_staticcall : CalleeCost σ guestCtx (nm "op_staticcall") b_op_staticcall := by
 have hc : ∃ rs, guestCode (nm "op_staticcall") = some ((declPair Guest.Software.guestFn_op_staticcall).2.1,body_op_staticcall,rs) :=
  declPair_valid (List.getElem_mem (n := 606) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_op_staticcall
def table12 := BlsSlotCost.Core.extend table11 (nm "op_staticcall") b_op_staticcall
theorem table12_sound : TblSound σ guestCtx table12 := BlsSlotCost.Core.extend_sound table11_sound cc_op_staticcall
#print axioms cc_op_staticcall
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
