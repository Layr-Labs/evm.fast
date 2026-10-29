import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data491
import InitECandidate.Proofs.WordStages.Source555
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate475
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate491_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output491 =
    InitECandidate.Proofs.WordStages.source555 := by
  kernel_rfl
#print axioms translate491_eq
end InitECandidate.Proofs.FrontendStages.Word
