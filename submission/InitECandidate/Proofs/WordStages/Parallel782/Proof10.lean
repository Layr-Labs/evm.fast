import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel782.Data10
import InitECandidate.Proofs.WordStages.Parallel782.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel782
theorem pass782_10_eq : WordRemove.removeMustTerminate (pass782_9) = pass782_10 := by
  kernel_rfl
#print axioms pass782_10_eq
end InitECandidate.Proofs.WordStages.Parallel782
