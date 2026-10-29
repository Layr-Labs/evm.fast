import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact733.Complete
import InitECandidate.Proofs.SmallStages.Oracles733
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles733
namespace InitECandidate.Proofs.SmallStages.Compact733
theorem optimize733_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source733, oracle733) = optimized733 := by
  exact optimize733_eq.trans (by kernel_rfl)
#print axioms optimize733_exact
end InitECandidate.Proofs.SmallStages.Compact733
