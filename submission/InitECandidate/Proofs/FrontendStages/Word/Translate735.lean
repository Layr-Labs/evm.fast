import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data735
import InitECandidate.Proofs.WordStages.Source799
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate719
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate735_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output735 =
    InitECandidate.Proofs.WordStages.source799 := by
  kernel_rfl
#print axioms translate735_eq
end InitECandidate.Proofs.FrontendStages.Word
