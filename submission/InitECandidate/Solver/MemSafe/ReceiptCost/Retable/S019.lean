import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S018
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_recover_transaction_public_key := (declPair Guest.Software.guestFn_recover_transaction_public_key).2.2
def b_recover_transaction_public_key : Nat := 75325221105248483715273617434878034466702651569284712031135
theorem cost_recover_transaction_public_key : Cost σ guestCtx body_recover_transaction_public_key b_recover_transaction_public_key := FqCost.CombCore.analyze_sound table18_sound (by cbv)
theorem cc_recover_transaction_public_key : CalleeCost σ guestCtx (nm "recover_transaction_public_key") b_recover_transaction_public_key := by
 have hc : guestCode (nm "recover_transaction_public_key") = some ((declPair Guest.Software.guestFn_recover_transaction_public_key).2.1,body_recover_transaction_public_key,(fnEntry Guest.Software.guestFn_recover_transaction_public_key).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 340) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_recover_transaction_public_key
def table19 := FqCost.CombCore.extend table18 (nm "recover_transaction_public_key") b_recover_transaction_public_key
theorem table19_sound : TblSound σ guestCtx table19 := FqCost.CombCore.extend_sound table18_sound cc_recover_transaction_public_key
#print axioms cc_recover_transaction_public_key
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
