import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data311
import InitECandidate.Proofs.WordStages.Source375
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate295
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate311_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output311 =
    InitECandidate.Proofs.WordStages.source375 := by
  kernel_rfl
#print axioms translate311_eq
end InitECandidate.Proofs.FrontendStages.Word
