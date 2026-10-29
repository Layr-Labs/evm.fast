import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact853.Complete
import InitECandidate.Proofs.SmallStages.Oracles853
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles853
namespace InitECandidate.Proofs.SmallStages.Compact853
theorem optimize853_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source853, oracle853) = optimized853 := by
  exact optimize853_eq.trans (by kernel_rfl)
#print axioms optimize853_exact
end InitECandidate.Proofs.SmallStages.Compact853
