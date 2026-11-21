import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S043
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_msg_new_scratch := (declPair Guest.Software.guestFn_msg_new_scratch).2.2
def b_msg_new_scratch : Nat := 137438953512
theorem cost_msg_new_scratch : Cost σ guestCtx body_msg_new_scratch b_msg_new_scratch :=
 StrideCost.CoreNext.analyze_sound table43_sound (by cbv)
theorem cc_msg_new_scratch : CalleeCost σ guestCtx (nm "msg_new_scratch") b_msg_new_scratch := by
 have hc : guestCode (nm "msg_new_scratch") = some ((declPair Guest.Software.guestFn_msg_new_scratch).2.1,body_msg_new_scratch,(fnEntry Guest.Software.guestFn_msg_new_scratch).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 466) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_msg_new_scratch
def table44 := StrideCost.CoreNext.extend table43 (nm "msg_new_scratch") b_msg_new_scratch
theorem table44_sound : TblSound σ guestCtx table44 :=
 StrideCost.CoreNext.extend_sound table43_sound cc_msg_new_scratch
#print axioms cc_msg_new_scratch
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
