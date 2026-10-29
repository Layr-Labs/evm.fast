import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact380.Complete
import InitECandidate.Proofs.SmallStages.Oracles380
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles380
namespace InitECandidate.Proofs.SmallStages.Compact380
theorem optimize380_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source380, oracle380) = optimized380 := by
  exact optimize380_eq.trans (by kernel_rfl)
#print axioms optimize380_exact
end InitECandidate.Proofs.SmallStages.Compact380
