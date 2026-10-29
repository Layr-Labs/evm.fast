import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact358.Complete
import InitECandidate.Proofs.SmallStages.Oracles358
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles358
namespace InitECandidate.Proofs.SmallStages.Compact358
theorem optimize358_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source358, oracle358) = optimized358 := by
  exact optimize358_eq.trans (by kernel_rfl)
#print axioms optimize358_exact
end InitECandidate.Proofs.SmallStages.Compact358
