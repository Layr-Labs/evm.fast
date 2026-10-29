import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data795
import InitECandidate.Proofs.WordStages.Source859
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate779
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate795_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output795 =
    InitECandidate.Proofs.WordStages.source859 := by
  kernel_rfl
#print axioms translate795_eq
end InitECandidate.Proofs.FrontendStages.Word
