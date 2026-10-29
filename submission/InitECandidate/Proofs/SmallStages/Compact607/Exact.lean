import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact607.Complete
import InitECandidate.Proofs.SmallStages.Oracles607
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles607
namespace InitECandidate.Proofs.SmallStages.Compact607
theorem optimize607_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source607, oracle607) = optimized607 := by
  exact optimize607_eq.trans (by kernel_rfl)
#print axioms optimize607_exact
end InitECandidate.Proofs.SmallStages.Compact607
