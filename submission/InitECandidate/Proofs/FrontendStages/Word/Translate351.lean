import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data351
import InitECandidate.Proofs.WordStages.Source415
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate335
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate351_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output351 =
    InitECandidate.Proofs.WordStages.source415 := by
  kernel_rfl
#print axioms translate351_eq
end InitECandidate.Proofs.FrontendStages.Word
