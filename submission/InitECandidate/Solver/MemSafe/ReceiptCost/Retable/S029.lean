import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S028
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_get_account := (declPair Guest.Software.guestFn_get_account).2.2
def b_get_account : Nat := 330222982341023458548692168024022
theorem cost_get_account : Cost σ guestCtx body_get_account b_get_account := FqCost.CombCore.analyze_sound table28_sound (by cbv)
theorem cc_get_account : CalleeCost σ guestCtx (nm "get_account") b_get_account := by
 have hc : guestCode (nm "get_account") = some ((declPair Guest.Software.guestFn_get_account).2.1,body_get_account,(fnEntry Guest.Software.guestFn_get_account).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 375) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_get_account
def table29 := FqCost.CombCore.extend table28 (nm "get_account") b_get_account
theorem table29_sound : TblSound σ guestCtx table29 := FqCost.CombCore.extend_sound table28_sound cc_get_account
#print axioms cc_get_account
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
