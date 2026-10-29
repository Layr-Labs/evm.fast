import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact616.Complete
import InitECandidate.Proofs.SmallStages.Oracles616
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles616
namespace InitECandidate.Proofs.SmallStages.Compact616
theorem optimize616_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source616, oracle616) = optimized616 := by
  exact optimize616_eq.trans (by kernel_rfl)
#print axioms optimize616_exact
end InitECandidate.Proofs.SmallStages.Compact616
