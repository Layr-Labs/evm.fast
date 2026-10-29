import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact511.Complete
import InitECandidate.Proofs.SmallStages.Oracles511
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles511
namespace InitECandidate.Proofs.SmallStages.Compact511
theorem optimize511_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source511, oracle511) = optimized511 := by
  exact optimize511_eq.trans (by kernel_rfl)
#print axioms optimize511_exact
end InitECandidate.Proofs.SmallStages.Compact511
