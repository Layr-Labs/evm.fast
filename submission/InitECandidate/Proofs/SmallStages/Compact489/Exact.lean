import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact489.Complete
import InitECandidate.Proofs.SmallStages.Oracles489
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles489
namespace InitECandidate.Proofs.SmallStages.Compact489
theorem optimize489_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source489, oracle489) = optimized489 := by
  exact optimize489_eq.trans (by kernel_rfl)
#print axioms optimize489_exact
end InitECandidate.Proofs.SmallStages.Compact489
