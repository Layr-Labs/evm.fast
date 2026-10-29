import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data658
import InitECandidate.Proofs.WordStages.Source722
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate642
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate658_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output658 =
    InitECandidate.Proofs.WordStages.source722 := by
  kernel_rfl
#print axioms translate658_eq
end InitECandidate.Proofs.FrontendStages.Word
