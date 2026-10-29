import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact749.Complete
import InitECandidate.Proofs.SmallStages.Oracles749
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles749
namespace InitECandidate.Proofs.SmallStages.Compact749
theorem optimize749_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source749, oracle749) = optimized749 := by
  exact optimize749_eq.trans (by kernel_rfl)
#print axioms optimize749_exact
end InitECandidate.Proofs.SmallStages.Compact749
