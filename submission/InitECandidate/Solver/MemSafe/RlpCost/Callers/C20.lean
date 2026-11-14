import InitECandidate.Solver.MemSafe.RlpCost.Callers.C19
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_tx_scalar_u256 := (declPair Guest.Software.guestFn_tx_scalar_u256).2.2
def b_tx_scalar_u256 : Nat := 174782900192681123656126
theorem cost_tx_scalar_u256 : Cost σ guestCtx body_tx_scalar_u256 b_tx_scalar_u256 :=
  ArenaCost.Analyzer.analyze_sound table19_sound (by cbv)
theorem cc_tx_scalar_u256 : CalleeCost σ guestCtx (nm "tx_scalar_u256") b_tx_scalar_u256 := by
  have hc : ∃ rs, guestCode (nm "tx_scalar_u256") =
      some ((declPair Guest.Software.guestFn_tx_scalar_u256).2.1,body_tx_scalar_u256,rs) :=
    declPair_valid (List.getElem_mem (n := 297) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_tx_scalar_u256
def table20 := ArenaCost.Analyzer.extend table19 (nm "tx_scalar_u256") b_tx_scalar_u256
theorem table20_sound : TblSound σ guestCtx table20 := ArenaCost.Analyzer.extend_sound table19_sound cc_tx_scalar_u256
#print axioms cc_tx_scalar_u256
end InitECandidate.Solver.MemSafe.RlpCost.Callers
