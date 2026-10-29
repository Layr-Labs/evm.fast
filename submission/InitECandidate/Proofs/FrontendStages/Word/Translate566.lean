import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data566
import InitECandidate.Proofs.WordStages.Source630
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate550
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate566_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output566 =
    InitECandidate.Proofs.WordStages.source630 := by
  kernel_rfl
#print axioms translate566_eq
end InitECandidate.Proofs.FrontendStages.Word
