import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact466.Complete
import InitECandidate.Proofs.SmallStages.Oracles466
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles466
namespace InitECandidate.Proofs.SmallStages.Compact466
theorem optimize466_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source466, oracle466) = optimized466 := by
  exact optimize466_eq.trans (by kernel_rfl)
#print axioms optimize466_exact
end InitECandidate.Proofs.SmallStages.Compact466
