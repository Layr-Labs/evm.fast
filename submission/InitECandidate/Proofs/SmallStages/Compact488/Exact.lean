import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact488.Complete
import InitECandidate.Proofs.SmallStages.Oracles488
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles488
namespace InitECandidate.Proofs.SmallStages.Compact488
theorem optimize488_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source488, oracle488) = optimized488 := by
  exact optimize488_eq.trans (by kernel_rfl)
#print axioms optimize488_exact
end InitECandidate.Proofs.SmallStages.Compact488
