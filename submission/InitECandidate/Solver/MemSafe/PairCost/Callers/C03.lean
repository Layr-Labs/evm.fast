import InitECandidate.Solver.MemSafe.PairCost.Callers.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.PairCost.Callers
variable {σ : Type}
def body_run_precompile := (declPair Guest.Software.guestFn_run_precompile).2.2
def b_run_precompile : Nat := 1732487729577037032874628302748442447230584962240661195359142
theorem cost_run_precompile : Cost σ guestCtx body_run_precompile b_run_precompile := PairCost.Core.analyze_sound table2_sound (by cbv)
theorem cc_run_precompile : CalleeCost σ guestCtx (nm "run_precompile") b_run_precompile := by
  have hc : ∃ rs, guestCode (nm "run_precompile") = some ((declPair Guest.Software.guestFn_run_precompile).2.1,body_run_precompile,rs) :=
    declPair_valid (List.getElem_mem (n := 830) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact PairCost.Core.callee_of_body hc cost_run_precompile
def table3 := PairCost.Core.extend table2 (nm "run_precompile") b_run_precompile
theorem table3_sound : TblSound σ guestCtx table3 := PairCost.Core.extend_sound table2_sound cc_run_precompile
#print axioms cc_run_precompile
end InitECandidate.Solver.MemSafe.PairCost.Callers
