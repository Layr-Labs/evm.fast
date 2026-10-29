import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data234
import InitECandidate.Proofs.WordStages.Source298
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate218
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate234_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output234 =
    InitECandidate.Proofs.WordStages.source298 := by
  kernel_rfl
#print axioms translate234_eq
end InitECandidate.Proofs.FrontendStages.Word
