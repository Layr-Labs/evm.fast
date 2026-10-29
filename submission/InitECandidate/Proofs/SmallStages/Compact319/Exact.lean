import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact319.Complete
import InitECandidate.Proofs.SmallStages.Oracles319
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles319
namespace InitECandidate.Proofs.SmallStages.Compact319
theorem optimize319_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source319, oracle319) = optimized319 := by
  exact optimize319_eq.trans (by kernel_rfl)
#print axioms optimize319_exact
end InitECandidate.Proofs.SmallStages.Compact319
