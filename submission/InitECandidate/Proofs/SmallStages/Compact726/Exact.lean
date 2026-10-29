import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact726.Complete
import InitECandidate.Proofs.SmallStages.Oracles726
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles726
namespace InitECandidate.Proofs.SmallStages.Compact726
theorem optimize726_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source726, oracle726) = optimized726 := by
  exact optimize726_eq.trans (by kernel_rfl)
#print axioms optimize726_exact
end InitECandidate.Proofs.SmallStages.Compact726
