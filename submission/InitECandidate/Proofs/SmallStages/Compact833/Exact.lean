import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact833.Complete
import InitECandidate.Proofs.SmallStages.Oracles833
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles833
namespace InitECandidate.Proofs.SmallStages.Compact833
theorem optimize833_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source833, oracle833) = optimized833 := by
  exact optimize833_eq.trans (by kernel_rfl)
#print axioms optimize833_exact
end InitECandidate.Proofs.SmallStages.Compact833
