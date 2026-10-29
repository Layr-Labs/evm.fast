import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact825.Complete
import InitECandidate.Proofs.SmallStages.Oracles825
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles825
namespace InitECandidate.Proofs.SmallStages.Compact825
theorem optimize825_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source825, oracle825) = optimized825 := by
  exact optimize825_eq.trans (by kernel_rfl)
#print axioms optimize825_exact
end InitECandidate.Proofs.SmallStages.Compact825
