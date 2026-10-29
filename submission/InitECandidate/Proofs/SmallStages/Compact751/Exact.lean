import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact751.Complete
import InitECandidate.Proofs.SmallStages.Oracles751
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles751
namespace InitECandidate.Proofs.SmallStages.Compact751
theorem optimize751_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source751, oracle751) = optimized751 := by
  exact optimize751_eq.trans (by kernel_rfl)
#print axioms optimize751_exact
end InitECandidate.Proofs.SmallStages.Compact751
