import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S003
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_encode_receipt := (declPair Guest.Software.guestFn_encode_receipt).2.2
def b_encode_receipt : Nat := 50216813964937537893773682666667153280413833225146912998942
theorem cost_encode_receipt : Cost σ guestCtx body_encode_receipt b_encode_receipt := FqCost.CombCore.analyze_sound table3_sound (by cbv)
theorem cc_encode_receipt : CalleeCost σ guestCtx (nm "encode_receipt") b_encode_receipt := by
 have hc : guestCode (nm "encode_receipt") = some ((declPair Guest.Software.guestFn_encode_receipt).2.1,body_encode_receipt,(fnEntry Guest.Software.guestFn_encode_receipt).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 836) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_encode_receipt
def table4 := FqCost.CombCore.extend table3 (nm "encode_receipt") b_encode_receipt
theorem table4_sound : TblSound σ guestCtx table4 := FqCost.CombCore.extend_sound table3_sound cc_encode_receipt
#print axioms cc_encode_receipt
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
