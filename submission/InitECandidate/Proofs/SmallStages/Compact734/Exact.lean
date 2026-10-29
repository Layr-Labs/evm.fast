import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact734.Complete
import InitECandidate.Proofs.SmallStages.Oracles734
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles734
namespace InitECandidate.Proofs.SmallStages.Compact734
theorem optimize734_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source734, oracle734) = optimized734 := by
  exact optimize734_eq.trans (by kernel_rfl)
#print axioms optimize734_exact
end InitECandidate.Proofs.SmallStages.Compact734
