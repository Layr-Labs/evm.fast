import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S034
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_destroy_account := (declPair Guest.Software.guestFn_destroy_account).2.2
def b_destroy_account : Nat := 680564775674346746633170557988287546817
theorem cost_destroy_account : Cost σ guestCtx body_destroy_account b_destroy_account :=
 StrideCost.CoreNext.analyze_sound table34_sound (by cbv)
theorem cc_destroy_account : CalleeCost σ guestCtx (nm "destroy_account") b_destroy_account := by
 have hc : guestCode (nm "destroy_account") = some ((declPair Guest.Software.guestFn_destroy_account).2.1,body_destroy_account,(fnEntry Guest.Software.guestFn_destroy_account).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 390) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_destroy_account
def table35 := StrideCost.CoreNext.extend table34 (nm "destroy_account") b_destroy_account
theorem table35_sound : TblSound σ guestCtx table35 :=
 StrideCost.CoreNext.extend_sound table34_sound cc_destroy_account
#print axioms cc_destroy_account
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
