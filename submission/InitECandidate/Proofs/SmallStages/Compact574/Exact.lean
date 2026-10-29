import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact574.Complete
import InitECandidate.Proofs.SmallStages.Oracles574
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles574
namespace InitECandidate.Proofs.SmallStages.Compact574
theorem optimize574_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source574, oracle574) = optimized574 := by
  exact optimize574_eq.trans (by kernel_rfl)
#print axioms optimize574_exact
end InitECandidate.Proofs.SmallStages.Compact574
