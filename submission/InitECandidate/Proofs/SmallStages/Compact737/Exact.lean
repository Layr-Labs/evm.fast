import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact737.Complete
import InitECandidate.Proofs.SmallStages.Oracles737
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages InitECandidate.Proofs.SmallStages.Oracles737
namespace InitECandidate.Proofs.SmallStages.Compact737
theorem optimize737_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source737, oracle737) = optimized737 := by
  exact optimize737_eq.trans (by kernel_rfl)
#print axioms optimize737_exact
end InitECandidate.Proofs.SmallStages.Compact737
