import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact551.Complete
import InitECandidate.Proofs.SmallStages.Oracles551
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles551
namespace InitECandidate.Proofs.SmallStages.Compact551
theorem optimize551_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source551, oracle551) = optimized551 := by
  exact optimize551_eq.trans (by kernel_rfl)
#print axioms optimize551_exact
end InitECandidate.Proofs.SmallStages.Compact551
