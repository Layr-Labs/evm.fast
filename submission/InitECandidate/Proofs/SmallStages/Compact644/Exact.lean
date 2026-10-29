import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact644.Complete
import InitECandidate.Proofs.SmallStages.Oracles644
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles644
namespace InitECandidate.Proofs.SmallStages.Compact644
theorem optimize644_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source644, oracle644) = optimized644 := by
  exact optimize644_eq.trans (by kernel_rfl)
#print axioms optimize644_exact
end InitECandidate.Proofs.SmallStages.Compact644
