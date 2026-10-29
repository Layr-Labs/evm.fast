import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact846.Complete
import InitECandidate.Proofs.SmallStages.Oracles846
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles846
namespace InitECandidate.Proofs.SmallStages.Compact846
theorem optimize846_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source846, oracle846) = optimized846 := by
  exact optimize846_eq.trans (by kernel_rfl)
#print axioms optimize846_exact
end InitECandidate.Proofs.SmallStages.Compact846
