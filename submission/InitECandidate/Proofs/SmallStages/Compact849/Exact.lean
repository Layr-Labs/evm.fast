import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact849.Complete
import InitECandidate.Proofs.SmallStages.Oracles849
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles849
namespace InitECandidate.Proofs.SmallStages.Compact849
theorem optimize849_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source849, oracle849) = optimized849 := by
  exact optimize849_eq.trans (by kernel_rfl)
#print axioms optimize849_exact
end InitECandidate.Proofs.SmallStages.Compact849
