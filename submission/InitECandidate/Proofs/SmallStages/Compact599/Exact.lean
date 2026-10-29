import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact599.Complete
import InitECandidate.Proofs.SmallStages.Oracles599
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles599
namespace InitECandidate.Proofs.SmallStages.Compact599
theorem optimize599_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source599, oracle599) = optimized599 := by
  exact optimize599_eq.trans (by kernel_rfl)
#print axioms optimize599_exact
end InitECandidate.Proofs.SmallStages.Compact599
