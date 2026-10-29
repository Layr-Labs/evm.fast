import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact445.Complete
import InitECandidate.Proofs.SmallStages.Oracles445
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles445
namespace InitECandidate.Proofs.SmallStages.Compact445
theorem optimize445_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source445, oracle445) = optimized445 := by
  exact optimize445_eq.trans (by kernel_rfl)
#print axioms optimize445_exact
end InitECandidate.Proofs.SmallStages.Compact445
