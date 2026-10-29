import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact673.Complete
import InitECandidate.Proofs.SmallStages.Oracles673
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles673
namespace InitECandidate.Proofs.SmallStages.Compact673
theorem optimize673_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source673, oracle673) = optimized673 := by
  exact optimize673_eq.trans (by kernel_rfl)
#print axioms optimize673_exact
end InitECandidate.Proofs.SmallStages.Compact673
