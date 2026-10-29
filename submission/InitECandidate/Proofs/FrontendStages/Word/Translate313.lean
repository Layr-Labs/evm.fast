import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data313
import InitECandidate.Proofs.WordStages.Source377
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate313_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output313 =
    InitECandidate.Proofs.WordStages.source377 := by
  kernel_rfl
#print axioms translate313_eq
end InitECandidate.Proofs.FrontendStages.Word
