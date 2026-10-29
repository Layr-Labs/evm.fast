import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact524.Complete
import InitECandidate.Proofs.SmallStages.Oracles524
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles524
namespace InitECandidate.Proofs.SmallStages.Compact524
theorem optimize524_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source524, oracle524) = optimized524 := by
  exact optimize524_eq.trans (by kernel_rfl)
#print axioms optimize524_exact
end InitECandidate.Proofs.SmallStages.Compact524
