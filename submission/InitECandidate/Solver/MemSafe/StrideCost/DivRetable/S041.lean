import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S040
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_stack_push := (declPair Guest.Software.guestFn_stack_push).2.2
def b_stack_push : Nat := 137438953512
theorem cost_stack_push : Cost σ guestCtx body_stack_push b_stack_push :=
 StrideCost.CoreNext.analyze_sound table40_sound (by cbv)
theorem cc_stack_push : CalleeCost σ guestCtx (nm "stack_push") b_stack_push := by
 have hc : guestCode (nm "stack_push") = some ((declPair Guest.Software.guestFn_stack_push).2.1,body_stack_push,(fnEntry Guest.Software.guestFn_stack_push).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 454) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_stack_push
def table41 := StrideCost.CoreNext.extend table40 (nm "stack_push") b_stack_push
theorem table41_sound : TblSound σ guestCtx table41 :=
 StrideCost.CoreNext.extend_sound table40_sound cc_stack_push
#print axioms cc_stack_push
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
