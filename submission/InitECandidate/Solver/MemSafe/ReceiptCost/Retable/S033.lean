import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S032
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_check_transaction := (declPair Guest.Software.guestFn_check_transaction).2.2
def b_check_transaction : Nat := 1845354972435020021070569645425286635922564
theorem cost_check_transaction : Cost σ guestCtx body_check_transaction b_check_transaction := FqCost.CombCore.analyze_sound table32_sound (by cbv)
theorem cc_check_transaction : CalleeCost σ guestCtx (nm "check_transaction") b_check_transaction := by
 have hc : guestCode (nm "check_transaction") = some ((declPair Guest.Software.guestFn_check_transaction).2.1,body_check_transaction,(fnEntry Guest.Software.guestFn_check_transaction).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 872) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_check_transaction
def table33 := FqCost.CombCore.extend table32 (nm "check_transaction") b_check_transaction
theorem table33_sound : TblSound σ guestCtx table33 := FqCost.CombCore.extend_sound table32_sound cc_check_transaction
#print axioms cc_check_transaction
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
