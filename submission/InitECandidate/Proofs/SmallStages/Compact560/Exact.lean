import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact560.Complete
import InitECandidate.Proofs.SmallStages.Oracles560
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles560
namespace InitECandidate.Proofs.SmallStages.Compact560
theorem optimize560_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source560, oracle560) = optimized560 := by
  exact optimize560_eq.trans (by kernel_rfl)
#print axioms optimize560_exact
end InitECandidate.Proofs.SmallStages.Compact560
