import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact601.Complete
import InitECandidate.Proofs.SmallStages.Oracles601
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles601
namespace InitECandidate.Proofs.SmallStages.Compact601
theorem optimize601_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source601, oracle601) = optimized601 := by
  exact optimize601_eq.trans (by kernel_rfl)
#print axioms optimize601_exact
end InitECandidate.Proofs.SmallStages.Compact601
