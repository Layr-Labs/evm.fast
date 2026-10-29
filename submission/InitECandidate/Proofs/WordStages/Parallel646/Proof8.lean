import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel646.Data8
import InitECandidate.Proofs.WordStages.Parallel646.Data7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel646
theorem pass646_8_eq : WordAlloc.removeDeadProg (pass646_7) = pass646_8 := by
  kernel_rfl
#print axioms pass646_8_eq
end InitECandidate.Proofs.WordStages.Parallel646
