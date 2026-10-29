import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact841.Complete
import InitECandidate.Proofs.SmallStages.Oracles841
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles841
namespace InitECandidate.Proofs.SmallStages.Compact841
theorem optimize841_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source841, oracle841) = optimized841 := by
  exact optimize841_eq.trans (by kernel_rfl)
#print axioms optimize841_exact
end InitECandidate.Proofs.SmallStages.Compact841
