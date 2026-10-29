import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact333.Complete
import InitECandidate.Proofs.SmallStages.Oracles333
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles333
namespace InitECandidate.Proofs.SmallStages.Compact333
theorem optimize333_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source333, oracle333) = optimized333 := by
  exact optimize333_eq.trans (by kernel_rfl)
#print axioms optimize333_exact
end InitECandidate.Proofs.SmallStages.Compact333
