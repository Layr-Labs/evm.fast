import InitECandidate.Solver.MemSafe.FqCost.Retable.S064
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_start_child := (declPair Guest.Software.guestFn_start_child).2.2
def b_start_child : Nat := 100001111115525306961537921504469911522755498385
theorem cost_start_child : Cost σ guestCtx body_start_child b_start_child := FqCost.CombCore.analyze_sound table64_sound (by cbv)
theorem cc_start_child : CalleeCost σ guestCtx (nm "start_child") b_start_child := by
 have hc : guestCode (nm "start_child") = some ((declPair Guest.Software.guestFn_start_child).2.1,body_start_child,(fnEntry Guest.Software.guestFn_start_child).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 585) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_start_child
def table65 := FqCost.CombCore.extend table64 (nm "start_child") b_start_child
theorem table65_sound : TblSound σ guestCtx table65 := FqCost.CombCore.extend_sound table64_sound cc_start_child
#print axioms cc_start_child
end InitECandidate.Solver.MemSafe.FqCost.Retable
