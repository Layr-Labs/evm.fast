import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact799.Complete
import InitECandidate.Proofs.SmallStages.Oracles799
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles799
namespace InitECandidate.Proofs.SmallStages.Compact799
theorem optimize799_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source799, oracle799) = optimized799 := by
  exact optimize799_eq.trans (by kernel_rfl)
#print axioms optimize799_exact
end InitECandidate.Proofs.SmallStages.Compact799
