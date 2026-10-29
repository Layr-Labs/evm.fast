import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact412.Complete
import InitECandidate.Proofs.SmallStages.Oracles412
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles412
namespace InitECandidate.Proofs.SmallStages.Compact412
theorem optimize412_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source412, oracle412) = optimized412 := by
  exact optimize412_eq.trans (by kernel_rfl)
#print axioms optimize412_exact
end InitECandidate.Proofs.SmallStages.Compact412
