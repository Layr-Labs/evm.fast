import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact786.Complete
import InitECandidate.Proofs.SmallStages.Oracles786
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles786
namespace InitECandidate.Proofs.SmallStages.Compact786
theorem optimize786_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source786, oracle786) = optimized786 := by
  exact optimize786_eq.trans (by kernel_rfl)
#print axioms optimize786_exact
end InitECandidate.Proofs.SmallStages.Compact786
