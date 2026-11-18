import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S002
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_bal_ensure_account := (declPair Guest.Software.guestFn_bal_ensure_account).2.2
def b_bal_ensure_account : Nat := 2233382994588
theorem cost_bal_ensure_account : Cost σ guestCtx body_bal_ensure_account b_bal_ensure_account := FqCost.CombCore.analyze_sound table2_sound (by cbv)
theorem cc_bal_ensure_account : CalleeCost σ guestCtx (nm "bal_ensure_account") b_bal_ensure_account := by
 have hc : guestCode (nm "bal_ensure_account") = some ((declPair Guest.Software.guestFn_bal_ensure_account).2.1,body_bal_ensure_account,(fnEntry Guest.Software.guestFn_bal_ensure_account).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 412) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bal_ensure_account
def table3 := FqCost.CombCore.extend table2 (nm "bal_ensure_account") b_bal_ensure_account
theorem table3_sound : TblSound σ guestCtx table3 := FqCost.CombCore.extend_sound table2_sound cc_bal_ensure_account
#print axioms cc_bal_ensure_account
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
