import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact482.Complete
import InitECandidate.Proofs.SmallStages.Oracles482
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles482
namespace InitECandidate.Proofs.SmallStages.Compact482
theorem optimize482_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source482, oracle482) = optimized482 := by
  exact optimize482_eq.trans (by kernel_rfl)
#print axioms optimize482_exact
end InitECandidate.Proofs.SmallStages.Compact482
