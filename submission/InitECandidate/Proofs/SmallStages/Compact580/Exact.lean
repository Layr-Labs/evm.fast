import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact580.Complete
import InitECandidate.Proofs.SmallStages.Oracles580
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles580
namespace InitECandidate.Proofs.SmallStages.Compact580
theorem optimize580_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source580, oracle580) = optimized580 := by
  exact optimize580_eq.trans (by kernel_rfl)
#print axioms optimize580_exact
end InitECandidate.Proofs.SmallStages.Compact580
