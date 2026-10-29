import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact361.Complete
import InitECandidate.Proofs.SmallStages.Oracles361
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles361
namespace InitECandidate.Proofs.SmallStages.Compact361
theorem optimize361_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source361, oracle361) = optimized361 := by
  exact optimize361_eq.trans (by kernel_rfl)
#print axioms optimize361_exact
end InitECandidate.Proofs.SmallStages.Compact361
