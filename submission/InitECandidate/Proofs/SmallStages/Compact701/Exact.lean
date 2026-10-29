import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact701.Complete
import InitECandidate.Proofs.SmallStages.Oracles701
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles701
namespace InitECandidate.Proofs.SmallStages.Compact701
theorem optimize701_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source701, oracle701) = optimized701 := by
  exact optimize701_eq.trans (by kernel_rfl)
#print axioms optimize701_exact
end InitECandidate.Proofs.SmallStages.Compact701
