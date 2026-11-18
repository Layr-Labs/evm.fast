import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S002
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_encode_logs := (declPair Guest.Software.guestFn_encode_logs).2.2
def b_encode_logs : Nat := 2923003286911971055068533856898627040837707497974
theorem cost_encode_logs : Cost σ guestCtx body_encode_logs b_encode_logs := FqCost.CombCore.analyze_sound table2_sound (by cbv)
theorem cc_encode_logs : CalleeCost σ guestCtx (nm "encode_logs") b_encode_logs := by
 have hc : guestCode (nm "encode_logs") = some ((declPair Guest.Software.guestFn_encode_logs).2.1,body_encode_logs,(fnEntry Guest.Software.guestFn_encode_logs).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 835) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_encode_logs
def table3 := FqCost.CombCore.extend table2 (nm "encode_logs") b_encode_logs
theorem table3_sound : TblSound σ guestCtx table3 := FqCost.CombCore.extend_sound table2_sound cc_encode_logs
#print axioms cc_encode_logs
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
