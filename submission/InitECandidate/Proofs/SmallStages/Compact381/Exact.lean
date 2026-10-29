import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact381.Complete
import InitECandidate.Proofs.SmallStages.Oracles381
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles381
namespace InitECandidate.Proofs.SmallStages.Compact381
theorem optimize381_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source381, oracle381) = optimized381 := by
  exact optimize381_eq.trans (by kernel_rfl)
#print axioms optimize381_exact
end InitECandidate.Proofs.SmallStages.Compact381
