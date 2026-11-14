import InitECandidate.Solver.MemSafe.InitCost.Callers.C39
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_merge_tx_into_block := (declPair Guest.Software.guestFn_merge_tx_into_block).2.2
def b_merge_tx_into_block : Nat := 12554204148910121452699388605741235702513755565928738721762
theorem cost_merge_tx_into_block : Cost σ guestCtx body_merge_tx_into_block b_merge_tx_into_block :=
  InitCost.Analyzer.analyze_sound table39_sound (by cbv)
theorem cc_merge_tx_into_block : CalleeCost σ guestCtx (nm "merge_tx_into_block") b_merge_tx_into_block := by
  have hc : ∃ rs, guestCode (nm "merge_tx_into_block") = some ((declPair Guest.Software.guestFn_merge_tx_into_block).2.1,body_merge_tx_into_block,rs) :=
    declPair_valid (List.getElem_mem (n := 401) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_merge_tx_into_block
def table40 := InitCost.Analyzer.extend table39 (nm "merge_tx_into_block") b_merge_tx_into_block
theorem table40_sound : TblSound σ guestCtx table40 := InitCost.Analyzer.extend_sound table39_sound cc_merge_tx_into_block
#print axioms cc_merge_tx_into_block
end InitECandidate.Solver.MemSafe.InitCost.Callers
