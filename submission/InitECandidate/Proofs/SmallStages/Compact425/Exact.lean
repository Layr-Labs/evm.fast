import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact425.Complete
import InitECandidate.Proofs.SmallStages.Oracles425
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles425
namespace InitECandidate.Proofs.SmallStages.Compact425
theorem optimize425_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source425, oracle425) = optimized425 := by
  exact optimize425_eq.trans (by kernel_rfl)
#print axioms optimize425_exact
end InitECandidate.Proofs.SmallStages.Compact425
