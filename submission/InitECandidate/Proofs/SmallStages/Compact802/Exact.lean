import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact802.Complete
import InitECandidate.Proofs.SmallStages.Oracles802
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles802
namespace InitECandidate.Proofs.SmallStages.Compact802
theorem optimize802_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source802, oracle802) = optimized802 := by
  exact optimize802_eq.trans (by kernel_rfl)
#print axioms optimize802_exact
end InitECandidate.Proofs.SmallStages.Compact802
