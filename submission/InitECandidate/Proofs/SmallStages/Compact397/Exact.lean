import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact397.Complete
import InitECandidate.Proofs.SmallStages.Oracles397
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles397
namespace InitECandidate.Proofs.SmallStages.Compact397
theorem optimize397_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source397, oracle397) = optimized397 := by
  exact optimize397_eq.trans (by kernel_rfl)
#print axioms optimize397_exact
end InitECandidate.Proofs.SmallStages.Compact397
