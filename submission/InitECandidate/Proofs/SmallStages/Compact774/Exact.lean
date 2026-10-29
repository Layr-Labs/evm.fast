import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact774.Complete
import InitECandidate.Proofs.SmallStages.Oracles774
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles774
namespace InitECandidate.Proofs.SmallStages.Compact774
theorem optimize774_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source774, oracle774) = optimized774 := by
  exact optimize774_eq.trans (by kernel_rfl)
#print axioms optimize774_exact
end InitECandidate.Proofs.SmallStages.Compact774
