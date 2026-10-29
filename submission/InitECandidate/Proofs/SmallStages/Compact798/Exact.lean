import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact798.Complete
import InitECandidate.Proofs.SmallStages.Oracles798
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles798
namespace InitECandidate.Proofs.SmallStages.Compact798
theorem optimize798_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source798, oracle798) = optimized798 := by
  exact optimize798_eq.trans (by kernel_rfl)
#print axioms optimize798_exact
end InitECandidate.Proofs.SmallStages.Compact798
