import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data153
import InitECandidate.Proofs.WordStages.Source217
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate137
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate153_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output153 =
    InitECandidate.Proofs.WordStages.source217 := by
  kernel_rfl
#print axioms translate153_eq
end InitECandidate.Proofs.FrontendStages.Word
