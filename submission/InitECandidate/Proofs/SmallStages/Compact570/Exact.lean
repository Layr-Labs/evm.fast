import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact570.Complete
import InitECandidate.Proofs.SmallStages.Oracles570
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles570
namespace InitECandidate.Proofs.SmallStages.Compact570
theorem optimize570_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source570, oracle570) = optimized570 := by
  exact optimize570_eq.trans (by kernel_rfl)
#print axioms optimize570_exact
end InitECandidate.Proofs.SmallStages.Compact570
