import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data277
import InitECandidate.Proofs.WordStages.Source341
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate261
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate277_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output277 =
    InitECandidate.Proofs.WordStages.source341 := by
  kernel_rfl
#print axioms translate277_eq
end InitECandidate.Proofs.FrontendStages.Word
