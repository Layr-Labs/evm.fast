import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact384.Complete
import InitECandidate.Proofs.SmallStages.Oracles384
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles384
namespace InitECandidate.Proofs.SmallStages.Compact384
theorem optimize384_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source384, oracle384) = optimized384 := by
  exact optimize384_eq.trans (by kernel_rfl)
#print axioms optimize384_exact
end InitECandidate.Proofs.SmallStages.Compact384
