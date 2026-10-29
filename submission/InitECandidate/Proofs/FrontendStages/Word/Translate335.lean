import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data335
import InitECandidate.Proofs.WordStages.Source399
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate335_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output335 =
    InitECandidate.Proofs.WordStages.source399 := by
  kernel_rfl
#print axioms translate335_eq
end InitECandidate.Proofs.FrontendStages.Word
