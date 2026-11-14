import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S008
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_tx_put_authorizations := (declPair Guest.Software.guestFn_tx_put_authorizations).2.2
def b_tx_put_authorizations : Nat := 8507059183164666394350051990052062363950
theorem cost_tx_put_authorizations : Cost σ guestCtx body_tx_put_authorizations b_tx_put_authorizations := FqCost.CombCore.analyze_sound table8_sound (by cbv)
theorem cc_tx_put_authorizations : CalleeCost σ guestCtx (nm "tx_put_authorizations") b_tx_put_authorizations := by
 have hc : guestCode (nm "tx_put_authorizations") = some ((declPair Guest.Software.guestFn_tx_put_authorizations).2.1,body_tx_put_authorizations,(fnEntry Guest.Software.guestFn_tx_put_authorizations).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 326) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_tx_put_authorizations
def table9 := FqCost.CombCore.extend table8 (nm "tx_put_authorizations") b_tx_put_authorizations
theorem table9_sound : TblSound σ guestCtx table9 := FqCost.CombCore.extend_sound table8_sound cc_tx_put_authorizations
#print axioms cc_tx_put_authorizations
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
