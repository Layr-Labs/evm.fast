import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact548.Complete
import InitECandidate.Proofs.SmallStages.Oracles548
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles548
namespace InitECandidate.Proofs.SmallStages.Compact548
theorem optimize548_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source548, oracle548) = optimized548 := by
  exact optimize548_eq.trans (by kernel_rfl)
#print axioms optimize548_exact
end InitECandidate.Proofs.SmallStages.Compact548
