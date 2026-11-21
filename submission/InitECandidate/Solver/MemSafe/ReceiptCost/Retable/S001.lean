import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.Base
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_logs_encoded_bound := (declPair Guest.Software.guestFn_logs_encoded_bound).2.2
def b_logs_encoded_bound : Nat := 4294967298
theorem cost_logs_encoded_bound : Cost σ guestCtx body_logs_encoded_bound b_logs_encoded_bound := FqCost.CombCore.analyze_sound table0_sound (by cbv)
theorem cc_logs_encoded_bound : CalleeCost σ guestCtx (nm "logs_encoded_bound") b_logs_encoded_bound := by
 have hc : guestCode (nm "logs_encoded_bound") = some ((declPair Guest.Software.guestFn_logs_encoded_bound).2.1,body_logs_encoded_bound,(fnEntry Guest.Software.guestFn_logs_encoded_bound).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 834) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_logs_encoded_bound
def table1 := FqCost.CombCore.extend table0 (nm "logs_encoded_bound") b_logs_encoded_bound
theorem table1_sound : TblSound σ guestCtx table1 := FqCost.CombCore.extend_sound table0_sound cc_logs_encoded_bound
#print axioms cc_logs_encoded_bound
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
