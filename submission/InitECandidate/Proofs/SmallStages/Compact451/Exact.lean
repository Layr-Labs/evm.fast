import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact451.Complete
import InitECandidate.Proofs.SmallStages.Oracles451
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles451
namespace InitECandidate.Proofs.SmallStages.Compact451
theorem optimize451_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source451, oracle451) = optimized451 := by
  exact optimize451_eq.trans (by kernel_rfl)
#print axioms optimize451_exact
end InitECandidate.Proofs.SmallStages.Compact451
