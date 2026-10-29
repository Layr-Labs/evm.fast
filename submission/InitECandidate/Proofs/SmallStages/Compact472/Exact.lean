import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact472.Complete
import InitECandidate.Proofs.SmallStages.Oracles472
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles472
namespace InitECandidate.Proofs.SmallStages.Compact472
theorem optimize472_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source472, oracle472) = optimized472 := by
  exact optimize472_eq.trans (by kernel_rfl)
#print axioms optimize472_exact
end InitECandidate.Proofs.SmallStages.Compact472
