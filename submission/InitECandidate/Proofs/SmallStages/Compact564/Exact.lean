import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact564.Complete
import InitECandidate.Proofs.SmallStages.Oracles564
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles564
namespace InitECandidate.Proofs.SmallStages.Compact564
theorem optimize564_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source564, oracle564) = optimized564 := by
  exact optimize564_eq.trans (by kernel_rfl)
#print axioms optimize564_exact
end InitECandidate.Proofs.SmallStages.Compact564
