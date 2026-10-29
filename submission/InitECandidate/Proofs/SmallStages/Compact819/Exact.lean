import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact819.Complete
import InitECandidate.Proofs.SmallStages.Oracles819
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles819
namespace InitECandidate.Proofs.SmallStages.Compact819
theorem optimize819_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source819, oracle819) = optimized819 := by
  exact optimize819_eq.trans (by kernel_rfl)
#print axioms optimize819_exact
end InitECandidate.Proofs.SmallStages.Compact819
