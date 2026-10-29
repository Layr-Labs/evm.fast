import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel875.Data2
import InitECandidate.Proofs.WordStages.Parallel875.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel875
theorem pass875_2_eq : WordAlloc.fullSsaCcTrans 3 (pass875_1) = pass875_2 := by
  kernel_rfl
#print axioms pass875_2_eq
end InitECandidate.Proofs.WordStages.Parallel875
