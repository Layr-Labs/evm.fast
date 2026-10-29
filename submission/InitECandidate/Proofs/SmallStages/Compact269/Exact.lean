import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact269.Complete
import InitECandidate.Proofs.SmallStages.Oracles269
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles269
namespace InitECandidate.Proofs.SmallStages.Compact269
theorem optimize269_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source269, oracle269) = optimized269 := by
  exact optimize269_eq.trans (by kernel_rfl)
#print axioms optimize269_exact
end InitECandidate.Proofs.SmallStages.Compact269
