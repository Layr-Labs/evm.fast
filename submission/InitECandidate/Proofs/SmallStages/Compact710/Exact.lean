import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact710.Complete
import InitECandidate.Proofs.SmallStages.Oracles710
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles710
namespace InitECandidate.Proofs.SmallStages.Compact710
theorem optimize710_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source710, oracle710) = optimized710 := by
  exact optimize710_eq.trans (by kernel_rfl)
#print axioms optimize710_exact
end InitECandidate.Proofs.SmallStages.Compact710
