import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact843.Complete
import InitECandidate.Proofs.SmallStages.Oracles843
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles843
namespace InitECandidate.Proofs.SmallStages.Compact843
theorem optimize843_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source843, oracle843) = optimized843 := by
  exact optimize843_eq.trans (by kernel_rfl)
#print axioms optimize843_exact
end InitECandidate.Proofs.SmallStages.Compact843
