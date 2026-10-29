import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact508.Complete
import InitECandidate.Proofs.SmallStages.Oracles508
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles508
namespace InitECandidate.Proofs.SmallStages.Compact508
theorem optimize508_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source508, oracle508) = optimized508 := by
  exact optimize508_eq.trans (by kernel_rfl)
#print axioms optimize508_exact
end InitECandidate.Proofs.SmallStages.Compact508
