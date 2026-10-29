import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact653.Complete
import InitECandidate.Proofs.SmallStages.Oracles653
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles653
namespace InitECandidate.Proofs.SmallStages.Compact653
theorem optimize653_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source653, oracle653) = optimized653 := by
  exact optimize653_eq.trans (by kernel_rfl)
#print axioms optimize653_exact
end InitECandidate.Proofs.SmallStages.Compact653
