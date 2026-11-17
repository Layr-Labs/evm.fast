import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S005
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_bal_list_remove_idx := (declPair Guest.Software.guestFn_bal_list_remove_idx).2.2
def b_bal_list_remove_idx : Nat := 2535301201157435077931808325670
theorem cost_bal_list_remove_idx : Cost σ guestCtx body_bal_list_remove_idx b_bal_list_remove_idx := FqCost.CombCore.analyze_sound table5_sound (by cbv)
theorem cc_bal_list_remove_idx : CalleeCost σ guestCtx (nm "bal_list_remove_idx") b_bal_list_remove_idx := by
 have hc : guestCode (nm "bal_list_remove_idx") = some ((declPair Guest.Software.guestFn_bal_list_remove_idx).2.1,body_bal_list_remove_idx,(fnEntry Guest.Software.guestFn_bal_list_remove_idx).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 424) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bal_list_remove_idx
def table6 := FqCost.CombCore.extend table5 (nm "bal_list_remove_idx") b_bal_list_remove_idx
theorem table6_sound : TblSound σ guestCtx table6 := FqCost.CombCore.extend_sound table5_sound cc_bal_list_remove_idx
#print axioms cc_bal_list_remove_idx
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
