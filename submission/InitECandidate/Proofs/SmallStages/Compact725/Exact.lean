import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact725.Complete
import InitECandidate.Proofs.SmallStages.Oracles725
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles725
namespace InitECandidate.Proofs.SmallStages.Compact725
theorem optimize725_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source725, oracle725) = optimized725 := by
  exact optimize725_eq.trans (by kernel_rfl)
#print axioms optimize725_exact
end InitECandidate.Proofs.SmallStages.Compact725
