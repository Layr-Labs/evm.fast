import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Shared713.Data7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Shared713
theorem pass713_7_eq : WordUnreach.removeUnreach (pass713_6) = pass713_7 := by
  kernel_rfl
#print axioms pass713_7_eq
end InitECandidate.Proofs.WordStages.Shared713
