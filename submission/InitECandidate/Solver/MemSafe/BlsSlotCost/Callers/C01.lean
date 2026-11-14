import InitECandidate.Solver.MemSafe.BlsSlotCost.HotSeed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def body_run_precompile := (declPair Guest.Software.guestFn_run_precompile).2.2
def b_run_precompile : Nat := 62771017377250833860492953722508285926314206433369512739374
theorem cost_run_precompile : Cost σ guestCtx body_run_precompile b_run_precompile :=
 BlsSlotCost.PrecompileOne.body_cost (BlsSlotCost.PrecompileOne.bounded_handlers table0_sound (B := 62771017377250833860492953722508285926314206433369512739373) (by cbv))
theorem cc_run_precompile : CalleeCost σ guestCtx (nm "run_precompile") b_run_precompile :=
 BlsSlotCost.PrecompileOne.callee table0_sound (B := 62771017377250833860492953722508285926314206433369512739373) (by cbv)
def table1 := BlsSlotCost.Core.extend table0 (nm "run_precompile") b_run_precompile
theorem table1_sound : TblSound σ guestCtx table1 := BlsSlotCost.Core.extend_sound table0_sound cc_run_precompile
#print axioms cc_run_precompile
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
