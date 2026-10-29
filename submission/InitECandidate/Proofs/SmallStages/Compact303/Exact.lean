import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact303.Complete
import InitECandidate.Proofs.SmallStages.Oracles303
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles303
namespace InitECandidate.Proofs.SmallStages.Compact303
theorem optimize303_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source303, oracle303) = optimized303 := by
  exact optimize303_eq.trans (by kernel_rfl)
#print axioms optimize303_exact
end InitECandidate.Proofs.SmallStages.Compact303
