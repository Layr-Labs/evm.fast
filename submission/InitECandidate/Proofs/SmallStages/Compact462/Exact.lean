import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact462.Complete
import InitECandidate.Proofs.SmallStages.Oracles462
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles462
namespace InitECandidate.Proofs.SmallStages.Compact462
theorem optimize462_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source462, oracle462) = optimized462 := by
  exact optimize462_eq.trans (by kernel_rfl)
#print axioms optimize462_exact
end InitECandidate.Proofs.SmallStages.Compact462
