import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact620.Complete
import InitECandidate.Proofs.SmallStages.Oracles620
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles620
namespace InitECandidate.Proofs.SmallStages.Compact620
theorem optimize620_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source620, oracle620) = optimized620 := by
  exact optimize620_eq.trans (by kernel_rfl)
#print axioms optimize620_exact
end InitECandidate.Proofs.SmallStages.Compact620
