import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data329
import InitECandidate.Proofs.WordStages.Source393
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate313
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate329_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output329 =
    InitECandidate.Proofs.WordStages.source393 := by
  kernel_rfl
#print axioms translate329_eq
end InitECandidate.Proofs.FrontendStages.Word
