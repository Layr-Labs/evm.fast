import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data166
import InitECandidate.Proofs.WordStages.Source230
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate150
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate166_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output166 =
    InitECandidate.Proofs.WordStages.source230 := by
  kernel_rfl
#print axioms translate166_eq
end InitECandidate.Proofs.FrontendStages.Word
