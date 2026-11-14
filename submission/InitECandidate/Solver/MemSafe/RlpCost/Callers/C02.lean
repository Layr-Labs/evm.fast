import InitECandidate.Solver.MemSafe.RlpCost.Callers.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_memcpy := (declPair Guest.Software.guestFn_memcpy).2.2
def b_memcpy : Nat := 137438953508
theorem cost_memcpy : Cost σ guestCtx body_memcpy b_memcpy :=
  ArenaCost.Analyzer.analyze_sound table1_sound (by cbv)
theorem cc_memcpy : CalleeCost σ guestCtx (nm "memcpy") b_memcpy := by
  have hc : ∃ rs, guestCode (nm "memcpy") =
      some ((declPair Guest.Software.guestFn_memcpy).2.1,body_memcpy,rs) :=
    declPair_valid (List.getElem_mem (n := 16) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_memcpy
def table2 := ArenaCost.Analyzer.extend table1 (nm "memcpy") b_memcpy
theorem table2_sound : TblSound σ guestCtx table2 := ArenaCost.Analyzer.extend_sound table1_sound cc_memcpy
#print axioms cc_memcpy
end InitECandidate.Solver.MemSafe.RlpCost.Callers
