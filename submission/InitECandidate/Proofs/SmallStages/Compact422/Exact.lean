import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact422.Complete
import InitECandidate.Proofs.SmallStages.Oracles422
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles422
namespace InitECandidate.Proofs.SmallStages.Compact422
theorem optimize422_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source422, oracle422) = optimized422 := by
  exact optimize422_eq.trans (by kernel_rfl)
#print axioms optimize422_exact
end InitECandidate.Proofs.SmallStages.Compact422
