import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data799
import InitECandidate.Proofs.WordStages.Source863
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate783
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate799_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output799 =
    InitECandidate.Proofs.WordStages.source863 := by
  kernel_rfl
#print axioms translate799_eq
end InitECandidate.Proofs.FrontendStages.Word
