import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact852.Complete
import InitECandidate.Proofs.SmallStages.Oracles852
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles852
namespace InitECandidate.Proofs.SmallStages.Compact852
theorem optimize852_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source852, oracle852) = optimized852 := by
  exact optimize852_eq.trans (by kernel_rfl)
#print axioms optimize852_exact
end InitECandidate.Proofs.SmallStages.Compact852
