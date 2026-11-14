import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S010
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_bal_remove_change := (declPair Guest.Software.guestFn_bal_remove_change).2.2
def b_bal_remove_change : Nat := 2535301201157435078103607017552
theorem cost_bal_remove_change : Cost σ guestCtx body_bal_remove_change b_bal_remove_change := FqCost.CombCore.analyze_sound table10_sound (by cbv)
theorem cc_bal_remove_change : CalleeCost σ guestCtx (nm "bal_remove_change") b_bal_remove_change := by
 have hc : guestCode (nm "bal_remove_change") = some ((declPair Guest.Software.guestFn_bal_remove_change).2.1,body_bal_remove_change,(fnEntry Guest.Software.guestFn_bal_remove_change).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 425) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bal_remove_change
def table11 := FqCost.CombCore.extend table10 (nm "bal_remove_change") b_bal_remove_change
theorem table11_sound : TblSound σ guestCtx table11 := FqCost.CombCore.extend_sound table10_sound cc_bal_remove_change
#print axioms cc_bal_remove_change
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
