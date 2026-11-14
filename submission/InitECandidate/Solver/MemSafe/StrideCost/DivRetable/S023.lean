import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S022
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_ws_get_code := (declPair Guest.Software.guestFn_ws_get_code).2.2
def b_ws_get_code : Nat := 18446744348587458638
theorem cost_ws_get_code : Cost σ guestCtx body_ws_get_code b_ws_get_code :=
 StrideCost.CoreNext.analyze_sound table22_sound (by cbv)
theorem cc_ws_get_code : CalleeCost σ guestCtx (nm "ws_get_code") b_ws_get_code := by
 have hc : guestCode (nm "ws_get_code") = some ((declPair Guest.Software.guestFn_ws_get_code).2.1,body_ws_get_code,(fnEntry Guest.Software.guestFn_ws_get_code).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 370) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_ws_get_code
def table23 := StrideCost.CoreNext.extend table22 (nm "ws_get_code") b_ws_get_code
theorem table23_sound : TblSound σ guestCtx table23 :=
 StrideCost.CoreNext.extend_sound table22_sound cc_ws_get_code
#print axioms cc_ws_get_code
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
