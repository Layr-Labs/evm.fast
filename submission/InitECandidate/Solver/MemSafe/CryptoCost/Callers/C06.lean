import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_run_precompile := (declPair Guest.Software.guestFn_run_precompile).2.2
def b_run_precompile : Nat := 5724980420945539098535835551435874165266888148095091193139949260
theorem cost_run_precompile : Cost σ guestCtx body_run_precompile b_run_precompile :=
  Analyzer.analyze_sound table5_sound (by cbv)
theorem cc_run_precompile : CalleeCost σ guestCtx (nm "run_precompile") b_run_precompile := by
  have hc : ∃ rs, guestCode (nm "run_precompile") =
      some ((declPair Guest.Software.guestFn_run_precompile).2.1,body_run_precompile,rs) :=
    declPair_valid (List.getElem_mem (n := 830) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_run_precompile
def table6 := Analyzer.extend table5 (nm "run_precompile") b_run_precompile
theorem table6_sound : TblSound σ guestCtx table6 := Analyzer.extend_sound table5_sound cc_run_precompile
#print axioms cc_run_precompile
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
