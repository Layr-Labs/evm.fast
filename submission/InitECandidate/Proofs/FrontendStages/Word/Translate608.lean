import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data608
import InitECandidate.Proofs.WordStages.Source672
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate608_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output608 =
    InitECandidate.Proofs.WordStages.source672 := by
  kernel_rfl
#print axioms translate608_eq
end InitECandidate.Proofs.FrontendStages.Word
