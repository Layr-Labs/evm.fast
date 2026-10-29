import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact214.Complete
import InitECandidate.Proofs.SmallStages.Oracles214
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles214
namespace InitECandidate.Proofs.SmallStages.Compact214
theorem optimize214_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source214, oracle214) = optimized214 := by
  exact optimize214_eq.trans (by kernel_rfl)
#print axioms optimize214_exact
end InitECandidate.Proofs.SmallStages.Compact214
