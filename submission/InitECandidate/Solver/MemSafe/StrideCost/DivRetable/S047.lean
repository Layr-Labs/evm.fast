import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S046
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_log_append := (declPair Guest.Software.guestFn_log_append).2.2
def b_log_append : Nat := 137438953513
theorem cost_log_append : Cost σ guestCtx body_log_append b_log_append :=
 StrideCost.CoreNext.analyze_sound table46_sound (by cbv)
theorem cc_log_append : CalleeCost σ guestCtx (nm "log_append") b_log_append := by
 have hc : guestCode (nm "log_append") = some ((declPair Guest.Software.guestFn_log_append).2.1,body_log_append,(fnEntry Guest.Software.guestFn_log_append).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 523) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_log_append
def table47 := StrideCost.CoreNext.extend table46 (nm "log_append") b_log_append
theorem table47_sound : TblSound σ guestCtx table47 :=
 StrideCost.CoreNext.extend_sound table46_sound cc_log_append
#print axioms cc_log_append
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
