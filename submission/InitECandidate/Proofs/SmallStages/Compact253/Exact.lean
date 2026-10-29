import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact253.Complete
import InitECandidate.Proofs.SmallStages.Oracles253
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles253
namespace InitECandidate.Proofs.SmallStages.Compact253
theorem optimize253_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source253, oracle253) = optimized253 := by
  exact optimize253_eq.trans (by kernel_rfl)
#print axioms optimize253_exact
end InitECandidate.Proofs.SmallStages.Compact253
