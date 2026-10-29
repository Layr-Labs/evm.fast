import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact877.Complete
import InitECandidate.Proofs.SmallStages.Oracles877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles877
namespace InitECandidate.Proofs.SmallStages.Compact877
theorem optimize877_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source877, oracle877) = optimized877 := by
  exact optimize877_eq.trans (by kernel_rfl)
#print axioms optimize877_exact
end InitECandidate.Proofs.SmallStages.Compact877
