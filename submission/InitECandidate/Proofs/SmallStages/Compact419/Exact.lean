import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact419.Complete
import InitECandidate.Proofs.SmallStages.Oracles419
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles419
namespace InitECandidate.Proofs.SmallStages.Compact419
theorem optimize419_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source419, oracle419) = optimized419 := by
  exact optimize419_eq.trans (by kernel_rfl)
#print axioms optimize419_exact
end InitECandidate.Proofs.SmallStages.Compact419
