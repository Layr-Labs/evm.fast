import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact520.Complete
import InitECandidate.Proofs.SmallStages.Oracles520
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles520
namespace InitECandidate.Proofs.SmallStages.Compact520
theorem optimize520_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source520, oracle520) = optimized520 := by
  exact optimize520_eq.trans (by kernel_rfl)
#print axioms optimize520_exact
end InitECandidate.Proofs.SmallStages.Compact520
