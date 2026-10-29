import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact758.Complete
import InitECandidate.Proofs.SmallStages.Oracles758
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles758
namespace InitECandidate.Proofs.SmallStages.Compact758
theorem optimize758_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source758, oracle758) = optimized758 := by
  exact optimize758_eq.trans (by kernel_rfl)
#print axioms optimize758_exact
end InitECandidate.Proofs.SmallStages.Compact758
