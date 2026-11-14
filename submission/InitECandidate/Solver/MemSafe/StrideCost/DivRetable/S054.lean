import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S053
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_pre_p256verify := (declPair Guest.Software.guestFn_pre_p256verify).2.2
def b_pre_p256verify : Nat := 78264944991815846619450122360843973183041
theorem cost_pre_p256verify : Cost σ guestCtx body_pre_p256verify b_pre_p256verify :=
 StrideCost.CoreNext.analyze_sound table53_sound (by cbv)
theorem cc_pre_p256verify : CalleeCost σ guestCtx (nm "pre_p256verify") b_pre_p256verify := by
 have hc : guestCode (nm "pre_p256verify") = some ((declPair Guest.Software.guestFn_pre_p256verify).2.1,body_pre_p256verify,(fnEntry Guest.Software.guestFn_pre_p256verify).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 645) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_pre_p256verify
def table54 := StrideCost.CoreNext.extend table53 (nm "pre_p256verify") b_pre_p256verify
theorem table54_sound : TblSound σ guestCtx table54 :=
 StrideCost.CoreNext.extend_sound table53_sound cc_pre_p256verify
#print axioms cc_pre_p256verify
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
