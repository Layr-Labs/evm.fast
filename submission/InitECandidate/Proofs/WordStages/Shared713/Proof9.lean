import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Shared713.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Shared713
theorem pass713_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 713 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (pass713_8) proposed713 = pass713_9 := by
  kernel_rfl
#print axioms pass713_9_eq
end InitECandidate.Proofs.WordStages.Shared713
