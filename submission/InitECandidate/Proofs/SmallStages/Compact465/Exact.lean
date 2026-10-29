import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact465.Complete
import InitECandidate.Proofs.SmallStages.Oracles465
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles465
namespace InitECandidate.Proofs.SmallStages.Compact465
theorem optimize465_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source465, oracle465) = optimized465 := by
  exact optimize465_eq.trans (by kernel_rfl)
#print axioms optimize465_exact
end InitECandidate.Proofs.SmallStages.Compact465
