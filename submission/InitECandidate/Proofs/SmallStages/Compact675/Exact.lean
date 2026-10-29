import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact675.Complete
import InitECandidate.Proofs.SmallStages.Oracles675
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles675
namespace InitECandidate.Proofs.SmallStages.Compact675
theorem optimize675_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source675, oracle675) = optimized675 := by
  exact optimize675_eq.trans (by kernel_rfl)
#print axioms optimize675_exact
end InitECandidate.Proofs.SmallStages.Compact675
