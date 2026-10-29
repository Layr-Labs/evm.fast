import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact349.Complete
import InitECandidate.Proofs.SmallStages.Oracles349
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles349
namespace InitECandidate.Proofs.SmallStages.Compact349
theorem optimize349_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source349, oracle349) = optimized349 := by
  exact optimize349_eq.trans (by kernel_rfl)
#print axioms optimize349_exact
end InitECandidate.Proofs.SmallStages.Compact349
