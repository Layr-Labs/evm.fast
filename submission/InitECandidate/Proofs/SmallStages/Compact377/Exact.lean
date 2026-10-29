import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact377.Complete
import InitECandidate.Proofs.SmallStages.Oracles377
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles377
namespace InitECandidate.Proofs.SmallStages.Compact377
theorem optimize377_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source377, oracle377) = optimized377 := by
  exact optimize377_eq.trans (by kernel_rfl)
#print axioms optimize377_exact
end InitECandidate.Proofs.SmallStages.Compact377
