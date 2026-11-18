import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S021
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_ws_storage_root_of := (declPair Guest.Software.guestFn_ws_storage_root_of).2.2
def b_ws_storage_root_of : Nat := 174224571919930945982575630072162616939401
theorem cost_ws_storage_root_of : Cost σ guestCtx body_ws_storage_root_of b_ws_storage_root_of :=
 StrideCost.CoreNext.analyze_sound table21_sound (by cbv)
theorem cc_ws_storage_root_of : CalleeCost σ guestCtx (nm "ws_storage_root_of") b_ws_storage_root_of := by
 have hc : guestCode (nm "ws_storage_root_of") = some ((declPair Guest.Software.guestFn_ws_storage_root_of).2.1,body_ws_storage_root_of,(fnEntry Guest.Software.guestFn_ws_storage_root_of).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 367) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_ws_storage_root_of
def table22 := StrideCost.CoreNext.extend table21 (nm "ws_storage_root_of") b_ws_storage_root_of
theorem table22_sound : TblSound σ guestCtx table22 :=
 StrideCost.CoreNext.extend_sound table21_sound cc_ws_storage_root_of
#print axioms cc_ws_storage_root_of
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
