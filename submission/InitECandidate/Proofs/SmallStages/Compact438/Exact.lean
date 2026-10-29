import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact438.Complete
import InitECandidate.Proofs.SmallStages.Oracles438
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles438
namespace InitECandidate.Proofs.SmallStages.Compact438
theorem optimize438_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source438, oracle438) = optimized438 := by
  exact optimize438_eq.trans (by kernel_rfl)
#print axioms optimize438_exact
end InitECandidate.Proofs.SmallStages.Compact438
