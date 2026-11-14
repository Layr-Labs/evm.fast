import InitECandidate.Solver.MemSafe.RlpCost.Callers.C14
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_tx_list_item := (declPair Guest.Software.guestFn_tx_list_item).2.2
def b_tx_list_item : Nat := 174764453448607414104503
theorem cost_tx_list_item : Cost σ guestCtx body_tx_list_item b_tx_list_item :=
  ArenaCost.Analyzer.analyze_sound table14_sound (by cbv)
theorem cc_tx_list_item : CalleeCost σ guestCtx (nm "tx_list_item") b_tx_list_item := by
  have hc : ∃ rs, guestCode (nm "tx_list_item") =
      some ((declPair Guest.Software.guestFn_tx_list_item).2.1,body_tx_list_item,rs) :=
    declPair_valid (List.getElem_mem (n := 302) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_tx_list_item
def table15 := ArenaCost.Analyzer.extend table14 (nm "tx_list_item") b_tx_list_item
theorem table15_sound : TblSound σ guestCtx table15 := ArenaCost.Analyzer.extend_sound table14_sound cc_tx_list_item
#print axioms cc_tx_list_item
end InitECandidate.Solver.MemSafe.RlpCost.Callers
