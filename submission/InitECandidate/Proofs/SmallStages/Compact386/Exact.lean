import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact386.Complete
import InitECandidate.Proofs.SmallStages.Oracles386
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles386
namespace InitECandidate.Proofs.SmallStages.Compact386
theorem optimize386_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source386, oracle386) = optimized386 := by
  exact optimize386_eq.trans (by kernel_rfl)
#print axioms optimize386_exact
end InitECandidate.Proofs.SmallStages.Compact386
