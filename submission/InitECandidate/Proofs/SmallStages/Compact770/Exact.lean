import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact770.Complete
import InitECandidate.Proofs.SmallStages.Oracles770
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles770
namespace InitECandidate.Proofs.SmallStages.Compact770
theorem optimize770_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source770, oracle770) = optimized770 := by
  exact optimize770_eq.trans (by kernel_rfl)
#print axioms optimize770_exact
end InitECandidate.Proofs.SmallStages.Compact770
