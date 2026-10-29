import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data752
import InitECandidate.Proofs.WordStages.Source816
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate736
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate752_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output752 =
    InitECandidate.Proofs.WordStages.source816 := by
  kernel_rfl
#print axioms translate752_eq
end InitECandidate.Proofs.FrontendStages.Word
