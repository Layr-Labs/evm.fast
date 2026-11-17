import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S021
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_encode_transaction := (declPair Guest.Software.guestFn_encode_transaction).2.2
def b_encode_transaction : Nat := 12554203517541413952545602905179180342676120260213431338060
theorem cost_encode_transaction : Cost σ guestCtx body_encode_transaction b_encode_transaction := FqCost.CombCore.analyze_sound table21_sound (by cbv)
theorem cc_encode_transaction : CalleeCost σ guestCtx (nm "encode_transaction") b_encode_transaction := by
 have hc : guestCode (nm "encode_transaction") = some ((declPair Guest.Software.guestFn_encode_transaction).2.1,body_encode_transaction,(fnEntry Guest.Software.guestFn_encode_transaction).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 329) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_encode_transaction
def table22 := FqCost.CombCore.extend table21 (nm "encode_transaction") b_encode_transaction
theorem table22_sound : TblSound σ guestCtx table22 := FqCost.CombCore.extend_sound table21_sound cc_encode_transaction
#print axioms cc_encode_transaction
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
