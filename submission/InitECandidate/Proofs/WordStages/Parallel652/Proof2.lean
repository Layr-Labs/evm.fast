import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel652.Data2
import InitECandidate.Proofs.WordStages.Parallel652.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel652
theorem pass652_2_eq : WordAlloc.fullSsaCcTrans 10 (pass652_1) = pass652_2 := by
  kernel_rfl
#print axioms pass652_2_eq
end InitECandidate.Proofs.WordStages.Parallel652
