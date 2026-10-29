import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact230.Complete
import InitECandidate.Proofs.SmallStages.Oracles230
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles230
namespace InitECandidate.Proofs.SmallStages.Compact230
theorem optimize230_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source230, oracle230) = optimized230 := by
  exact optimize230_eq.trans (by kernel_rfl)
#print axioms optimize230_exact
end InitECandidate.Proofs.SmallStages.Compact230
