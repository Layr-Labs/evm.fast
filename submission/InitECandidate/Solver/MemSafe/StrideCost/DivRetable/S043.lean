import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S042
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_buffer_read := (declPair Guest.Software.guestFn_buffer_read).2.2
def b_buffer_read : Nat := 274877907018
theorem cost_buffer_read : Cost σ guestCtx body_buffer_read b_buffer_read :=
 StrideCost.CoreNext.analyze_sound table42_sound (by cbv)
theorem cc_buffer_read : CalleeCost σ guestCtx (nm "buffer_read") b_buffer_read := by
 have hc : guestCode (nm "buffer_read") = some ((declPair Guest.Software.guestFn_buffer_read).2.1,body_buffer_read,(fnEntry Guest.Software.guestFn_buffer_read).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 462) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_buffer_read
def table43 := StrideCost.CoreNext.extend table42 (nm "buffer_read") b_buffer_read
theorem table43_sound : TblSound σ guestCtx table43 :=
 StrideCost.CoreNext.extend_sound table42_sound cc_buffer_read
#print axioms cc_buffer_read
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
