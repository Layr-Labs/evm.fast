import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact352.Complete
import InitECandidate.Proofs.SmallStages.Oracles352
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles352
namespace InitECandidate.Proofs.SmallStages.Compact352
theorem optimize352_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source352, oracle352) = optimized352 := by
  exact optimize352_eq.trans (by kernel_rfl)
#print axioms optimize352_exact
end InitECandidate.Proofs.SmallStages.Compact352
