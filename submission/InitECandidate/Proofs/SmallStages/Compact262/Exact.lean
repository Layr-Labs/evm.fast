import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact262.Complete
import InitECandidate.Proofs.SmallStages.Oracles262
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles262
namespace InitECandidate.Proofs.SmallStages.Compact262
theorem optimize262_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source262, oracle262) = optimized262 := by
  exact optimize262_eq.trans (by kernel_rfl)
#print axioms optimize262_exact
end InitECandidate.Proofs.SmallStages.Compact262
