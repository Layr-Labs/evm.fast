import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S038
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_increment_nonce := (declPair Guest.Software.guestFn_increment_nonce).2.2
def b_increment_nonce : Nat := 174905136695605292729411714823757802578756
theorem cost_increment_nonce : Cost σ guestCtx body_increment_nonce b_increment_nonce :=
 StrideCost.CoreNext.analyze_sound table38_sound (by cbv)
theorem cc_increment_nonce : CalleeCost σ guestCtx (nm "increment_nonce") b_increment_nonce := by
 have hc : guestCode (nm "increment_nonce") = some ((declPair Guest.Software.guestFn_increment_nonce).2.1,body_increment_nonce,(fnEntry Guest.Software.guestFn_increment_nonce).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 398) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_increment_nonce
def table39 := StrideCost.CoreNext.extend table38 (nm "increment_nonce") b_increment_nonce
theorem table39_sound : TblSound σ guestCtx table39 :=
 StrideCost.CoreNext.extend_sound table38_sound cc_increment_nonce
#print axioms cc_increment_nonce
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
