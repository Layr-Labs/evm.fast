import InitECandidate.Solver.MemSafe.RlpCost.Callers.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_htab_keys := (declPair Guest.Software.guestFn_htab_keys).2.2
def b_htab_keys : Nat := 2535301201157435077931808325673
theorem cost_htab_keys : Cost σ guestCtx body_htab_keys b_htab_keys :=
  ArenaCost.Analyzer.analyze_sound table3_sound (by cbv)
theorem cc_htab_keys : CalleeCost σ guestCtx (nm "htab_keys") b_htab_keys := by
  have hc : ∃ rs, guestCode (nm "htab_keys") =
      some ((declPair Guest.Software.guestFn_htab_keys).2.1,body_htab_keys,rs) :=
    declPair_valid (List.getElem_mem (n := 144) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_htab_keys
def table4 := ArenaCost.Analyzer.extend table3 (nm "htab_keys") b_htab_keys
theorem table4_sound : TblSound σ guestCtx table4 := ArenaCost.Analyzer.extend_sound table3_sound cc_htab_keys
#print axioms cc_htab_keys
end InitECandidate.Solver.MemSafe.RlpCost.Callers
