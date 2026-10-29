import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact494.Complete
import InitECandidate.Proofs.SmallStages.Oracles494
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles494
namespace InitECandidate.Proofs.SmallStages.Compact494
theorem optimize494_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source494, oracle494) = optimized494 := by
  exact optimize494_eq.trans (by kernel_rfl)
#print axioms optimize494_exact
end InitECandidate.Proofs.SmallStages.Compact494
