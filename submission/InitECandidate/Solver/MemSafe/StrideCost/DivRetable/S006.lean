import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S005
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_sha256_finish := (declPair Guest.Software.guestFn_sha256_finish).2.2
def b_sha256_finish : Nat := 18
theorem cost_sha256_finish : Cost σ guestCtx body_sha256_finish b_sha256_finish :=
 StrideCost.CoreNext.analyze_sound table5_sound (by cbv)
theorem cc_sha256_finish : CalleeCost σ guestCtx (nm "sha256_finish") b_sha256_finish := by
 have hc : guestCode (nm "sha256_finish") = some ((declPair Guest.Software.guestFn_sha256_finish).2.1,body_sha256_finish,(fnEntry Guest.Software.guestFn_sha256_finish).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 94) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_sha256_finish
def table6 := StrideCost.CoreNext.extend table5 (nm "sha256_finish") b_sha256_finish
theorem table6_sound : TblSound σ guestCtx table6 :=
 StrideCost.CoreNext.extend_sound table5_sound cc_sha256_finish
#print axioms cc_sha256_finish
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
