import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data366
import InitECandidate.Proofs.WordStages.Source430
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate350
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate366_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output366 =
    InitECandidate.Proofs.WordStages.source430 := by
  kernel_rfl
#print axioms translate366_eq
end InitECandidate.Proofs.FrontendStages.Word
