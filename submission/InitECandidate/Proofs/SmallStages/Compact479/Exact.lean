import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact479.Complete
import InitECandidate.Proofs.SmallStages.Oracles479
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles479
namespace InitECandidate.Proofs.SmallStages.Compact479
theorem optimize479_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source479, oracle479) = optimized479 := by
  exact optimize479_eq.trans (by kernel_rfl)
#print axioms optimize479_exact
end InitECandidate.Proofs.SmallStages.Compact479
