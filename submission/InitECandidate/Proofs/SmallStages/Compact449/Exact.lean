import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact449.Complete
import InitECandidate.Proofs.SmallStages.Oracles449
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles449
namespace InitECandidate.Proofs.SmallStages.Compact449
theorem optimize449_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source449, oracle449) = optimized449 := by
  exact optimize449_eq.trans (by kernel_rfl)
#print axioms optimize449_exact
end InitECandidate.Proofs.SmallStages.Compact449
