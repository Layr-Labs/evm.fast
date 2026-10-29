import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact669.Complete
import InitECandidate.Proofs.SmallStages.Oracles669
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles669
namespace InitECandidate.Proofs.SmallStages.Compact669
theorem optimize669_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source669, oracle669) = optimized669 := by
  exact optimize669_eq.trans (by kernel_rfl)
#print axioms optimize669_exact
end InitECandidate.Proofs.SmallStages.Compact669
