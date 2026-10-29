import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact611.Complete
import InitECandidate.Proofs.SmallStages.Oracles611
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles611
namespace InitECandidate.Proofs.SmallStages.Compact611
theorem optimize611_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source611, oracle611) = optimized611 := by
  exact optimize611_eq.trans (by kernel_rfl)
#print axioms optimize611_exact
end InitECandidate.Proofs.SmallStages.Compact611
