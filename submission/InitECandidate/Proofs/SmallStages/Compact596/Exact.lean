import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact596.Complete
import InitECandidate.Proofs.SmallStages.Oracles596
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles596
namespace InitECandidate.Proofs.SmallStages.Compact596
theorem optimize596_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source596, oracle596) = optimized596 := by
  exact optimize596_eq.trans (by kernel_rfl)
#print axioms optimize596_exact
end InitECandidate.Proofs.SmallStages.Compact596
