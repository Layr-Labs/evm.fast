import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact521.Complete
import InitECandidate.Proofs.SmallStages.Oracles521
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles521
namespace InitECandidate.Proofs.SmallStages.Compact521
theorem optimize521_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source521, oracle521) = optimized521 := by
  exact optimize521_eq.trans (by kernel_rfl)
#print axioms optimize521_exact
end InitECandidate.Proofs.SmallStages.Compact521
