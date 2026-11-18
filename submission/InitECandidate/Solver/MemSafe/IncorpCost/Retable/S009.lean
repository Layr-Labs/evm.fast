import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S008
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_idx_start_account := (declPair Guest.Software.guestFn_idx_start_account).2.2
def b_idx_start_account : Nat := 330222982341023458547317778488913
theorem cost_idx_start_account : Cost σ guestCtx body_idx_start_account b_idx_start_account := FqCost.CombCore.analyze_sound table8_sound (by cbv)
theorem cc_idx_start_account : CalleeCost σ guestCtx (nm "idx_start_account") b_idx_start_account := by
 have hc : guestCode (nm "idx_start_account") = some ((declPair Guest.Software.guestFn_idx_start_account).2.1,body_idx_start_account,(fnEntry Guest.Software.guestFn_idx_start_account).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 422) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_idx_start_account
def table9 := FqCost.CombCore.extend table8 (nm "idx_start_account") b_idx_start_account
theorem table9_sound : TblSound σ guestCtx table9 := FqCost.CombCore.extend_sound table8_sound cc_idx_start_account
#print axioms cc_idx_start_account
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
