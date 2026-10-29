import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact765.Complete
import InitECandidate.Proofs.SmallStages.Oracles765
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles765
namespace InitECandidate.Proofs.SmallStages.Compact765
theorem optimize765_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source765, oracle765) = optimized765 := by
  exact optimize765_eq.trans (by kernel_rfl)
#print axioms optimize765_exact
end InitECandidate.Proofs.SmallStages.Compact765
