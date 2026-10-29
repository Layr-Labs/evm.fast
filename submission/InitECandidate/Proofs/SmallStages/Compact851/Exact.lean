import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact851.Complete
import InitECandidate.Proofs.SmallStages.Oracles851
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles851
namespace InitECandidate.Proofs.SmallStages.Compact851
theorem optimize851_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source851, oracle851) = optimized851 := by
  exact optimize851_eq.trans (by kernel_rfl)
#print axioms optimize851_exact
end InitECandidate.Proofs.SmallStages.Compact851
