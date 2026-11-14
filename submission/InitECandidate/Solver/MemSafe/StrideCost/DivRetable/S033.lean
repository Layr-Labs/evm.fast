import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S032
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_set_account := (declPair Guest.Software.guestFn_set_account).2.2
def b_set_account : Nat := 55340234488871387793
theorem cost_set_account : Cost σ guestCtx body_set_account b_set_account :=
 StrideCost.CoreNext.analyze_sound table32_sound (by cbv)
theorem cc_set_account : CalleeCost σ guestCtx (nm "set_account") b_set_account := by
 have hc : guestCode (nm "set_account") = some ((declPair Guest.Software.guestFn_set_account).2.1,body_set_account,(fnEntry Guest.Software.guestFn_set_account).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 387) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_set_account
def table33 := StrideCost.CoreNext.extend table32 (nm "set_account") b_set_account
theorem table33_sound : TblSound σ guestCtx table33 :=
 StrideCost.CoreNext.extend_sound table32_sound cc_set_account
#print axioms cc_set_account
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
