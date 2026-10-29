import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact818.Complete
import InitECandidate.Proofs.SmallStages.Oracles818
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles818
namespace InitECandidate.Proofs.SmallStages.Compact818
theorem optimize818_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source818, oracle818) = optimized818 := by
  exact optimize818_eq.trans (by kernel_rfl)
#print axioms optimize818_exact
end InitECandidate.Proofs.SmallStages.Compact818
