import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact834.Complete
import InitECandidate.Proofs.SmallStages.Oracles834
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles834
namespace InitECandidate.Proofs.SmallStages.Compact834
theorem optimize834_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source834, oracle834) = optimized834 := by
  exact optimize834_eq.trans (by kernel_rfl)
#print axioms optimize834_exact
end InitECandidate.Proofs.SmallStages.Compact834
