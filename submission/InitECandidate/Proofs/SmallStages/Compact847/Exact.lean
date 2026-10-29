import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact847.Complete
import InitECandidate.Proofs.SmallStages.Oracles847
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles847
namespace InitECandidate.Proofs.SmallStages.Compact847
theorem optimize847_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source847, oracle847) = optimized847 := by
  exact optimize847_eq.trans (by kernel_rfl)
#print axioms optimize847_exact
end InitECandidate.Proofs.SmallStages.Compact847
