import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S039
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_set_account_balance := (declPair Guest.Software.guestFn_set_account_balance).2.2
def b_set_account_balance : Nat := 373323102760847428831791942805639
theorem cost_set_account_balance : Cost σ guestCtx body_set_account_balance b_set_account_balance := FqCost.CombCore.analyze_sound table39_sound (by cbv)
theorem cc_set_account_balance : CalleeCost σ guestCtx (nm "set_account_balance") b_set_account_balance := by
 have hc : guestCode (nm "set_account_balance") = some ((declPair Guest.Software.guestFn_set_account_balance).2.1,body_set_account_balance,(fnEntry Guest.Software.guestFn_set_account_balance).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 397) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_set_account_balance
def table40 := FqCost.CombCore.extend table39 (nm "set_account_balance") b_set_account_balance
theorem table40_sound : TblSound σ guestCtx table40 := FqCost.CombCore.extend_sound table39_sound cc_set_account_balance
#print axioms cc_set_account_balance
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
