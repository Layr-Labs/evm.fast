import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data398
import InitECandidate.Proofs.WordStages.Source462
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate382
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate398_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output398 =
    InitECandidate.Proofs.WordStages.source462 := by
  kernel_rfl
#print axioms translate398_eq
end InitECandidate.Proofs.FrontendStages.Word
