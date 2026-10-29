import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data624
import InitECandidate.Proofs.WordStages.Source688
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate608
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate624_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output624 =
    InitECandidate.Proofs.WordStages.source688 := by
  kernel_rfl
#print axioms translate624_eq
end InitECandidate.Proofs.FrontendStages.Word
