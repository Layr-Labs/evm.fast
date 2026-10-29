import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact237.Complete
import InitECandidate.Proofs.SmallStages.Oracles237
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles237
namespace InitECandidate.Proofs.SmallStages.Compact237
theorem optimize237_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source237, oracle237) = optimized237 := by
  exact optimize237_eq.trans (by kernel_rfl)
#print axioms optimize237_exact
end InitECandidate.Proofs.SmallStages.Compact237
