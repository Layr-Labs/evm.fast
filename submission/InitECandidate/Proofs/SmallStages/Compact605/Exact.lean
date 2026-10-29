import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact605.Complete
import InitECandidate.Proofs.SmallStages.Oracles605
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles605
namespace InitECandidate.Proofs.SmallStages.Compact605
theorem optimize605_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source605, oracle605) = optimized605 := by
  exact optimize605_eq.trans (by kernel_rfl)
#print axioms optimize605_exact
end InitECandidate.Proofs.SmallStages.Compact605
