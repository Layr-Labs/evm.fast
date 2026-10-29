import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data254
import InitECandidate.Proofs.WordStages.Source318
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate238
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate254_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output254 =
    InitECandidate.Proofs.WordStages.source318 := by
  kernel_rfl
#print axioms translate254_eq
end InitECandidate.Proofs.FrontendStages.Word
