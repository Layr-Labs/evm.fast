import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact638.Complete
import InitECandidate.Proofs.SmallStages.Oracles638
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles638
namespace InitECandidate.Proofs.SmallStages.Compact638
theorem optimize638_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source638, oracle638) = optimized638 := by
  exact optimize638_eq.trans (by kernel_rfl)
#print axioms optimize638_exact
end InitECandidate.Proofs.SmallStages.Compact638
