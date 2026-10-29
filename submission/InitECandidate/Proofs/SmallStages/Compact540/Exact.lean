import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact540.Complete
import InitECandidate.Proofs.SmallStages.Oracles540
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles540
namespace InitECandidate.Proofs.SmallStages.Compact540
theorem optimize540_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source540, oracle540) = optimized540 := by
  exact optimize540_eq.trans (by kernel_rfl)
#print axioms optimize540_exact
end InitECandidate.Proofs.SmallStages.Compact540
