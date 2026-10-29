import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact481.Complete
import InitECandidate.Proofs.SmallStages.Oracles481
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles481
namespace InitECandidate.Proofs.SmallStages.Compact481
theorem optimize481_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source481, oracle481) = optimized481 := by
  exact optimize481_eq.trans (by kernel_rfl)
#print axioms optimize481_exact
end InitECandidate.Proofs.SmallStages.Compact481
