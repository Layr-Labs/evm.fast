import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact801.Complete
import InitECandidate.Proofs.SmallStages.Oracles801
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles801
namespace InitECandidate.Proofs.SmallStages.Compact801
theorem optimize801_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source801, oracle801) = optimized801 := by
  exact optimize801_eq.trans (by kernel_rfl)
#print axioms optimize801_exact
end InitECandidate.Proofs.SmallStages.Compact801
