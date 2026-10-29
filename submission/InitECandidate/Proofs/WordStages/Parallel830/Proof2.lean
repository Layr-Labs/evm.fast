import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel830.Data2
import InitECandidate.Proofs.WordStages.Parallel830.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel830
theorem pass830_2_eq : WordAlloc.fullSsaCcTrans 1 (pass830_1) = pass830_2 := by
  kernel_rfl
#print axioms pass830_2_eq
end InitECandidate.Proofs.WordStages.Parallel830
