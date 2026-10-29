import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact310.Complete
import InitECandidate.Proofs.SmallStages.Oracles310
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles310
namespace InitECandidate.Proofs.SmallStages.Compact310
theorem optimize310_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source310, oracle310) = optimized310 := by
  exact optimize310_eq.trans (by kernel_rfl)
#print axioms optimize310_exact
end InitECandidate.Proofs.SmallStages.Compact310
