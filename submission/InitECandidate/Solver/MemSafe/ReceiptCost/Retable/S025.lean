import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S024
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_ws_account_leaf := (declPair Guest.Software.guestFn_ws_account_leaf).2.2
def b_ws_account_leaf : Nat := 330222981379357795972842862413568
theorem cost_ws_account_leaf : Cost σ guestCtx body_ws_account_leaf b_ws_account_leaf := FqCost.CombCore.analyze_sound table24_sound (by cbv)
theorem cc_ws_account_leaf : CalleeCost σ guestCtx (nm "ws_account_leaf") b_ws_account_leaf := by
 have hc : guestCode (nm "ws_account_leaf") = some ((declPair Guest.Software.guestFn_ws_account_leaf).2.1,body_ws_account_leaf,(fnEntry Guest.Software.guestFn_ws_account_leaf).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 365) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_ws_account_leaf
def table25 := FqCost.CombCore.extend table24 (nm "ws_account_leaf") b_ws_account_leaf
theorem table25_sound : TblSound σ guestCtx table25 := FqCost.CombCore.extend_sound table24_sound cc_ws_account_leaf
#print axioms cc_ws_account_leaf
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
