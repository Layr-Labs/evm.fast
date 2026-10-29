import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact497.Complete
import InitECandidate.Proofs.SmallStages.Oracles497
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles497
namespace InitECandidate.Proofs.SmallStages.Compact497
theorem optimize497_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source497, oracle497) = optimized497 := by
  exact optimize497_eq.trans (by kernel_rfl)
#print axioms optimize497_exact
end InitECandidate.Proofs.SmallStages.Compact497
