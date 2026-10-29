import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact850.Complete
import InitECandidate.Proofs.SmallStages.Oracles850
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles850
namespace InitECandidate.Proofs.SmallStages.Compact850
theorem optimize850_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source850, oracle850) = optimized850 := by
  exact optimize850_eq.trans (by kernel_rfl)
#print axioms optimize850_exact
end InitECandidate.Proofs.SmallStages.Compact850
