import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact320.Complete
import InitECandidate.Proofs.SmallStages.Oracles320
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles320
namespace InitECandidate.Proofs.SmallStages.Compact320
theorem optimize320_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source320, oracle320) = optimized320 := by
  exact optimize320_eq.trans (by kernel_rfl)
#print axioms optimize320_exact
end InitECandidate.Proofs.SmallStages.Compact320
