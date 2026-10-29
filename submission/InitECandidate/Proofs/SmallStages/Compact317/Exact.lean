import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact317.Complete
import InitECandidate.Proofs.SmallStages.Oracles317
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles317
namespace InitECandidate.Proofs.SmallStages.Compact317
theorem optimize317_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source317, oracle317) = optimized317 := by
  exact optimize317_eq.trans (by kernel_rfl)
#print axioms optimize317_exact
end InitECandidate.Proofs.SmallStages.Compact317
