import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact326.Complete
import InitECandidate.Proofs.SmallStages.Oracles326
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles326
namespace InitECandidate.Proofs.SmallStages.Compact326
theorem optimize326_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source326, oracle326) = optimized326 := by
  exact optimize326_eq.trans (by kernel_rfl)
#print axioms optimize326_exact
end InitECandidate.Proofs.SmallStages.Compact326
