import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact624.Complete
import InitECandidate.Proofs.SmallStages.Oracles624
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles624
namespace InitECandidate.Proofs.SmallStages.Compact624
theorem optimize624_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source624, oracle624) = optimized624 := by
  exact optimize624_eq.trans (by kernel_rfl)
#print axioms optimize624_exact
end InitECandidate.Proofs.SmallStages.Compact624
