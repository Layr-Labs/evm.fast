import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S052
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_p256_verify := (declPair Guest.Software.guestFn_p256_verify).2.2
def b_p256_verify : Nat := 78264944991815846619376335384411696023036
theorem cost_p256_verify : Cost σ guestCtx body_p256_verify b_p256_verify :=
 StrideCost.CoreNext.analyze_sound table52_sound (by cbv)
theorem cc_p256_verify : CalleeCost σ guestCtx (nm "p256_verify") b_p256_verify := by
 have hc : guestCode (nm "p256_verify") = some ((declPair Guest.Software.guestFn_p256_verify).2.1,body_p256_verify,(fnEntry Guest.Software.guestFn_p256_verify).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 644) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_p256_verify
def table53 := StrideCost.CoreNext.extend table52 (nm "p256_verify") b_p256_verify
theorem table53_sound : TblSound σ guestCtx table53 :=
 StrideCost.CoreNext.extend_sound table52_sound cc_p256_verify
#print axioms cc_p256_verify
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
