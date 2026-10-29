import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data288
import InitECandidate.Proofs.WordStages.Source352
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate272
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate288_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output288 =
    InitECandidate.Proofs.WordStages.source352 := by
  kernel_rfl
#print axioms translate288_eq
end InitECandidate.Proofs.FrontendStages.Word
