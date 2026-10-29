import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact531.Complete
import InitECandidate.Proofs.SmallStages.Oracles531
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles531
namespace InitECandidate.Proofs.SmallStages.Compact531
theorem optimize531_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source531, oracle531) = optimized531 := by
  exact optimize531_eq.trans (by kernel_rfl)
#print axioms optimize531_exact
end InitECandidate.Proofs.SmallStages.Compact531
