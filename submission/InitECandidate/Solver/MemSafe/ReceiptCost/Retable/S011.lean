import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S010
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_tx_signing_hash_mode := (declPair Guest.Software.guestFn_tx_signing_hash_mode).2.2
def b_tx_signing_hash_mode : Nat := 12554203517541413952545602905813005643472764492307511641388
theorem cost_tx_signing_hash_mode : Cost σ guestCtx body_tx_signing_hash_mode b_tx_signing_hash_mode := FqCost.CombCore.analyze_sound table10_sound (by cbv)
theorem cc_tx_signing_hash_mode : CalleeCost σ guestCtx (nm "tx_signing_hash_mode") b_tx_signing_hash_mode := by
 have hc : guestCode (nm "tx_signing_hash_mode") = some ((declPair Guest.Software.guestFn_tx_signing_hash_mode).2.1,body_tx_signing_hash_mode,(fnEntry Guest.Software.guestFn_tx_signing_hash_mode).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 331) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_tx_signing_hash_mode
def table11 := FqCost.CombCore.extend table10 (nm "tx_signing_hash_mode") b_tx_signing_hash_mode
theorem table11_sound : TblSound σ guestCtx table11 := FqCost.CombCore.extend_sound table10_sound cc_tx_signing_hash_mode
#print axioms cc_tx_signing_hash_mode
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
