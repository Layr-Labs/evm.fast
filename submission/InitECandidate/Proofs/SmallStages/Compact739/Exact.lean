import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact739.Complete
import InitECandidate.Proofs.SmallStages.Oracles739
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles739
namespace InitECandidate.Proofs.SmallStages.Compact739
theorem optimize739_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source739, oracle739) = optimized739 := by
  exact optimize739_eq.trans (by kernel_rfl)
#print axioms optimize739_exact
end InitECandidate.Proofs.SmallStages.Compact739
