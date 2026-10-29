import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact750.Complete
import InitECandidate.Proofs.SmallStages.Oracles750
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles750
namespace InitECandidate.Proofs.SmallStages.Compact750
theorem optimize750_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source750, oracle750) = optimized750 := by
  exact optimize750_eq.trans (by kernel_rfl)
#print axioms optimize750_exact
end InitECandidate.Proofs.SmallStages.Compact750
