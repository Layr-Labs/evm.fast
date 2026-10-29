import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact454.Complete
import InitECandidate.Proofs.SmallStages.Oracles454
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles454
namespace InitECandidate.Proofs.SmallStages.Compact454
theorem optimize454_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source454, oracle454) = optimized454 := by
  exact optimize454_eq.trans (by kernel_rfl)
#print axioms optimize454_exact
end InitECandidate.Proofs.SmallStages.Compact454
