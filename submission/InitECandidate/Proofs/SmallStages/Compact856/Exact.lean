import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact856.Complete
import InitECandidate.Proofs.SmallStages.Oracles856
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles856
namespace InitECandidate.Proofs.SmallStages.Compact856
theorem optimize856_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source856, oracle856) = optimized856 := by
  exact optimize856_eq.trans (by kernel_rfl)
#print axioms optimize856_exact
end InitECandidate.Proofs.SmallStages.Compact856
