import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact415.Complete
import InitECandidate.Proofs.SmallStages.Oracles415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles415
namespace InitECandidate.Proofs.SmallStages.Compact415
theorem optimize415_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source415, oracle415) = optimized415 := by
  exact optimize415_eq.trans (by kernel_rfl)
#print axioms optimize415_exact
end InitECandidate.Proofs.SmallStages.Compact415
