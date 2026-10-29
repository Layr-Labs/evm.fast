import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact718.Complete
import InitECandidate.Proofs.SmallStages.Oracles718
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles718
namespace InitECandidate.Proofs.SmallStages.Compact718
theorem optimize718_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source718, oracle718) = optimized718 := by
  exact optimize718_eq.trans (by kernel_rfl)
#print axioms optimize718_exact
end InitECandidate.Proofs.SmallStages.Compact718
