import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data559
import InitECandidate.Proofs.WordStages.Source623
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate559_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output559 =
    InitECandidate.Proofs.WordStages.source623 := by
  kernel_rfl
#print axioms translate559_eq
end InitECandidate.Proofs.FrontendStages.Word
