import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S007
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_tx_put_blob_hashes := (declPair Guest.Software.guestFn_tx_put_blob_hashes).2.2
def b_tx_put_blob_hashes : Nat := 680564736377178128268651733532440264754
theorem cost_tx_put_blob_hashes : Cost σ guestCtx body_tx_put_blob_hashes b_tx_put_blob_hashes := FqCost.CombCore.analyze_sound table7_sound (by cbv)
theorem cc_tx_put_blob_hashes : CalleeCost σ guestCtx (nm "tx_put_blob_hashes") b_tx_put_blob_hashes := by
 have hc : guestCode (nm "tx_put_blob_hashes") = some ((declPair Guest.Software.guestFn_tx_put_blob_hashes).2.1,body_tx_put_blob_hashes,(fnEntry Guest.Software.guestFn_tx_put_blob_hashes).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 323) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_tx_put_blob_hashes
def table8 := FqCost.CombCore.extend table7 (nm "tx_put_blob_hashes") b_tx_put_blob_hashes
theorem table8_sound : TblSound σ guestCtx table8 := FqCost.CombCore.extend_sound table7_sound cc_tx_put_blob_hashes
#print axioms cc_tx_put_blob_hashes
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
