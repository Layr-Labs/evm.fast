import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact432.Complete
import InitECandidate.Proofs.SmallStages.Oracles432
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles432
namespace InitECandidate.Proofs.SmallStages.Compact432
theorem optimize432_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source432, oracle432) = optimized432 := by
  exact optimize432_eq.trans (by kernel_rfl)
#print axioms optimize432_exact
end InitECandidate.Proofs.SmallStages.Compact432
