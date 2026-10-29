import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact690.Complete
import InitECandidate.Proofs.SmallStages.Oracles690
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles690
namespace InitECandidate.Proofs.SmallStages.Compact690
theorem optimize690_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source690, oracle690) = optimized690 := by
  exact optimize690_eq.trans (by kernel_rfl)
#print axioms optimize690_exact
end InitECandidate.Proofs.SmallStages.Compact690
