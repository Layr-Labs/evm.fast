import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact448.Complete
import InitECandidate.Proofs.SmallStages.Oracles448
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles448
namespace InitECandidate.Proofs.SmallStages.Compact448
theorem optimize448_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source448, oracle448) = optimized448 := by
  exact optimize448_eq.trans (by kernel_rfl)
#print axioms optimize448_exact
end InitECandidate.Proofs.SmallStages.Compact448
