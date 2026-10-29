import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact628.Complete
import InitECandidate.Proofs.SmallStages.Oracles628
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles628
namespace InitECandidate.Proofs.SmallStages.Compact628
theorem optimize628_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source628, oracle628) = optimized628 := by
  exact optimize628_eq.trans (by kernel_rfl)
#print axioms optimize628_exact
end InitECandidate.Proofs.SmallStages.Compact628
