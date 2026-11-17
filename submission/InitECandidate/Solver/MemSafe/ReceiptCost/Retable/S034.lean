import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S033
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_jset := (declPair Guest.Software.guestFn_jset).2.2
def b_jset : Nat := 2370821948051
theorem cost_jset : Cost σ guestCtx body_jset b_jset := FqCost.CombCore.analyze_sound table33_sound (by cbv)
theorem cc_jset : CalleeCost σ guestCtx (nm "jset") b_jset := by
 have hc : guestCode (nm "jset") = some ((declPair Guest.Software.guestFn_jset).2.1,body_jset,(fnEntry Guest.Software.guestFn_jset).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 356) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_jset
def table34 := FqCost.CombCore.extend table33 (nm "jset") b_jset
theorem table34_sound : TblSound σ guestCtx table34 := FqCost.CombCore.extend_sound table33_sound cc_jset
#print axioms cc_jset
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
