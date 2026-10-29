import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data634
import InitECandidate.Proofs.WordStages.Source698
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate618
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate634_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output634 =
    InitECandidate.Proofs.WordStages.source698 := by
  kernel_rfl
#print axioms translate634_eq
end InitECandidate.Proofs.FrontendStages.Word
