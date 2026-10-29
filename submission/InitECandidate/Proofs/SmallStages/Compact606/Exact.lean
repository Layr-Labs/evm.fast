import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact606.Complete
import InitECandidate.Proofs.SmallStages.Oracles606
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles606
namespace InitECandidate.Proofs.SmallStages.Compact606
theorem optimize606_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source606, oracle606) = optimized606 := by
  exact optimize606_eq.trans (by kernel_rfl)
#print axioms optimize606_exact
end InitECandidate.Proofs.SmallStages.Compact606
