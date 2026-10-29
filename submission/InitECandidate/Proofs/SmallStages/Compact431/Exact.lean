import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact431.Complete
import InitECandidate.Proofs.SmallStages.Oracles431
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles431
namespace InitECandidate.Proofs.SmallStages.Compact431
theorem optimize431_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source431, oracle431) = optimized431 := by
  exact optimize431_eq.trans (by kernel_rfl)
#print axioms optimize431_exact
end InitECandidate.Proofs.SmallStages.Compact431
