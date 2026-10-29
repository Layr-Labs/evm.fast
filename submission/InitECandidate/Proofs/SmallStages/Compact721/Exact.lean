import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact721.Complete
import InitECandidate.Proofs.SmallStages.Oracles721
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles721
namespace InitECandidate.Proofs.SmallStages.Compact721
theorem optimize721_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source721, oracle721) = optimized721 := by
  exact optimize721_eq.trans (by kernel_rfl)
#print axioms optimize721_exact
end InitECandidate.Proofs.SmallStages.Compact721
