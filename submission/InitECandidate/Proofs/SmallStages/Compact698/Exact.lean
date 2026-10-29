import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact698.Complete
import InitECandidate.Proofs.SmallStages.Oracles698
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles698
namespace InitECandidate.Proofs.SmallStages.Compact698
theorem optimize698_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source698, oracle698) = optimized698 := by
  exact optimize698_eq.trans (by kernel_rfl)
#print axioms optimize698_exact
end InitECandidate.Proofs.SmallStages.Compact698
