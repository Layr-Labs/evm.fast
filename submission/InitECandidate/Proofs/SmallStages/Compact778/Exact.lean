import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact778.Complete
import InitECandidate.Proofs.SmallStages.Oracles778
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles778
namespace InitECandidate.Proofs.SmallStages.Compact778
theorem optimize778_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source778, oracle778) = optimized778 := by
  exact optimize778_eq.trans (by kernel_rfl)
#print axioms optimize778_exact
end InitECandidate.Proofs.SmallStages.Compact778
