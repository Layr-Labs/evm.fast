import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data289
import InitECandidate.Proofs.WordStages.Source353
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate289_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output289 =
    InitECandidate.Proofs.WordStages.source353 := by
  kernel_rfl
#print axioms translate289_eq
end InitECandidate.Proofs.FrontendStages.Word
