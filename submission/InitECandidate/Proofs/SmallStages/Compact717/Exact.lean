import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact717.Complete
import InitECandidate.Proofs.SmallStages.Oracles717
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles717
namespace InitECandidate.Proofs.SmallStages.Compact717
theorem optimize717_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source717, oracle717) = optimized717 := by
  exact optimize717_eq.trans (by kernel_rfl)
#print axioms optimize717_exact
end InitECandidate.Proofs.SmallStages.Compact717
