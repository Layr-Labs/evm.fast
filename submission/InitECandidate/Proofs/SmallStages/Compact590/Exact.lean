import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact590.Complete
import InitECandidate.Proofs.SmallStages.Oracles590
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles590
namespace InitECandidate.Proofs.SmallStages.Compact590
theorem optimize590_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source590, oracle590) = optimized590 := by
  exact optimize590_eq.trans (by kernel_rfl)
#print axioms optimize590_exact
end InitECandidate.Proofs.SmallStages.Compact590
