import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact805.Complete
import InitECandidate.Proofs.SmallStages.Oracles805
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles805
namespace InitECandidate.Proofs.SmallStages.Compact805
theorem optimize805_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source805, oracle805) = optimized805 := by
  exact optimize805_eq.trans (by kernel_rfl)
#print axioms optimize805_exact
end InitECandidate.Proofs.SmallStages.Compact805
