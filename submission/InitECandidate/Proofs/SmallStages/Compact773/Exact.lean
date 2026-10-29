import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact773.Complete
import InitECandidate.Proofs.SmallStages.Oracles773
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles773
namespace InitECandidate.Proofs.SmallStages.Compact773
theorem optimize773_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source773, oracle773) = optimized773 := by
  exact optimize773_eq.trans (by kernel_rfl)
#print axioms optimize773_exact
end InitECandidate.Proofs.SmallStages.Compact773
