import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact502.Complete
import InitECandidate.Proofs.SmallStages.Oracles502
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles502
namespace InitECandidate.Proofs.SmallStages.Compact502
theorem optimize502_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source502, oracle502) = optimized502 := by
  exact optimize502_eq.trans (by kernel_rfl)
#print axioms optimize502_exact
end InitECandidate.Proofs.SmallStages.Compact502
