import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact495.Complete
import InitECandidate.Proofs.SmallStages.Oracles495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles495
namespace InitECandidate.Proofs.SmallStages.Compact495
theorem optimize495_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source495, oracle495) = optimized495 := by
  exact optimize495_eq.trans (by kernel_rfl)
#print axioms optimize495_exact
end InitECandidate.Proofs.SmallStages.Compact495
