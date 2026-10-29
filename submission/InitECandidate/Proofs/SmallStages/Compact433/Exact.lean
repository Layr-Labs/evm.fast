import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact433.Complete
import InitECandidate.Proofs.SmallStages.Oracles433
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles433
namespace InitECandidate.Proofs.SmallStages.Compact433
theorem optimize433_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source433, oracle433) = optimized433 := by
  exact optimize433_eq.trans (by kernel_rfl)
#print axioms optimize433_exact
end InitECandidate.Proofs.SmallStages.Compact433
