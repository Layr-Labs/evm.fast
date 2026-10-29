import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data275
import InitECandidate.Proofs.WordStages.Source339
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate259
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate275_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output275 =
    InitECandidate.Proofs.WordStages.source339 := by
  kernel_rfl
#print axioms translate275_eq
end InitECandidate.Proofs.FrontendStages.Word
