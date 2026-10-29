import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact504.Complete
import InitECandidate.Proofs.SmallStages.Oracles504
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles504
namespace InitECandidate.Proofs.SmallStages.Compact504
theorem optimize504_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source504, oracle504) = optimized504 := by
  exact optimize504_eq.trans (by kernel_rfl)
#print axioms optimize504_exact
end InitECandidate.Proofs.SmallStages.Compact504
