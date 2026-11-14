import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S020
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_recover_sender_with_chain_id := (declPair Guest.Software.guestFn_recover_sender_with_chain_id).2.2
def b_recover_sender_with_chain_id : Nat := 75325221105248483715273617435511859767499295801516231287982
theorem cost_recover_sender_with_chain_id : Cost σ guestCtx body_recover_sender_with_chain_id b_recover_sender_with_chain_id := FqCost.CombCore.analyze_sound table20_sound (by cbv)
theorem cc_recover_sender_with_chain_id : CalleeCost σ guestCtx (nm "recover_sender_with_chain_id") b_recover_sender_with_chain_id := by
 have hc : guestCode (nm "recover_sender_with_chain_id") = some ((declPair Guest.Software.guestFn_recover_sender_with_chain_id).2.1,body_recover_sender_with_chain_id,(fnEntry Guest.Software.guestFn_recover_sender_with_chain_id).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 343) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_recover_sender_with_chain_id
def table21 := FqCost.CombCore.extend table20 (nm "recover_sender_with_chain_id") b_recover_sender_with_chain_id
theorem table21_sound : TblSound σ guestCtx table21 := FqCost.CombCore.extend_sound table20_sound cc_recover_sender_with_chain_id
#print axioms cc_recover_sender_with_chain_id
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
