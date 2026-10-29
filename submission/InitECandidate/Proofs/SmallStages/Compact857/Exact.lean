import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact857.Complete
import InitECandidate.Proofs.SmallStages.Oracles857
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles857
namespace InitECandidate.Proofs.SmallStages.Compact857
theorem optimize857_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source857, oracle857) = optimized857 := by
  exact optimize857_eq.trans (by kernel_rfl)
#print axioms optimize857_exact
end InitECandidate.Proofs.SmallStages.Compact857
