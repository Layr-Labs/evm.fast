import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact499.Complete
import InitECandidate.Proofs.SmallStages.Oracles499
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles499
namespace InitECandidate.Proofs.SmallStages.Compact499
theorem optimize499_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source499, oracle499) = optimized499 := by
  exact optimize499_eq.trans (by kernel_rfl)
#print axioms optimize499_exact
end InitECandidate.Proofs.SmallStages.Compact499
