import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact682.Complete
import InitECandidate.Proofs.SmallStages.Oracles682
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles682
namespace InitECandidate.Proofs.SmallStages.Compact682
theorem optimize682_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source682, oracle682) = optimized682 := by
  exact optimize682_eq.trans (by kernel_rfl)
#print axioms optimize682_exact
end InitECandidate.Proofs.SmallStages.Compact682
