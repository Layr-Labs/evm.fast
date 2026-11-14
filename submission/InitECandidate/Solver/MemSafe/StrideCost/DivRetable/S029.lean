import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S028
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_account_has_storage := (declPair Guest.Software.guestFn_account_has_storage).2.2
def b_account_has_storage : Nat := 174224571919930945982649417050862636832320
theorem cost_account_has_storage : Cost σ guestCtx body_account_has_storage b_account_has_storage :=
 StrideCost.CoreNext.analyze_sound table28_sound (by cbv)
theorem cc_account_has_storage : CalleeCost σ guestCtx (nm "account_has_storage") b_account_has_storage := by
 have hc : guestCode (nm "account_has_storage") = some ((declPair Guest.Software.guestFn_account_has_storage).2.1,body_account_has_storage,(fnEntry Guest.Software.guestFn_account_has_storage).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 382) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_account_has_storage
def table29 := StrideCost.CoreNext.extend table28 (nm "account_has_storage") b_account_has_storage
theorem table29_sound : TblSound σ guestCtx table29 :=
 StrideCost.CoreNext.extend_sound table28_sound cc_account_has_storage
#print axioms cc_account_has_storage
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
