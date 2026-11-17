import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S005
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_tx_put_to := (declPair Guest.Software.guestFn_tx_put_to).2.2
def b_tx_put_to : Nat := 36893488284858056747
theorem cost_tx_put_to : Cost σ guestCtx body_tx_put_to b_tx_put_to := FqCost.CombCore.analyze_sound table5_sound (by cbv)
theorem cc_tx_put_to : CalleeCost σ guestCtx (nm "tx_put_to") b_tx_put_to := by
 have hc : guestCode (nm "tx_put_to") = some ((declPair Guest.Software.guestFn_tx_put_to).2.1,body_tx_put_to,(fnEntry Guest.Software.guestFn_tx_put_to).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 320) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_tx_put_to
def table6 := FqCost.CombCore.extend table5 (nm "tx_put_to") b_tx_put_to
theorem table6_sound : TblSound σ guestCtx table6 := FqCost.CombCore.extend_sound table5_sound cc_tx_put_to
#print axioms cc_tx_put_to
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
