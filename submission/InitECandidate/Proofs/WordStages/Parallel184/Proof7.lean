import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel184.Data7
import InitECandidate.Proofs.WordStages.Parallel184.Data6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel184
theorem pass184_7_eq : WordUnreach.removeUnreach (pass184_6) = pass184_7 := by
  kernel_rfl
#print axioms pass184_7_eq
end InitECandidate.Proofs.WordStages.Parallel184
