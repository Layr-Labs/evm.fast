import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S009
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_add_balance_change := (declPair Guest.Software.guestFn_add_balance_change).2.2
def b_add_balance_change : Nat := 18446746444531499720
theorem cost_add_balance_change : Cost σ guestCtx body_add_balance_change b_add_balance_change := FqCost.CombCore.analyze_sound table9_sound (by cbv)
theorem cc_add_balance_change : CalleeCost σ guestCtx (nm "add_balance_change") b_add_balance_change := by
 have hc : guestCode (nm "add_balance_change") = some ((declPair Guest.Software.guestFn_add_balance_change).2.1,body_add_balance_change,(fnEntry Guest.Software.guestFn_add_balance_change).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 416) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_add_balance_change
def table10 := FqCost.CombCore.extend table9 (nm "add_balance_change") b_add_balance_change
theorem table10_sound : TblSound σ guestCtx table10 := FqCost.CombCore.extend_sound table9_sound cc_add_balance_change
#print axioms cc_add_balance_change
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
