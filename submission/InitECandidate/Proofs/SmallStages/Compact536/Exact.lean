import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact536.Complete
import InitECandidate.Proofs.SmallStages.Oracles536
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles536
namespace InitECandidate.Proofs.SmallStages.Compact536
theorem optimize536_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source536, oracle536) = optimized536 := by
  exact optimize536_eq.trans (by kernel_rfl)
#print axioms optimize536_exact
end InitECandidate.Proofs.SmallStages.Compact536
