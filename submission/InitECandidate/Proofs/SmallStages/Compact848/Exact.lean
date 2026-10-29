import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact848.Complete
import InitECandidate.Proofs.SmallStages.Oracles848
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles848
namespace InitECandidate.Proofs.SmallStages.Compact848
theorem optimize848_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source848, oracle848) = optimized848 := by
  exact optimize848_eq.trans (by kernel_rfl)
#print axioms optimize848_exact
end InitECandidate.Proofs.SmallStages.Compact848
