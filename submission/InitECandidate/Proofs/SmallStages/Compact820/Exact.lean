import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact820.Complete
import InitECandidate.Proofs.SmallStages.Oracles820
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles820
namespace InitECandidate.Proofs.SmallStages.Compact820
theorem optimize820_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source820, oracle820) = optimized820 := by
  exact optimize820_eq.trans (by kernel_rfl)
#print axioms optimize820_exact
end InitECandidate.Proofs.SmallStages.Compact820
