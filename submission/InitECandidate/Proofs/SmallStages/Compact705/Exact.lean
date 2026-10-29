import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact705.Complete
import InitECandidate.Proofs.SmallStages.Oracles705
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles705
namespace InitECandidate.Proofs.SmallStages.Compact705
theorem optimize705_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source705, oracle705) = optimized705 := by
  exact optimize705_eq.trans (by kernel_rfl)
#print axioms optimize705_exact
end InitECandidate.Proofs.SmallStages.Compact705
