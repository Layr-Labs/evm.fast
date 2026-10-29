import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact654.Complete
import InitECandidate.Proofs.SmallStages.Oracles654
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles654
namespace InitECandidate.Proofs.SmallStages.Compact654
theorem optimize654_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source654, oracle654) = optimized654 := by
  exact optimize654_eq.trans (by kernel_rfl)
#print axioms optimize654_exact
end InitECandidate.Proofs.SmallStages.Compact654
