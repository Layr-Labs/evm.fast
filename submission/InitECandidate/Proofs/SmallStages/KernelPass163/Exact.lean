import InitECandidate.Proofs.SmallStages.KernelPass163.Complete
import InitECandidate.Proofs.SmallStages.Thin163
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.KernelPass163
theorem optimize163_exact : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source163, InitECandidate.Proofs.SmallStages.Thin163.oracle163) =
    InitECandidate.Proofs.SmallStages.Thin163.optimized163 := by
  exact optimize163_eq.trans (by with_unfolding_all rfl)
#print axioms optimize163_exact
end InitECandidate.Proofs.SmallStages.KernelPass163
