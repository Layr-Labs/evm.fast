import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact483.Complete
import InitECandidate.Proofs.SmallStages.Oracles483
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles483
namespace InitECandidate.Proofs.SmallStages.Compact483
theorem optimize483_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source483, oracle483) = optimized483 := by
  exact optimize483_eq.trans (by kernel_rfl)
#print axioms optimize483_exact
end InitECandidate.Proofs.SmallStages.Compact483
