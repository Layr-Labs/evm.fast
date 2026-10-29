import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact456.Complete
import InitECandidate.Proofs.SmallStages.Oracles456
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles456
namespace InitECandidate.Proofs.SmallStages.Compact456
theorem optimize456_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source456, oracle456) = optimized456 := by
  exact optimize456_eq.trans (by kernel_rfl)
#print axioms optimize456_exact
end InitECandidate.Proofs.SmallStages.Compact456
