import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact845.Complete
import InitECandidate.Proofs.SmallStages.Oracles845
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles845
namespace InitECandidate.Proofs.SmallStages.Compact845
theorem optimize845_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source845, oracle845) = optimized845 := by
  exact optimize845_eq.trans (by kernel_rfl)
#print axioms optimize845_exact
end InitECandidate.Proofs.SmallStages.Compact845
