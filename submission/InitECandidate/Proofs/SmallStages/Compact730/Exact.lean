import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact730.Complete
import InitECandidate.Proofs.SmallStages.Oracles730
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles730
namespace InitECandidate.Proofs.SmallStages.Compact730
theorem optimize730_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source730, oracle730) = optimized730 := by
  exact optimize730_eq.trans (by kernel_rfl)
#print axioms optimize730_exact
end InitECandidate.Proofs.SmallStages.Compact730
