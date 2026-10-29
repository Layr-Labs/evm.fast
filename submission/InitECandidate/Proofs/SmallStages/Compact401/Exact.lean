import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact401.Complete
import InitECandidate.Proofs.SmallStages.Oracles401
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles401
namespace InitECandidate.Proofs.SmallStages.Compact401
theorem optimize401_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source401, oracle401) = optimized401 := by
  exact optimize401_eq.trans (by kernel_rfl)
#print axioms optimize401_exact
end InitECandidate.Proofs.SmallStages.Compact401
