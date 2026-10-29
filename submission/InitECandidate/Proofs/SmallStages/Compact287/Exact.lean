import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact287.Complete
import InitECandidate.Proofs.SmallStages.Oracles287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles287
namespace InitECandidate.Proofs.SmallStages.Compact287
theorem optimize287_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source287, oracle287) = optimized287 := by
  exact optimize287_eq.trans (by kernel_rfl)
#print axioms optimize287_exact
end InitECandidate.Proofs.SmallStages.Compact287
