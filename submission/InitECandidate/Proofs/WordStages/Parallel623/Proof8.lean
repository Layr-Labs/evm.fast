import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel623.Data8
import InitECandidate.Proofs.WordStages.Parallel623.Data7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel623
theorem pass623_8_eq : WordAlloc.removeDeadProg (pass623_7) = pass623_8 := by
  kernel_rfl
#print axioms pass623_8_eq
end InitECandidate.Proofs.WordStages.Parallel623
