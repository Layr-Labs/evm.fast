import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact635.Complete
import InitECandidate.Proofs.SmallStages.Oracles635
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles635
namespace InitECandidate.Proofs.SmallStages.Compact635
theorem optimize635_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source635, oracle635) = optimized635 := by
  exact optimize635_eq.trans (by kernel_rfl)
#print axioms optimize635_exact
end InitECandidate.Proofs.SmallStages.Compact635
