import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S030
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_acct_is_empty := (declPair Guest.Software.guestFn_acct_is_empty).2.2
def b_acct_is_empty : Nat := 137438953510
theorem cost_acct_is_empty : Cost σ guestCtx body_acct_is_empty b_acct_is_empty :=
 StrideCost.CoreNext.analyze_sound table30_sound (by cbv)
theorem cc_acct_is_empty : CalleeCost σ guestCtx (nm "acct_is_empty") b_acct_is_empty := by
 have hc : guestCode (nm "acct_is_empty") = some ((declPair Guest.Software.guestFn_acct_is_empty).2.1,body_acct_is_empty,(fnEntry Guest.Software.guestFn_acct_is_empty).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 384) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_acct_is_empty
def table31 := StrideCost.CoreNext.extend table30 (nm "acct_is_empty") b_acct_is_empty
theorem table31_sound : TblSound σ guestCtx table31 :=
 StrideCost.CoreNext.extend_sound table30_sound cc_acct_is_empty
#print axioms cc_acct_is_empty
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
