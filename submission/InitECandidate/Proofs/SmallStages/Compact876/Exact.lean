import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact876.Complete
import InitECandidate.Proofs.SmallStages.Oracles876
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles876
namespace InitECandidate.Proofs.SmallStages.Compact876
theorem optimize876_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source876, oracle876) = optimized876 := by
  exact optimize876_eq.trans (by kernel_rfl)
#print axioms optimize876_exact
end InitECandidate.Proofs.SmallStages.Compact876
