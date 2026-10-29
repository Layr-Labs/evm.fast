import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel276.Data10
import InitECandidate.Proofs.WordStages.Parallel276.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel276
theorem pass276_10_eq : WordRemove.removeMustTerminate (pass276_9) = pass276_10 := by
  kernel_rfl
#print axioms pass276_10_eq
end InitECandidate.Proofs.WordStages.Parallel276
