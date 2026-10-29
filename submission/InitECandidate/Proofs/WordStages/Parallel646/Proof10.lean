import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel646.Data10
import InitECandidate.Proofs.WordStages.Parallel646.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel646
theorem pass646_10_eq : WordRemove.removeMustTerminate (pass646_9) = pass646_10 := by
  kernel_rfl
#print axioms pass646_10_eq
end InitECandidate.Proofs.WordStages.Parallel646
