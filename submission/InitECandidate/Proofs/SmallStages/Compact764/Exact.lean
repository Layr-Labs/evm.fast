import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact764.Complete
import InitECandidate.Proofs.SmallStages.Oracles764
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles764
namespace InitECandidate.Proofs.SmallStages.Compact764
theorem optimize764_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source764, oracle764) = optimized764 := by
  exact optimize764_eq.trans (by kernel_rfl)
#print axioms optimize764_exact
end InitECandidate.Proofs.SmallStages.Compact764
