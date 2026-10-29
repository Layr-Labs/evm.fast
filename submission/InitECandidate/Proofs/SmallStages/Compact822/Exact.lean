import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact822.Complete
import InitECandidate.Proofs.SmallStages.Oracles822
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles822
namespace InitECandidate.Proofs.SmallStages.Compact822
theorem optimize822_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source822, oracle822) = optimized822 := by
  exact optimize822_eq.trans (by kernel_rfl)
#print axioms optimize822_exact
end InitECandidate.Proofs.SmallStages.Compact822
