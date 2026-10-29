import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact674.Complete
import InitECandidate.Proofs.SmallStages.Oracles674
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles674
namespace InitECandidate.Proofs.SmallStages.Compact674
theorem optimize674_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source674, oracle674) = optimized674 := by
  exact optimize674_eq.trans (by kernel_rfl)
#print axioms optimize674_exact
end InitECandidate.Proofs.SmallStages.Compact674
