import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact869.Complete
import InitECandidate.Proofs.SmallStages.Oracles869
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles869
namespace InitECandidate.Proofs.SmallStages.Compact869
theorem optimize869_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source869, oracle869) = optimized869 := by
  exact optimize869_eq.trans (by kernel_rfl)
#print axioms optimize869_exact
end InitECandidate.Proofs.SmallStages.Compact869
