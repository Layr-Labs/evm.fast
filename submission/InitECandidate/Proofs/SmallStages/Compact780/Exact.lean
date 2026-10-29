import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact780.Complete
import InitECandidate.Proofs.SmallStages.Oracles780
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles780
namespace InitECandidate.Proofs.SmallStages.Compact780
theorem optimize780_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source780, oracle780) = optimized780 := by
  exact optimize780_eq.trans (by kernel_rfl)
#print axioms optimize780_exact
end InitECandidate.Proofs.SmallStages.Compact780
