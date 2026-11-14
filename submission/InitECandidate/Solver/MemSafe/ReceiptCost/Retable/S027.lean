import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S026
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_get_pre_state_account_optional := (declPair Guest.Software.guestFn_get_pre_state_account_optional).2.2
def b_get_pre_state_account_optional : Nat := 330222982341023458546458785029477
theorem cost_get_pre_state_account_optional : Cost σ guestCtx body_get_pre_state_account_optional b_get_pre_state_account_optional := FqCost.CombCore.analyze_sound table26_sound (by cbv)
theorem cc_get_pre_state_account_optional : CalleeCost σ guestCtx (nm "get_pre_state_account_optional") b_get_pre_state_account_optional := by
 have hc : guestCode (nm "get_pre_state_account_optional") = some ((declPair Guest.Software.guestFn_get_pre_state_account_optional).2.1,body_get_pre_state_account_optional,(fnEntry Guest.Software.guestFn_get_pre_state_account_optional).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 372) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_get_pre_state_account_optional
def table27 := FqCost.CombCore.extend table26 (nm "get_pre_state_account_optional") b_get_pre_state_account_optional
theorem table27_sound : TblSound σ guestCtx table27 := FqCost.CombCore.extend_sound table26_sound cc_get_pre_state_account_optional
#print axioms cc_get_pre_state_account_optional
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
