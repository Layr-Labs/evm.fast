import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact546.Complete
import InitECandidate.Proofs.SmallStages.Oracles546
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles546
namespace InitECandidate.Proofs.SmallStages.Compact546
theorem optimize546_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source546, oracle546) = optimized546 := by
  exact optimize546_eq.trans (by kernel_rfl)
#print axioms optimize546_exact
end InitECandidate.Proofs.SmallStages.Compact546
