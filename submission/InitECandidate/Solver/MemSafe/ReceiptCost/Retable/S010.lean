import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S009
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_tx_encode_generic := (declPair Guest.Software.guestFn_tx_encode_generic).2.2
def b_tx_encode_generic : Nat := 12554203517541413952545602905179180342676120260213431338059
theorem cost_tx_encode_generic : Cost σ guestCtx body_tx_encode_generic b_tx_encode_generic := FqCost.CombCore.analyze_sound table9_sound (by cbv)
theorem cc_tx_encode_generic : CalleeCost σ guestCtx (nm "tx_encode_generic") b_tx_encode_generic := by
 have hc : guestCode (nm "tx_encode_generic") = some ((declPair Guest.Software.guestFn_tx_encode_generic).2.1,body_tx_encode_generic,(fnEntry Guest.Software.guestFn_tx_encode_generic).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 328) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_tx_encode_generic
def table10 := FqCost.CombCore.extend table9 (nm "tx_encode_generic") b_tx_encode_generic
theorem table10_sound : TblSound σ guestCtx table10 := FqCost.CombCore.extend_sound table9_sound cc_tx_encode_generic
#print axioms cc_tx_encode_generic
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
