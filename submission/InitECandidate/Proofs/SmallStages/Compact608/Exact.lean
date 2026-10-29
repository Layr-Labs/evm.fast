import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact608.Complete
import InitECandidate.Proofs.SmallStages.Oracles608
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles608
namespace InitECandidate.Proofs.SmallStages.Compact608
theorem optimize608_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source608, oracle608) = optimized608 := by
  exact optimize608_eq.trans (by kernel_rfl)
#print axioms optimize608_exact
end InitECandidate.Proofs.SmallStages.Compact608
