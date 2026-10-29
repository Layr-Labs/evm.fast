import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact498.Complete
import InitECandidate.Proofs.SmallStages.Oracles498
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles498
namespace InitECandidate.Proofs.SmallStages.Compact498
theorem optimize498_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source498, oracle498) = optimized498 := by
  exact optimize498_eq.trans (by kernel_rfl)
#print axioms optimize498_exact
end InitECandidate.Proofs.SmallStages.Compact498
