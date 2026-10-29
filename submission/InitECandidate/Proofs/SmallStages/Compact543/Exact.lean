import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact543.Complete
import InitECandidate.Proofs.SmallStages.Oracles543
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles543
namespace InitECandidate.Proofs.SmallStages.Compact543
theorem optimize543_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source543, oracle543) = optimized543 := by
  exact optimize543_eq.trans (by kernel_rfl)
#print axioms optimize543_exact
end InitECandidate.Proofs.SmallStages.Compact543
