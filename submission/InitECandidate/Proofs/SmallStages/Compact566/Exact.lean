import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact566.Complete
import InitECandidate.Proofs.SmallStages.Oracles566
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles566
namespace InitECandidate.Proofs.SmallStages.Compact566
theorem optimize566_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source566, oracle566) = optimized566 := by
  exact optimize566_eq.trans (by kernel_rfl)
#print axioms optimize566_exact
end InitECandidate.Proofs.SmallStages.Compact566
