import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact771.Complete
import InitECandidate.Proofs.SmallStages.Oracles771
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles771
namespace InitECandidate.Proofs.SmallStages.Compact771
theorem optimize771_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source771, oracle771) = optimized771 := by
  exact optimize771_eq.trans (by kernel_rfl)
#print axioms optimize771_exact
end InitECandidate.Proofs.SmallStages.Compact771
