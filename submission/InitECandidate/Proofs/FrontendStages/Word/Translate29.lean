import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data29
import InitECandidate.Proofs.WordStages.Source93
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate13
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate29_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output29 =
    InitECandidate.Proofs.WordStages.source93 := by
  kernel_rfl
#print axioms translate29_eq
end InitECandidate.Proofs.FrontendStages.Word
