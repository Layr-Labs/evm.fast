import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact621.Complete
import InitECandidate.Proofs.SmallStages.Oracles621
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles621
namespace InitECandidate.Proofs.SmallStages.Compact621
theorem optimize621_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source621, oracle621) = optimized621 := by
  exact optimize621_eq.trans (by kernel_rfl)
#print axioms optimize621_exact
end InitECandidate.Proofs.SmallStages.Compact621
