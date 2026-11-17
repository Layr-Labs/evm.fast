import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S031
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_get_code := (declPair Guest.Software.guestFn_get_code).2.2
def b_get_code : Nat := 3126736192339
theorem cost_get_code : Cost σ guestCtx body_get_code b_get_code := FqCost.CombCore.analyze_sound table31_sound (by cbv)
theorem cc_get_code : CalleeCost σ guestCtx (nm "get_code") b_get_code := by
 have hc : guestCode (nm "get_code") = some ((declPair Guest.Software.guestFn_get_code).2.1,body_get_code,(fnEntry Guest.Software.guestFn_get_code).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 376) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_get_code
def table32 := FqCost.CombCore.extend table31 (nm "get_code") b_get_code
theorem table32_sound : TblSound σ guestCtx table32 := FqCost.CombCore.extend_sound table31_sound cc_get_code
#print axioms cc_get_code
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
