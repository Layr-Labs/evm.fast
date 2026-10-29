import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data314
import InitECandidate.Proofs.WordStages.Source378
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate298
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate314_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output314 =
    InitECandidate.Proofs.WordStages.source378 := by
  kernel_rfl
#print axioms translate314_eq
end InitECandidate.Proofs.FrontendStages.Word
