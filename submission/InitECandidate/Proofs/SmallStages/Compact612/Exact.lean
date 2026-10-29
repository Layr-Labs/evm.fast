import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact612.Complete
import InitECandidate.Proofs.SmallStages.Oracles612
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles612
namespace InitECandidate.Proofs.SmallStages.Compact612
theorem optimize612_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source612, oracle612) = optimized612 := by
  exact optimize612_eq.trans (by kernel_rfl)
#print axioms optimize612_exact
end InitECandidate.Proofs.SmallStages.Compact612
