import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact872.Complete
import InitECandidate.Proofs.SmallStages.Oracles872
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles872
namespace InitECandidate.Proofs.SmallStages.Compact872
theorem optimize872_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source872, oracle872) = optimized872 := by
  exact optimize872_eq.trans (by kernel_rfl)
#print axioms optimize872_exact
end InitECandidate.Proofs.SmallStages.Compact872
