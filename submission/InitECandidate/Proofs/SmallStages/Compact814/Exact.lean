import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact814.Complete
import InitECandidate.Proofs.SmallStages.Oracles814
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles814
namespace InitECandidate.Proofs.SmallStages.Compact814
theorem optimize814_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source814, oracle814) = optimized814 := by
  exact optimize814_eq.trans (by kernel_rfl)
#print axioms optimize814_exact
end InitECandidate.Proofs.SmallStages.Compact814
