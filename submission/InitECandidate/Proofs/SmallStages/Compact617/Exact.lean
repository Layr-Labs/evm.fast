import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact617.Complete
import InitECandidate.Proofs.SmallStages.Oracles617
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles617
namespace InitECandidate.Proofs.SmallStages.Compact617
theorem optimize617_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source617, oracle617) = optimized617 := by
  exact optimize617_eq.trans (by kernel_rfl)
#print axioms optimize617_exact
end InitECandidate.Proofs.SmallStages.Compact617
