import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact831.Complete
import InitECandidate.Proofs.SmallStages.Oracles831
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles831
namespace InitECandidate.Proofs.SmallStages.Compact831
theorem optimize831_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source831, oracle831) = optimized831 := by
  exact optimize831_eq.trans (by kernel_rfl)
#print axioms optimize831_exact
end InitECandidate.Proofs.SmallStages.Compact831
