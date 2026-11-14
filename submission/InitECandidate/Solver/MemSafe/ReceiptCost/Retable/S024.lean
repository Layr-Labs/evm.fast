import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S023
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_record_pre_state_read := (declPair Guest.Software.guestFn_record_pre_state_read).2.2
def b_record_pre_state_read : Nat := 2061584302657
theorem cost_record_pre_state_read : Cost σ guestCtx body_record_pre_state_read b_record_pre_state_read := FqCost.CombCore.analyze_sound table23_sound (by cbv)
theorem cc_record_pre_state_read : CalleeCost σ guestCtx (nm "record_pre_state_read") b_record_pre_state_read := by
 have hc : guestCode (nm "record_pre_state_read") = some ((declPair Guest.Software.guestFn_record_pre_state_read).2.1,body_record_pre_state_read,(fnEntry Guest.Software.guestFn_record_pre_state_read).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 364) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_record_pre_state_read
def table24 := FqCost.CombCore.extend table23 (nm "record_pre_state_read") b_record_pre_state_read
theorem table24_sound : TblSound σ guestCtx table24 := FqCost.CombCore.extend_sound table23_sound cc_record_pre_state_read
#print axioms cc_record_pre_state_read
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
