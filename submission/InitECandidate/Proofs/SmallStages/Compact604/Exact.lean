import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact604.Complete
import InitECandidate.Proofs.SmallStages.Oracles604
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles604
namespace InitECandidate.Proofs.SmallStages.Compact604
theorem optimize604_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source604, oracle604) = optimized604 := by
  exact optimize604_eq.trans (by kernel_rfl)
#print axioms optimize604_exact
end InitECandidate.Proofs.SmallStages.Compact604
