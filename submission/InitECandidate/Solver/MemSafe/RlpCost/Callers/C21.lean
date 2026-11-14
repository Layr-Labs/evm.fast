import InitECandidate.Solver.MemSafe.RlpCost.Callers.C20
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_tx_scalar_word := (declPair Guest.Software.guestFn_tx_scalar_word).2.2
def b_tx_scalar_word : Nat := 174782900192681123656121
theorem cost_tx_scalar_word : Cost σ guestCtx body_tx_scalar_word b_tx_scalar_word :=
  ArenaCost.Analyzer.analyze_sound table20_sound (by cbv)
theorem cc_tx_scalar_word : CalleeCost σ guestCtx (nm "tx_scalar_word") b_tx_scalar_word := by
  have hc : ∃ rs, guestCode (nm "tx_scalar_word") =
      some ((declPair Guest.Software.guestFn_tx_scalar_word).2.1,body_tx_scalar_word,rs) :=
    declPair_valid (List.getElem_mem (n := 298) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_tx_scalar_word
def table21 := ArenaCost.Analyzer.extend table20 (nm "tx_scalar_word") b_tx_scalar_word
theorem table21_sound : TblSound σ guestCtx table21 := ArenaCost.Analyzer.extend_sound table20_sound cc_tx_scalar_word
#print axioms cc_tx_scalar_word
end InitECandidate.Solver.MemSafe.RlpCost.Callers
