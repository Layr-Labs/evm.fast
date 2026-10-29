import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact393.Complete
import InitECandidate.Proofs.SmallStages.Oracles393
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles393
namespace InitECandidate.Proofs.SmallStages.Compact393
theorem optimize393_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source393, oracle393) = optimized393 := by
  exact optimize393_eq.trans (by kernel_rfl)
#print axioms optimize393_exact
end InitECandidate.Proofs.SmallStages.Compact393
