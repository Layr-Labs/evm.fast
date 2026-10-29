import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data74
import InitECandidate.Proofs.WordStages.Source138
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate58
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate74_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output74 =
    InitECandidate.Proofs.WordStages.source138 := by
  kernel_rfl
#print axioms translate74_eq
end InitECandidate.Proofs.FrontendStages.Word
