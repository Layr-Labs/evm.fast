import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data609
import InitECandidate.Proofs.WordStages.Source673
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate593
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate609_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output609 =
    InitECandidate.Proofs.WordStages.source673 := by
  kernel_rfl
#print axioms translate609_eq
end InitECandidate.Proofs.FrontendStages.Word
