import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact625.Complete
import InitECandidate.Proofs.SmallStages.Oracles625
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles625
namespace InitECandidate.Proofs.SmallStages.Compact625
theorem optimize625_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source625, oracle625) = optimized625 := by
  exact optimize625_eq.trans (by kernel_rfl)
#print axioms optimize625_exact
end InitECandidate.Proofs.SmallStages.Compact625
