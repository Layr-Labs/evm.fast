import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact787.Complete
import InitECandidate.Proofs.SmallStages.Oracles787
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles787
namespace InitECandidate.Proofs.SmallStages.Compact787
theorem optimize787_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source787, oracle787) = optimized787 := by
  exact optimize787_eq.trans (by kernel_rfl)
#print axioms optimize787_exact
end InitECandidate.Proofs.SmallStages.Compact787
