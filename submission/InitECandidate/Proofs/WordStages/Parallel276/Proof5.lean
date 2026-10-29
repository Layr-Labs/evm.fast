import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel276.Data5
import InitECandidate.Proofs.WordStages.Parallel276.Data4
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel276
theorem pass276_5_eq : WordCopy.copyProp (pass276_4) = pass276_5 := by
  kernel_rfl
#print axioms pass276_5_eq
end InitECandidate.Proofs.WordStages.Parallel276
