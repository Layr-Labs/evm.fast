import InitECandidate.Solver.MemSafe.BlsSlotCost.Callers.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def body_op_call := (declPair Guest.Software.guestFn_op_call).2.2
def b_op_call : Nat := 75325220848024199537907999191670893922950135798617308814605
theorem cost_op_call : Cost σ guestCtx body_op_call b_op_call := BlsSlotCost.Core.analyze_sound table6_sound (by cbv)
theorem cc_op_call : CalleeCost σ guestCtx (nm "op_call") b_op_call := by
 have hc : ∃ rs, guestCode (nm "op_call") = some ((declPair Guest.Software.guestFn_op_call).2.1,body_op_call,rs) :=
  declPair_valid (List.getElem_mem (n := 603) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_op_call
def table7 := BlsSlotCost.Core.extend table6 (nm "op_call") b_op_call
theorem table7_sound : TblSound σ guestCtx table7 := BlsSlotCost.Core.extend_sound table6_sound cc_op_call
#print axioms cc_op_call
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
