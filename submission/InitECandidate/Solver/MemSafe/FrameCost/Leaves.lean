import InitECandidate.Solver.MemSafe.FrameCost.Restore
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FrameCost
variable {σ : Type}
def body_create_finish := (declPair Guest.Software.guestFn_create_finish).2.2
def b_create_finish : Nat := 176266266162655221283520033435997421249901
theorem cost_create_finish : Cost σ guestCtx body_create_finish b_create_finish := PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
theorem cc_create_finish : CalleeCost σ guestCtx (nm "create_finish") b_create_finish := by
 have hc : guestCode (nm "create_finish") = some ((declPair Guest.Software.guestFn_create_finish).2.1,body_create_finish,(fnEntry Guest.Software.guestFn_create_finish).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 589) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc cost_create_finish
#print axioms cc_create_finish
def body_incorporate_child_on_success := (declPair Guest.Software.guestFn_incorporate_child_on_success).2.2
def b_incorporate_child_on_success : Nat := 2041694238287498198356266269771340710478
theorem cost_incorporate_child_on_success : Cost σ guestCtx body_incorporate_child_on_success b_incorporate_child_on_success := PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
theorem cc_incorporate_child_on_success : CalleeCost σ guestCtx (nm "incorporate_child_on_success") b_incorporate_child_on_success := by
 have hc : guestCode (nm "incorporate_child_on_success") = some ((declPair Guest.Software.guestFn_incorporate_child_on_success).2.1,body_incorporate_child_on_success,(fnEntry Guest.Software.guestFn_incorporate_child_on_success).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 592) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc cost_incorporate_child_on_success
#print axioms cc_incorporate_child_on_success
end InitECandidate.Solver.MemSafe.FrameCost
