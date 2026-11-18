import InitECandidate.Solver.MemSafe.FqCost.Retable.S065
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_child_message := (declPair Guest.Software.guestFn_child_message).2.2
def b_child_message : Nat := 137438953513
theorem cost_child_message : Cost σ guestCtx body_child_message b_child_message := FqCost.CombCore.analyze_sound table65_sound (by cbv)
theorem cc_child_message : CalleeCost σ guestCtx (nm "child_message") b_child_message := by
 have hc : guestCode (nm "child_message") = some ((declPair Guest.Software.guestFn_child_message).2.1,body_child_message,(fnEntry Guest.Software.guestFn_child_message).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 594) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_child_message
def table66 := FqCost.CombCore.extend table65 (nm "child_message") b_child_message
theorem table66_sound : TblSound σ guestCtx table66 := FqCost.CombCore.extend_sound table65_sound cc_child_message
#print axioms cc_child_message
end InitECandidate.Solver.MemSafe.FqCost.Retable
