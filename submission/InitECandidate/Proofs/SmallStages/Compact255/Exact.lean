import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact255.Complete
import InitECandidate.Proofs.SmallStages.Oracles255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles255
namespace InitECandidate.Proofs.SmallStages.Compact255
theorem optimize255_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source255, oracle255) = optimized255 := by
  exact optimize255_eq.trans (by kernel_rfl)
#print axioms optimize255_exact
end InitECandidate.Proofs.SmallStages.Compact255
