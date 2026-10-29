import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact657.Complete
import InitECandidate.Proofs.SmallStages.Oracles657
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles657
namespace InitECandidate.Proofs.SmallStages.Compact657
theorem optimize657_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source657, oracle657) = optimized657 := by
  exact optimize657_eq.trans (by kernel_rfl)
#print axioms optimize657_exact
end InitECandidate.Proofs.SmallStages.Compact657
