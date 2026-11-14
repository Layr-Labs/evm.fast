import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S025
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_get_account_optional := (declPair Guest.Software.guestFn_get_account_optional).2.2
def b_get_account_optional : Nat := 174224571919930945982723204031005765737112
theorem cost_get_account_optional : Cost σ guestCtx body_get_account_optional b_get_account_optional :=
 StrideCost.CoreNext.analyze_sound table25_sound (by cbv)
theorem cc_get_account_optional : CalleeCost σ guestCtx (nm "get_account_optional") b_get_account_optional := by
 have hc : guestCode (nm "get_account_optional") = some ((declPair Guest.Software.guestFn_get_account_optional).2.1,body_get_account_optional,(fnEntry Guest.Software.guestFn_get_account_optional).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 374) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_get_account_optional
def table26 := StrideCost.CoreNext.extend table25 (nm "get_account_optional") b_get_account_optional
theorem table26_sound : TblSound σ guestCtx table26 :=
 StrideCost.CoreNext.extend_sound table25_sound cc_get_account_optional
#print axioms cc_get_account_optional
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
