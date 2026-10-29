import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact403.Complete
import InitECandidate.Proofs.SmallStages.Oracles403
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles403
namespace InitECandidate.Proofs.SmallStages.Compact403
theorem optimize403_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source403, oracle403) = optimized403 := by
  exact optimize403_eq.trans (by kernel_rfl)
#print axioms optimize403_exact
end InitECandidate.Proofs.SmallStages.Compact403
