import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact735.Complete
import InitECandidate.Proofs.SmallStages.Oracles735
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles735
namespace InitECandidate.Proofs.SmallStages.Compact735
theorem optimize735_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source735, oracle735) = optimized735 := by
  exact optimize735_eq.trans (by kernel_rfl)
#print axioms optimize735_exact
end InitECandidate.Proofs.SmallStages.Compact735
