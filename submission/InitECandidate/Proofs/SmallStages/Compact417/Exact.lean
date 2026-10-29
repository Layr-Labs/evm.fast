import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact417.Complete
import InitECandidate.Proofs.SmallStages.Oracles417
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles417
namespace InitECandidate.Proofs.SmallStages.Compact417
theorem optimize417_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source417, oracle417) = optimized417 := by
  exact optimize417_eq.trans (by kernel_rfl)
#print axioms optimize417_exact
end InitECandidate.Proofs.SmallStages.Compact417
