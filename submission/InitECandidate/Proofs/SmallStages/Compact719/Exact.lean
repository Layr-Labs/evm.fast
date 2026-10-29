import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact719.Complete
import InitECandidate.Proofs.SmallStages.Oracles719
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles719
namespace InitECandidate.Proofs.SmallStages.Compact719
theorem optimize719_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source719, oracle719) = optimized719 := by
  exact optimize719_eq.trans (by kernel_rfl)
#print axioms optimize719_exact
end InitECandidate.Proofs.SmallStages.Compact719
