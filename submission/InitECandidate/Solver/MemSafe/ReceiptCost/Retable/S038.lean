import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S037
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_destroy_account := (declPair Guest.Software.guestFn_destroy_account).2.2
def b_destroy_account : Nat := 43100120419823970280454074926537
theorem cost_destroy_account : Cost σ guestCtx body_destroy_account b_destroy_account := FqCost.CombCore.analyze_sound table37_sound (by cbv)
theorem cc_destroy_account : CalleeCost σ guestCtx (nm "destroy_account") b_destroy_account := by
 have hc : guestCode (nm "destroy_account") = some ((declPair Guest.Software.guestFn_destroy_account).2.1,body_destroy_account,(fnEntry Guest.Software.guestFn_destroy_account).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 390) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_destroy_account
def table38 := FqCost.CombCore.extend table37 (nm "destroy_account") b_destroy_account
theorem table38_sound : TblSound σ guestCtx table38 := FqCost.CombCore.extend_sound table37_sound cc_destroy_account
#print axioms cc_destroy_account
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
