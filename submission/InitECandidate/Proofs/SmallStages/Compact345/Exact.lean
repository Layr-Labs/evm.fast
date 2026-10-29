import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact345.Complete
import InitECandidate.Proofs.SmallStages.Oracles345
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles345
namespace InitECandidate.Proofs.SmallStages.Compact345
theorem optimize345_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source345, oracle345) = optimized345 := by
  exact optimize345_eq.trans (by kernel_rfl)
#print axioms optimize345_exact
end InitECandidate.Proofs.SmallStages.Compact345
