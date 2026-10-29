import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact665.Complete
import InitECandidate.Proofs.SmallStages.Oracles665
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles665
namespace InitECandidate.Proofs.SmallStages.Compact665
theorem optimize665_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source665, oracle665) = optimized665 := by
  exact optimize665_eq.trans (by kernel_rfl)
#print axioms optimize665_exact
end InitECandidate.Proofs.SmallStages.Compact665
