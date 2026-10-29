import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact586.Complete
import InitECandidate.Proofs.SmallStages.Oracles586
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles586
namespace InitECandidate.Proofs.SmallStages.Compact586
theorem optimize586_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source586, oracle586) = optimized586 := by
  exact optimize586_eq.trans (by kernel_rfl)
#print axioms optimize586_exact
end InitECandidate.Proofs.SmallStages.Compact586
