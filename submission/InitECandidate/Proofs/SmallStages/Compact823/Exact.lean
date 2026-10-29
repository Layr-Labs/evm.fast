import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact823.Complete
import InitECandidate.Proofs.SmallStages.Oracles823
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles823
namespace InitECandidate.Proofs.SmallStages.Compact823
theorem optimize823_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source823, oracle823) = optimized823 := by
  exact optimize823_eq.trans (by kernel_rfl)
#print axioms optimize823_exact
end InitECandidate.Proofs.SmallStages.Compact823
