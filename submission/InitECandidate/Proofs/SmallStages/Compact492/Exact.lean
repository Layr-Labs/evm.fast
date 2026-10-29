import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact492.Complete
import InitECandidate.Proofs.SmallStages.Oracles492
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles492
namespace InitECandidate.Proofs.SmallStages.Compact492
theorem optimize492_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source492, oracle492) = optimized492 := by
  exact optimize492_eq.trans (by kernel_rfl)
#print axioms optimize492_exact
end InitECandidate.Proofs.SmallStages.Compact492
