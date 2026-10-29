import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact285.Complete
import InitECandidate.Proofs.SmallStages.Oracles285
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles285
namespace InitECandidate.Proofs.SmallStages.Compact285
theorem optimize285_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source285, oracle285) = optimized285 := by
  exact optimize285_eq.trans (by kernel_rfl)
#print axioms optimize285_exact
end InitECandidate.Proofs.SmallStages.Compact285
