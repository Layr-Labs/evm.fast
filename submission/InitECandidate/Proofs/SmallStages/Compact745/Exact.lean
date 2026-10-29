import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact745.Complete
import InitECandidate.Proofs.SmallStages.Oracles745
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles745
namespace InitECandidate.Proofs.SmallStages.Compact745
theorem optimize745_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source745, oracle745) = optimized745 := by
  exact optimize745_eq.trans (by kernel_rfl)
#print axioms optimize745_exact
end InitECandidate.Proofs.SmallStages.Compact745
