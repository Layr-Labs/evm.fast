import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact870.Complete
import InitECandidate.Proofs.SmallStages.Oracles870
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles870
namespace InitECandidate.Proofs.SmallStages.Compact870
theorem optimize870_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source870, oracle870) = optimized870 := by
  exact optimize870_eq.trans (by kernel_rfl)
#print axioms optimize870_exact
end InitECandidate.Proofs.SmallStages.Compact870
