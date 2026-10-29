import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact223.Complete
import InitECandidate.Proofs.SmallStages.Oracles223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles223
namespace InitECandidate.Proofs.SmallStages.Compact223
theorem optimize223_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source223, oracle223) = optimized223 := by
  exact optimize223_eq.trans (by kernel_rfl)
#print axioms optimize223_exact
end InitECandidate.Proofs.SmallStages.Compact223
