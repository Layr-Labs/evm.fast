import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact864.Complete
import InitECandidate.Proofs.SmallStages.Oracles864
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles864
namespace InitECandidate.Proofs.SmallStages.Compact864
theorem optimize864_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source864, oracle864) = optimized864 := by
  exact optimize864_eq.trans (by kernel_rfl)
#print axioms optimize864_exact
end InitECandidate.Proofs.SmallStages.Compact864
