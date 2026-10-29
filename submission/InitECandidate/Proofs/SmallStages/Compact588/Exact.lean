import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact588.Complete
import InitECandidate.Proofs.SmallStages.Oracles588
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles588
namespace InitECandidate.Proofs.SmallStages.Compact588
theorem optimize588_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source588, oracle588) = optimized588 := by
  exact optimize588_eq.trans (by kernel_rfl)
#print axioms optimize588_exact
end InitECandidate.Proofs.SmallStages.Compact588
