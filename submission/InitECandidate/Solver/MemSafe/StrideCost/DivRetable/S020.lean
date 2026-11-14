import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S019
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_ws_account_leaf := (declPair Guest.Software.guestFn_ws_account_leaf).2.2
def b_ws_account_leaf : Nat := 174224571919930945020909967502841661620688
theorem cost_ws_account_leaf : Cost σ guestCtx body_ws_account_leaf b_ws_account_leaf :=
 StrideCost.CoreNext.analyze_sound table19_sound (by cbv)
theorem cc_ws_account_leaf : CalleeCost σ guestCtx (nm "ws_account_leaf") b_ws_account_leaf := by
 have hc : guestCode (nm "ws_account_leaf") = some ((declPair Guest.Software.guestFn_ws_account_leaf).2.1,body_ws_account_leaf,(fnEntry Guest.Software.guestFn_ws_account_leaf).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 365) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_ws_account_leaf
def table20 := StrideCost.CoreNext.extend table19 (nm "ws_account_leaf") b_ws_account_leaf
theorem table20_sound : TblSound σ guestCtx table20 :=
 StrideCost.CoreNext.extend_sound table19_sound cc_ws_account_leaf
#print axioms cc_ws_account_leaf
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
