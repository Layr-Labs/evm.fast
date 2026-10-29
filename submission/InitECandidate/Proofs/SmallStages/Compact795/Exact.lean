import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact795.Complete
import InitECandidate.Proofs.SmallStages.Oracles795
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles795
namespace InitECandidate.Proofs.SmallStages.Compact795
theorem optimize795_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source795, oracle795) = optimized795 := by
  exact optimize795_eq.trans (by kernel_rfl)
#print axioms optimize795_exact
end InitECandidate.Proofs.SmallStages.Compact795
