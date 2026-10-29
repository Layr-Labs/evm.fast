import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact723.Complete
import InitECandidate.Proofs.SmallStages.Oracles723
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles723
namespace InitECandidate.Proofs.SmallStages.Compact723
theorem optimize723_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source723, oracle723) = optimized723 := by
  exact optimize723_eq.trans (by kernel_rfl)
#print axioms optimize723_exact
end InitECandidate.Proofs.SmallStages.Compact723
