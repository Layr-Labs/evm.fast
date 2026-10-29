import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact600.Complete
import InitECandidate.Proofs.SmallStages.Oracles600
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles600
namespace InitECandidate.Proofs.SmallStages.Compact600
theorem optimize600_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source600, oracle600) = optimized600 := by
  exact optimize600_eq.trans (by kernel_rfl)
#print axioms optimize600_exact
end InitECandidate.Proofs.SmallStages.Compact600
