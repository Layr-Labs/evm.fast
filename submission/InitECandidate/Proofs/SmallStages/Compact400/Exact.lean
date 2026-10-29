import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact400.Complete
import InitECandidate.Proofs.SmallStages.Oracles400
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles400
namespace InitECandidate.Proofs.SmallStages.Compact400
theorem optimize400_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source400, oracle400) = optimized400 := by
  exact optimize400_eq.trans (by kernel_rfl)
#print axioms optimize400_exact
end InitECandidate.Proofs.SmallStages.Compact400
