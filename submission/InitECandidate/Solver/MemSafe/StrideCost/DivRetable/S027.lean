import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S026
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_get_account := (declPair Guest.Software.guestFn_get_account).2.2
def b_get_account : Nat := 174224571919930945982723204031005765737118
theorem cost_get_account : Cost σ guestCtx body_get_account b_get_account :=
 StrideCost.CoreNext.analyze_sound table26_sound (by cbv)
theorem cc_get_account : CalleeCost σ guestCtx (nm "get_account") b_get_account := by
 have hc : guestCode (nm "get_account") = some ((declPair Guest.Software.guestFn_get_account).2.1,body_get_account,(fnEntry Guest.Software.guestFn_get_account).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 375) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_get_account
def table27 := StrideCost.CoreNext.extend table26 (nm "get_account") b_get_account
theorem table27_sound : TblSound σ guestCtx table27 :=
 StrideCost.CoreNext.extend_sound table26_sound cc_get_account
#print axioms cc_get_account
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
