import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data575
import InitECandidate.Proofs.WordStages.Source639
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate575_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output575 =
    InitECandidate.Proofs.WordStages.source639 := by
  kernel_rfl
#print axioms translate575_eq
end InitECandidate.Proofs.FrontendStages.Word
