import InitECandidate.Solver.MemSafe.RlpCost.Callers.C13
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_tx_fixed_bytes := (declPair Guest.Software.guestFn_tx_fixed_bytes).2.2
def b_tx_fixed_bytes : Nat := 174764453448607414104503
theorem cost_tx_fixed_bytes : Cost σ guestCtx body_tx_fixed_bytes b_tx_fixed_bytes :=
  ArenaCost.Analyzer.analyze_sound table13_sound (by cbv)
theorem cc_tx_fixed_bytes : CalleeCost σ guestCtx (nm "tx_fixed_bytes") b_tx_fixed_bytes := by
  have hc : ∃ rs, guestCode (nm "tx_fixed_bytes") =
      some ((declPair Guest.Software.guestFn_tx_fixed_bytes).2.1,body_tx_fixed_bytes,rs) :=
    declPair_valid (List.getElem_mem (n := 300) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_tx_fixed_bytes
def table14 := ArenaCost.Analyzer.extend table13 (nm "tx_fixed_bytes") b_tx_fixed_bytes
theorem table14_sound : TblSound σ guestCtx table14 := ArenaCost.Analyzer.extend_sound table13_sound cc_tx_fixed_bytes
#print axioms cc_tx_fixed_bytes
end InitECandidate.Solver.MemSafe.RlpCost.Callers
