import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data346
import InitECandidate.Proofs.WordStages.Source410
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate330
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate346_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output346 =
    InitECandidate.Proofs.WordStages.source410 := by
  kernel_rfl
#print axioms translate346_eq
end InitECandidate.Proofs.FrontendStages.Word
