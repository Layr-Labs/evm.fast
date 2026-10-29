import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact478.Complete
import InitECandidate.Proofs.SmallStages.Oracles478
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles478
namespace InitECandidate.Proofs.SmallStages.Compact478
theorem optimize478_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source478, oracle478) = optimized478 := by
  exact optimize478_eq.trans (by kernel_rfl)
#print axioms optimize478_exact
end InitECandidate.Proofs.SmallStages.Compact478
