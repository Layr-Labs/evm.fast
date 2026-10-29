import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact757.Complete
import InitECandidate.Proofs.SmallStages.Oracles757
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles757
namespace InitECandidate.Proofs.SmallStages.Compact757
theorem optimize757_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source757, oracle757) = optimized757 := by
  exact optimize757_eq.trans (by kernel_rfl)
#print axioms optimize757_exact
end InitECandidate.Proofs.SmallStages.Compact757
