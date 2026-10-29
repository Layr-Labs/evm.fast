import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact367.Complete
import InitECandidate.Proofs.SmallStages.Oracles367
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles367
namespace InitECandidate.Proofs.SmallStages.Compact367
theorem optimize367_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source367, oracle367) = optimized367 := by
  exact optimize367_eq.trans (by kernel_rfl)
#print axioms optimize367_exact
end InitECandidate.Proofs.SmallStages.Compact367
