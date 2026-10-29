import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact486.Complete
import InitECandidate.Proofs.SmallStages.Oracles486
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles486
namespace InitECandidate.Proofs.SmallStages.Compact486
theorem optimize486_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source486, oracle486) = optimized486 := by
  exact optimize486_eq.trans (by kernel_rfl)
#print axioms optimize486_exact
end InitECandidate.Proofs.SmallStages.Compact486
