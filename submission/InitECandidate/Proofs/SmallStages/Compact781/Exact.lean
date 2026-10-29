import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact781.Complete
import InitECandidate.Proofs.SmallStages.Oracles781
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles781
namespace InitECandidate.Proofs.SmallStages.Compact781
theorem optimize781_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source781, oracle781) = optimized781 := by
  exact optimize781_eq.trans (by kernel_rfl)
#print axioms optimize781_exact
end InitECandidate.Proofs.SmallStages.Compact781
