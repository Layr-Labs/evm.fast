import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S023
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_ws_account_has_storage := (declPair Guest.Software.guestFn_ws_account_has_storage).2.2
def b_ws_account_has_storage : Nat := 174224571919930945982575630072300055892911
theorem cost_ws_account_has_storage : Cost σ guestCtx body_ws_account_has_storage b_ws_account_has_storage :=
 StrideCost.CoreNext.analyze_sound table23_sound (by cbv)
theorem cc_ws_account_has_storage : CalleeCost σ guestCtx (nm "ws_account_has_storage") b_ws_account_has_storage := by
 have hc : guestCode (nm "ws_account_has_storage") = some ((declPair Guest.Software.guestFn_ws_account_has_storage).2.1,body_ws_account_has_storage,(fnEntry Guest.Software.guestFn_ws_account_has_storage).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 371) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_ws_account_has_storage
def table24 := StrideCost.CoreNext.extend table23 (nm "ws_account_has_storage") b_ws_account_has_storage
theorem table24_sound : TblSound σ guestCtx table24 :=
 StrideCost.CoreNext.extend_sound table23_sound cc_ws_account_has_storage
#print axioms cc_ws_account_has_storage
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
