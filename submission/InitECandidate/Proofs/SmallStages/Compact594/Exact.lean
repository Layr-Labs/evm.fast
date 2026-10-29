import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact594.Complete
import InitECandidate.Proofs.SmallStages.Oracles594
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles594
namespace InitECandidate.Proofs.SmallStages.Compact594
theorem optimize594_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source594, oracle594) = optimized594 := by
  exact optimize594_eq.trans (by kernel_rfl)
#print axioms optimize594_exact
end InitECandidate.Proofs.SmallStages.Compact594
