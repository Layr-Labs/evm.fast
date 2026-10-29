import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel652.Data1
import InitECandidate.Proofs.WordStages.Parallel652.Data0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel652
theorem pass652_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass652_0) + 1) (pass652_0) = pass652_1 := by
  kernel_rfl
#print axioms pass652_1_eq
end InitECandidate.Proofs.WordStages.Parallel652
