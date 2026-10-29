import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact409.Complete
import InitECandidate.Proofs.SmallStages.Oracles409
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles409
namespace InitECandidate.Proofs.SmallStages.Compact409
theorem optimize409_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source409, oracle409) = optimized409 := by
  exact optimize409_eq.trans (by kernel_rfl)
#print axioms optimize409_exact
end InitECandidate.Proofs.SmallStages.Compact409
