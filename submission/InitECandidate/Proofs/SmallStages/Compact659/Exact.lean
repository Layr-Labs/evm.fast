import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact659.Complete
import InitECandidate.Proofs.SmallStages.Oracles659
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles659
namespace InitECandidate.Proofs.SmallStages.Compact659
theorem optimize659_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source659, oracle659) = optimized659 := by
  exact optimize659_eq.trans (by kernel_rfl)
#print axioms optimize659_exact
end InitECandidate.Proofs.SmallStages.Compact659
