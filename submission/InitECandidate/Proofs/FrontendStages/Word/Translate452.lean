import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data452
import InitECandidate.Proofs.WordStages.Source516
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate436
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate452_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output452 =
    InitECandidate.Proofs.WordStages.source516 := by
  kernel_rfl
#print axioms translate452_eq
end InitECandidate.Proofs.FrontendStages.Word
