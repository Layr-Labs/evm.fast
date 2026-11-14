import InitECandidate.Solver.MemSafe.ReaderCost.Callers.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReaderCost.Callers
variable {σ : Type}
def body_node_new_branch := (declPair Guest.Software.guestFn_node_new_branch).2.2
def b_node_new_branch : Nat := 137438953512
theorem cost_node_new_branch : Cost σ guestCtx body_node_new_branch b_node_new_branch :=
  ReaderCost.Analyzer.analyze_sound table2_sound (by cbv)
theorem cc_node_new_branch : CalleeCost σ guestCtx (nm "node_new_branch") b_node_new_branch := by
  have hc : ∃ rs, guestCode (nm "node_new_branch") = some ((declPair Guest.Software.guestFn_node_new_branch).2.1,body_node_new_branch,rs) :=
    declPair_valid (List.getElem_mem (n := 258) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ReaderCost.Analyzer.callee_of_body hc cost_node_new_branch
def table3 := ReaderCost.Analyzer.extend table2 (nm "node_new_branch") b_node_new_branch
theorem table3_sound : TblSound σ guestCtx table3 := ReaderCost.Analyzer.extend_sound table2_sound cc_node_new_branch
#print axioms cc_node_new_branch
end InitECandidate.Solver.MemSafe.ReaderCost.Callers
