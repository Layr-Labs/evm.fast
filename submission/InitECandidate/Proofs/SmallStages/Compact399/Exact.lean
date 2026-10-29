import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact399.Complete
import InitECandidate.Proofs.SmallStages.Oracles399
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles399
namespace InitECandidate.Proofs.SmallStages.Compact399
theorem optimize399_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source399, oracle399) = optimized399 := by
  exact optimize399_eq.trans (by kernel_rfl)
#print axioms optimize399_exact
end InitECandidate.Proofs.SmallStages.Compact399
