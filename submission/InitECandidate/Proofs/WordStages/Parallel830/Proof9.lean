import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel830.Data9
import InitECandidate.Proofs.WordStages.Parallel830.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel830
theorem pass830_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 830 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (pass830_8) proposed830 = pass830_9 := by
  kernel_rfl
#print axioms pass830_9_eq
end InitECandidate.Proofs.WordStages.Parallel830
