import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S036
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_mark_account_created := (declPair Guest.Software.guestFn_mark_account_created).2.2
def b_mark_account_created : Nat := 36893490140283929151
theorem cost_mark_account_created : Cost σ guestCtx body_mark_account_created b_mark_account_created :=
 StrideCost.CoreNext.analyze_sound table36_sound (by cbv)
theorem cc_mark_account_created : CalleeCost σ guestCtx (nm "mark_account_created") b_mark_account_created := by
 have hc : guestCode (nm "mark_account_created") = some ((declPair Guest.Software.guestFn_mark_account_created).2.1,body_mark_account_created,(fnEntry Guest.Software.guestFn_mark_account_created).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 393) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_mark_account_created
def table37 := StrideCost.CoreNext.extend table36 (nm "mark_account_created") b_mark_account_created
theorem table37_sound : TblSound σ guestCtx table37 :=
 StrideCost.CoreNext.extend_sound table36_sound cc_mark_account_created
#print axioms cc_mark_account_created
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
