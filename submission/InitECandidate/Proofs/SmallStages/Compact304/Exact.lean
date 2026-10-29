import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact304.Complete
import InitECandidate.Proofs.SmallStages.Oracles304
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles304
namespace InitECandidate.Proofs.SmallStages.Compact304
theorem optimize304_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source304, oracle304) = optimized304 := by
  exact optimize304_eq.trans (by kernel_rfl)
#print axioms optimize304_exact
end InitECandidate.Proofs.SmallStages.Compact304
