import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact813.Complete
import InitECandidate.Proofs.SmallStages.Oracles813
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles813
namespace InitECandidate.Proofs.SmallStages.Compact813
theorem optimize813_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source813, oracle813) = optimized813 := by
  exact optimize813_eq.trans (by kernel_rfl)
#print axioms optimize813_exact
end InitECandidate.Proofs.SmallStages.Compact813
