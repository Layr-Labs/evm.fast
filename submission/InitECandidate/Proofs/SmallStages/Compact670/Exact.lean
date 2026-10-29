import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact670.Complete
import InitECandidate.Proofs.SmallStages.Oracles670
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles670
namespace InitECandidate.Proofs.SmallStages.Compact670
theorem optimize670_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source670, oracle670) = optimized670 := by
  exact optimize670_eq.trans (by kernel_rfl)
#print axioms optimize670_exact
end InitECandidate.Proofs.SmallStages.Compact670
