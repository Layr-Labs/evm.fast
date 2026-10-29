import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact450.Complete
import InitECandidate.Proofs.SmallStages.Oracles450
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles450
namespace InitECandidate.Proofs.SmallStages.Compact450
theorem optimize450_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source450, oracle450) = optimized450 := by
  exact optimize450_eq.trans (by kernel_rfl)
#print axioms optimize450_exact
end InitECandidate.Proofs.SmallStages.Compact450
