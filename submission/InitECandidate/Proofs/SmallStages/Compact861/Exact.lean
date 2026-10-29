import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact861.Complete
import InitECandidate.Proofs.SmallStages.Oracles861
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles861
namespace InitECandidate.Proofs.SmallStages.Compact861
theorem optimize861_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source861, oracle861) = optimized861 := by
  exact optimize861_eq.trans (by kernel_rfl)
#print axioms optimize861_exact
end InitECandidate.Proofs.SmallStages.Compact861
