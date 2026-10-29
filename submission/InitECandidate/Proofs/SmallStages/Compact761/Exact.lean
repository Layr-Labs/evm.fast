import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact761.Complete
import InitECandidate.Proofs.SmallStages.Oracles761
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles761
namespace InitECandidate.Proofs.SmallStages.Compact761
theorem optimize761_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source761, oracle761) = optimized761 := by
  exact optimize761_eq.trans (by kernel_rfl)
#print axioms optimize761_exact
end InitECandidate.Proofs.SmallStages.Compact761
