import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data656
import InitECandidate.Proofs.WordStages.Source720
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate640
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate656_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output656 =
    InitECandidate.Proofs.WordStages.source720 := by
  kernel_rfl
#print axioms translate656_eq
end InitECandidate.Proofs.FrontendStages.Word
