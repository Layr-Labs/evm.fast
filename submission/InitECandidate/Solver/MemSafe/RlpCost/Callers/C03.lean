import InitECandidate.Solver.MemSafe.RlpCost.Callers.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_memzero := (declPair Guest.Software.guestFn_memzero).2.2
def b_memzero : Nat := 137438953508
theorem cost_memzero : Cost σ guestCtx body_memzero b_memzero :=
  ArenaCost.Analyzer.analyze_sound table2_sound (by cbv)
theorem cc_memzero : CalleeCost σ guestCtx (nm "memzero") b_memzero := by
  have hc : ∃ rs, guestCode (nm "memzero") =
      some ((declPair Guest.Software.guestFn_memzero).2.1,body_memzero,rs) :=
    declPair_valid (List.getElem_mem (n := 17) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_memzero
def table3 := ArenaCost.Analyzer.extend table2 (nm "memzero") b_memzero
theorem table3_sound : TblSound σ guestCtx table3 := ArenaCost.Analyzer.extend_sound table2_sound cc_memzero
#print axioms cc_memzero
end InitECandidate.Solver.MemSafe.RlpCost.Callers
