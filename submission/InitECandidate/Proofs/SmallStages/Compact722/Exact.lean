import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact722.Complete
import InitECandidate.Proofs.SmallStages.Oracles722
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles722
namespace InitECandidate.Proofs.SmallStages.Compact722
theorem optimize722_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source722, oracle722) = optimized722 := by
  exact optimize722_eq.trans (by kernel_rfl)
#print axioms optimize722_exact
end InitECandidate.Proofs.SmallStages.Compact722
