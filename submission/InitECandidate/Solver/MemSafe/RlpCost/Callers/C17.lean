import InitECandidate.Solver.MemSafe.RlpCost.Callers.C16
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_tx_to_item := (declPair Guest.Software.guestFn_tx_to_item).2.2
def b_tx_to_item : Nat := 174764453448607414104503
theorem cost_tx_to_item : Cost σ guestCtx body_tx_to_item b_tx_to_item :=
  ArenaCost.Analyzer.analyze_sound table16_sound (by cbv)
theorem cc_tx_to_item : CalleeCost σ guestCtx (nm "tx_to_item") b_tx_to_item := by
  have hc : ∃ rs, guestCode (nm "tx_to_item") =
      some ((declPair Guest.Software.guestFn_tx_to_item).2.1,body_tx_to_item,rs) :=
    declPair_valid (List.getElem_mem (n := 301) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_tx_to_item
def table17 := ArenaCost.Analyzer.extend table16 (nm "tx_to_item") b_tx_to_item
theorem table17_sound : TblSound σ guestCtx table17 := ArenaCost.Analyzer.extend_sound table16_sound cc_tx_to_item
#print axioms cc_tx_to_item
end InitECandidate.Solver.MemSafe.RlpCost.Callers
