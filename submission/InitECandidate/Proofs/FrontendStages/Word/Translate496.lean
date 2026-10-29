import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data496
import InitECandidate.Proofs.WordStages.Source560
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate496_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output496 =
    InitECandidate.Proofs.WordStages.source560 := by
  kernel_rfl
#print axioms translate496_eq
end InitECandidate.Proofs.FrontendStages.Word
