import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact567.Complete
import InitECandidate.Proofs.SmallStages.Oracles567
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles567
namespace InitECandidate.Proofs.SmallStages.Compact567
theorem optimize567_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source567, oracle567) = optimized567 := by
  exact optimize567_eq.trans (by kernel_rfl)
#print axioms optimize567_exact
end InitECandidate.Proofs.SmallStages.Compact567
