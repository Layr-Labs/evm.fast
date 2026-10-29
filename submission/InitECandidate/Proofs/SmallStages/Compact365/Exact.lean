import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact365.Complete
import InitECandidate.Proofs.SmallStages.Oracles365
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles365
namespace InitECandidate.Proofs.SmallStages.Compact365
theorem optimize365_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source365, oracle365) = optimized365 := by
  exact optimize365_eq.trans (by kernel_rfl)
#print axioms optimize365_exact
end InitECandidate.Proofs.SmallStages.Compact365
