import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact860.Complete
import InitECandidate.Proofs.SmallStages.Oracles860
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles860
namespace InitECandidate.Proofs.SmallStages.Compact860
theorem optimize860_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source860, oracle860) = optimized860 := by
  exact optimize860_eq.trans (by kernel_rfl)
#print axioms optimize860_exact
end InitECandidate.Proofs.SmallStages.Compact860
