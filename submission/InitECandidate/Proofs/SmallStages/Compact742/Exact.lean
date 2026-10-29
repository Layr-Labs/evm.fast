import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact742.Complete
import InitECandidate.Proofs.SmallStages.Oracles742
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles742
namespace InitECandidate.Proofs.SmallStages.Compact742
theorem optimize742_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source742, oracle742) = optimized742 := by
  exact optimize742_eq.trans (by kernel_rfl)
#print axioms optimize742_exact
end InitECandidate.Proofs.SmallStages.Compact742
