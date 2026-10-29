import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact441.Complete
import InitECandidate.Proofs.SmallStages.Oracles441
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles441
namespace InitECandidate.Proofs.SmallStages.Compact441
theorem optimize441_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source441, oracle441) = optimized441 := by
  exact optimize441_eq.trans (by kernel_rfl)
#print axioms optimize441_exact
end InitECandidate.Proofs.SmallStages.Compact441
