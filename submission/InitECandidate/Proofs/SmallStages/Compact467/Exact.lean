import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact467.Complete
import InitECandidate.Proofs.SmallStages.Oracles467
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles467
namespace InitECandidate.Proofs.SmallStages.Compact467
theorem optimize467_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source467, oracle467) = optimized467 := by
  exact optimize467_eq.trans (by kernel_rfl)
#print axioms optimize467_exact
end InitECandidate.Proofs.SmallStages.Compact467
