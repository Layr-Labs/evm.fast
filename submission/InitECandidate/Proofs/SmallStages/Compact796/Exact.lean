import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact796.Complete
import InitECandidate.Proofs.SmallStages.Oracles796
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles796
namespace InitECandidate.Proofs.SmallStages.Compact796
theorem optimize796_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source796, oracle796) = optimized796 := by
  exact optimize796_eq.trans (by kernel_rfl)
#print axioms optimize796_exact
end InitECandidate.Proofs.SmallStages.Compact796
