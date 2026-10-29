import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact835.Complete
import InitECandidate.Proofs.SmallStages.Oracles835
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles835
namespace InitECandidate.Proofs.SmallStages.Compact835
theorem optimize835_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source835, oracle835) = optimized835 := by
  exact optimize835_eq.trans (by kernel_rfl)
#print axioms optimize835_exact
end InitECandidate.Proofs.SmallStages.Compact835
