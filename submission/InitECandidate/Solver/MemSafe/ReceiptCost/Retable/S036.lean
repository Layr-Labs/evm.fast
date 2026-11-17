import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S035
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_jdel := (declPair Guest.Software.guestFn_jdel).2.2
def b_jdel : Nat := 481036337275
theorem cost_jdel : Cost σ guestCtx body_jdel b_jdel := FqCost.CombCore.analyze_sound table35_sound (by cbv)
theorem cc_jdel : CalleeCost σ guestCtx (nm "jdel") b_jdel := by
 have hc : guestCode (nm "jdel") = some ((declPair Guest.Software.guestFn_jdel).2.1,body_jdel,(fnEntry Guest.Software.guestFn_jdel).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 357) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_jdel
def table36 := FqCost.CombCore.extend table35 (nm "jdel") b_jdel
theorem table36_sound : TblSound σ guestCtx table36 := FqCost.CombCore.extend_sound table35_sound cc_jdel
#print axioms cc_jdel
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
