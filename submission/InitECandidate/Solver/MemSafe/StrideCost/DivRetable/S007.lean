import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S006
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_sha256 := (declPair Guest.Software.guestFn_sha256).2.2
def b_sha256 : Nat := 36893488422297010278
theorem cost_sha256 : Cost σ guestCtx body_sha256 b_sha256 :=
 StrideCost.CoreNext.analyze_sound table6_sound (by cbv)
theorem cc_sha256 : CalleeCost σ guestCtx (nm "sha256") b_sha256 := by
 have hc : guestCode (nm "sha256") = some ((declPair Guest.Software.guestFn_sha256).2.1,body_sha256,(fnEntry Guest.Software.guestFn_sha256).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 95) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_sha256
def table7 := StrideCost.CoreNext.extend table6 (nm "sha256") b_sha256
theorem table7_sound : TblSound σ guestCtx table7 :=
 StrideCost.CoreNext.extend_sound table6_sound cc_sha256
#print axioms cc_sha256
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
