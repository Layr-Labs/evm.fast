import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact824.Complete
import InitECandidate.Proofs.SmallStages.Oracles824
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles824
namespace InitECandidate.Proofs.SmallStages.Compact824
theorem optimize824_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source824, oracle824) = optimized824 := by
  exact optimize824_eq.trans (by kernel_rfl)
#print axioms optimize824_exact
end InitECandidate.Proofs.SmallStages.Compact824
