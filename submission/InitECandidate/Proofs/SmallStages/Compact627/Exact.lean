import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact627.Complete
import InitECandidate.Proofs.SmallStages.Oracles627
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles627
namespace InitECandidate.Proofs.SmallStages.Compact627
theorem optimize627_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source627, oracle627) = optimized627 := by
  exact optimize627_eq.trans (by kernel_rfl)
#print axioms optimize627_exact
end InitECandidate.Proofs.SmallStages.Compact627
