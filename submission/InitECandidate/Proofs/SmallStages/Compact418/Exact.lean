import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact418.Complete
import InitECandidate.Proofs.SmallStages.Oracles418
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles418
namespace InitECandidate.Proofs.SmallStages.Compact418
theorem optimize418_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source418, oracle418) = optimized418 := by
  exact optimize418_eq.trans (by kernel_rfl)
#print axioms optimize418_exact
end InitECandidate.Proofs.SmallStages.Compact418
