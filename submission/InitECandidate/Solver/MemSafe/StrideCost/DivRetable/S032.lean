import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S031
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_is_account_alive := (declPair Guest.Software.guestFn_is_account_alive).2.2
def b_is_account_alive : Nat := 174224571919930945982723204031143204690624
theorem cost_is_account_alive : Cost σ guestCtx body_is_account_alive b_is_account_alive :=
 StrideCost.CoreNext.analyze_sound table31_sound (by cbv)
theorem cc_is_account_alive : CalleeCost σ guestCtx (nm "is_account_alive") b_is_account_alive := by
 have hc : guestCode (nm "is_account_alive") = some ((declPair Guest.Software.guestFn_is_account_alive).2.1,body_is_account_alive,(fnEntry Guest.Software.guestFn_is_account_alive).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 386) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_is_account_alive
def table32 := StrideCost.CoreNext.extend table31 (nm "is_account_alive") b_is_account_alive
theorem table32_sound : TblSound σ guestCtx table32 :=
 StrideCost.CoreNext.extend_sound table31_sound cc_is_account_alive
#print axioms cc_is_account_alive
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
