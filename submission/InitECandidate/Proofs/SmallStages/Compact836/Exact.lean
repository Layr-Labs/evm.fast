import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact836.Complete
import InitECandidate.Proofs.SmallStages.Oracles836
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles836
namespace InitECandidate.Proofs.SmallStages.Compact836
theorem optimize836_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source836, oracle836) = optimized836 := by
  exact optimize836_eq.trans (by kernel_rfl)
#print axioms optimize836_exact
end InitECandidate.Proofs.SmallStages.Compact836
