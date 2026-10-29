import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact643.Complete
import InitECandidate.Proofs.SmallStages.Oracles643
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles643
namespace InitECandidate.Proofs.SmallStages.Compact643
theorem optimize643_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source643, oracle643) = optimized643 := by
  exact optimize643_eq.trans (by kernel_rfl)
#print axioms optimize643_exact
end InitECandidate.Proofs.SmallStages.Compact643
