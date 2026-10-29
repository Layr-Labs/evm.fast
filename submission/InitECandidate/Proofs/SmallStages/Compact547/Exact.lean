import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact547.Complete
import InitECandidate.Proofs.SmallStages.Oracles547
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles547
namespace InitECandidate.Proofs.SmallStages.Compact547
theorem optimize547_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source547, oracle547) = optimized547 := by
  exact optimize547_eq.trans (by kernel_rfl)
#print axioms optimize547_exact
end InitECandidate.Proofs.SmallStages.Compact547
