import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data267
import InitECandidate.Proofs.WordStages.Source331
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate251
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate267_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output267 =
    InitECandidate.Proofs.WordStages.source331 := by
  kernel_rfl
#print axioms translate267_eq
end InitECandidate.Proofs.FrontendStages.Word
