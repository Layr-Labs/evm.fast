import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact767.Complete
import InitECandidate.Proofs.SmallStages.Oracles767
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles767
namespace InitECandidate.Proofs.SmallStages.Compact767
theorem optimize767_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source767, oracle767) = optimized767 := by
  exact optimize767_eq.trans (by kernel_rfl)
#print axioms optimize767_exact
end InitECandidate.Proofs.SmallStages.Compact767
