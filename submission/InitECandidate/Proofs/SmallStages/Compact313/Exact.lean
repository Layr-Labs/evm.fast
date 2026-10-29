import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact313.Complete
import InitECandidate.Proofs.SmallStages.Oracles313
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles313
namespace InitECandidate.Proofs.SmallStages.Compact313
theorem optimize313_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source313, oracle313) = optimized313 := by
  exact optimize313_eq.trans (by kernel_rfl)
#print axioms optimize313_exact
end InitECandidate.Proofs.SmallStages.Compact313
