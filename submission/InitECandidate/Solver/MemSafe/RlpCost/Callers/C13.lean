import InitECandidate.Solver.MemSafe.RlpCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_tx_bytes_item := (declPair Guest.Software.guestFn_tx_bytes_item).2.2
def b_tx_bytes_item : Nat := 174764453448607414104503
theorem cost_tx_bytes_item : Cost σ guestCtx body_tx_bytes_item b_tx_bytes_item :=
  ArenaCost.Analyzer.analyze_sound table12_sound (by cbv)
theorem cc_tx_bytes_item : CalleeCost σ guestCtx (nm "tx_bytes_item") b_tx_bytes_item := by
  have hc : ∃ rs, guestCode (nm "tx_bytes_item") =
      some ((declPair Guest.Software.guestFn_tx_bytes_item).2.1,body_tx_bytes_item,rs) :=
    declPair_valid (List.getElem_mem (n := 299) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_tx_bytes_item
def table13 := ArenaCost.Analyzer.extend table12 (nm "tx_bytes_item") b_tx_bytes_item
theorem table13_sound : TblSound σ guestCtx table13 := ArenaCost.Analyzer.extend_sound table12_sound cc_tx_bytes_item
#print axioms cc_tx_bytes_item
end InitECandidate.Solver.MemSafe.RlpCost.Callers
