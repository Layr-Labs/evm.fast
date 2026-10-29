import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact829.Complete
import InitECandidate.Proofs.SmallStages.Oracles829
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles829
namespace InitECandidate.Proofs.SmallStages.Compact829
theorem optimize829_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source829, oracle829) = optimized829 := by
  exact optimize829_eq.trans (by kernel_rfl)
#print axioms optimize829_exact
end InitECandidate.Proofs.SmallStages.Compact829
