import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact545.Complete
import InitECandidate.Proofs.SmallStages.Oracles545
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles545
namespace InitECandidate.Proofs.SmallStages.Compact545
theorem optimize545_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source545, oracle545) = optimized545 := by
  exact optimize545_eq.trans (by kernel_rfl)
#print axioms optimize545_exact
end InitECandidate.Proofs.SmallStages.Compact545
