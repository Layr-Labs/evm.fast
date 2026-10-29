import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data134
import InitECandidate.Proofs.WordStages.Source198
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate134_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output134 =
    InitECandidate.Proofs.WordStages.source198 := by
  kernel_rfl
#print axioms translate134_eq
end InitECandidate.Proofs.FrontendStages.Word
