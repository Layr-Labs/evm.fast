import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact278.Complete
import InitECandidate.Proofs.SmallStages.Oracles278
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles278
namespace InitECandidate.Proofs.SmallStages.Compact278
theorem optimize278_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source278, oracle278) = optimized278 := by
  exact optimize278_eq.trans (by kernel_rfl)
#print axioms optimize278_exact
end InitECandidate.Proofs.SmallStages.Compact278
