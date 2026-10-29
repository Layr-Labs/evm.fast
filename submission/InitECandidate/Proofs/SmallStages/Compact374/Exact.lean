import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact374.Complete
import InitECandidate.Proofs.SmallStages.Oracles374
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles374
namespace InitECandidate.Proofs.SmallStages.Compact374
theorem optimize374_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source374, oracle374) = optimized374 := by
  exact optimize374_eq.trans (by kernel_rfl)
#print axioms optimize374_exact
end InitECandidate.Proofs.SmallStages.Compact374
