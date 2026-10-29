import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact528.Complete
import InitECandidate.Proofs.SmallStages.Oracles528
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles528
namespace InitECandidate.Proofs.SmallStages.Compact528
theorem optimize528_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source528, oracle528) = optimized528 := by
  exact optimize528_eq.trans (by kernel_rfl)
#print axioms optimize528_exact
end InitECandidate.Proofs.SmallStages.Compact528
