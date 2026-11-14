import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S029
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_account_deployable := (declPair Guest.Software.guestFn_account_deployable).2.2
def b_account_deployable : Nat := 348449143839861891965372621082005841522949
theorem cost_account_deployable : Cost σ guestCtx body_account_deployable b_account_deployable :=
 StrideCost.CoreNext.analyze_sound table29_sound (by cbv)
theorem cc_account_deployable : CalleeCost σ guestCtx (nm "account_deployable") b_account_deployable := by
 have hc : guestCode (nm "account_deployable") = some ((declPair Guest.Software.guestFn_account_deployable).2.1,body_account_deployable,(fnEntry Guest.Software.guestFn_account_deployable).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 383) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_account_deployable
def table30 := StrideCost.CoreNext.extend table29 (nm "account_deployable") b_account_deployable
theorem table30_sound : TblSound σ guestCtx table30 :=
 StrideCost.CoreNext.extend_sound table29_sound cc_account_deployable
#print axioms cc_account_deployable
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
