import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact583.Complete
import InitECandidate.Proofs.SmallStages.Oracles583
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles583
namespace InitECandidate.Proofs.SmallStages.Compact583
theorem optimize583_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source583, oracle583) = optimized583 := by
  exact optimize583_eq.trans (by kernel_rfl)
#print axioms optimize583_exact
end InitECandidate.Proofs.SmallStages.Compact583
