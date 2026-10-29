import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data111
import InitECandidate.Proofs.WordStages.Source175
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate95
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate111_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output111 =
    InitECandidate.Proofs.WordStages.source175 := by
  kernel_rfl
#print axioms translate111_eq
end InitECandidate.Proofs.FrontendStages.Word
