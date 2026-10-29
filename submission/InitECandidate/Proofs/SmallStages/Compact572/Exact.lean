import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact572.Complete
import InitECandidate.Proofs.SmallStages.Oracles572
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles572
namespace InitECandidate.Proofs.SmallStages.Compact572
theorem optimize572_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source572, oracle572) = optimized572 := by
  exact optimize572_eq.trans (by kernel_rfl)
#print axioms optimize572_exact
end InitECandidate.Proofs.SmallStages.Compact572
