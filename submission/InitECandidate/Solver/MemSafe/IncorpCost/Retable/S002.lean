import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S001
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_merge_tx_into_block := (declPair Guest.Software.guestFn_merge_tx_into_block).2.2
def b_merge_tx_into_block : Nat := 701520786115856891492397360690915266488871499599889
theorem cost_merge_tx_into_block : Cost σ guestCtx body_merge_tx_into_block b_merge_tx_into_block := FqCost.CombCore.analyze_sound table1_sound (by cbv)
theorem cc_merge_tx_into_block : CalleeCost σ guestCtx (nm "merge_tx_into_block") b_merge_tx_into_block := by
 have hc : guestCode (nm "merge_tx_into_block") = some ((declPair Guest.Software.guestFn_merge_tx_into_block).2.1,body_merge_tx_into_block,(fnEntry Guest.Software.guestFn_merge_tx_into_block).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 401) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_merge_tx_into_block
def table2 := FqCost.CombCore.extend table1 (nm "merge_tx_into_block") b_merge_tx_into_block
theorem table2_sound : TblSound σ guestCtx table2 := FqCost.CombCore.extend_sound table1_sound cc_merge_tx_into_block
#print axioms cc_merge_tx_into_block
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
