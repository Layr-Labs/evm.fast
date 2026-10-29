import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact716.Complete
import InitECandidate.Proofs.SmallStages.Oracles716
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles716
namespace InitECandidate.Proofs.SmallStages.Compact716
theorem optimize716_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source716, oracle716) = optimized716 := by
  exact optimize716_eq.trans (by kernel_rfl)
#print axioms optimize716_exact
end InitECandidate.Proofs.SmallStages.Compact716
