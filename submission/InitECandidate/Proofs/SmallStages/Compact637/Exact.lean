import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact637.Complete
import InitECandidate.Proofs.SmallStages.Oracles637
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles637
namespace InitECandidate.Proofs.SmallStages.Compact637
theorem optimize637_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source637, oracle637) = optimized637 := by
  exact optimize637_eq.trans (by kernel_rfl)
#print axioms optimize637_exact
end InitECandidate.Proofs.SmallStages.Compact637
