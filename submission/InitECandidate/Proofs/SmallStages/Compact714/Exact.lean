import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact714.Complete
import InitECandidate.Proofs.SmallStages.Oracles714
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles714
namespace InitECandidate.Proofs.SmallStages.Compact714
theorem optimize714_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source714, oracle714) = optimized714 := by
  exact optimize714_eq.trans (by kernel_rfl)
#print axioms optimize714_exact
end InitECandidate.Proofs.SmallStages.Compact714
