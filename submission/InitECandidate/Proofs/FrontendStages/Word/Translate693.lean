import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data693
import InitECandidate.Proofs.WordStages.Source757
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate677
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate693_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output693 =
    InitECandidate.Proofs.WordStages.source757 := by
  kernel_rfl
#print axioms translate693_eq
end InitECandidate.Proofs.FrontendStages.Word
