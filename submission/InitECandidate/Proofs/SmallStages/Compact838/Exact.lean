import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact838.Complete
import InitECandidate.Proofs.SmallStages.Oracles838
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles838
namespace InitECandidate.Proofs.SmallStages.Compact838
theorem optimize838_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source838, oracle838) = optimized838 := by
  exact optimize838_eq.trans (by kernel_rfl)
#print axioms optimize838_exact
end InitECandidate.Proofs.SmallStages.Compact838
