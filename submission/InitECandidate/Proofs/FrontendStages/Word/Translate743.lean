import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data743
import InitECandidate.Proofs.WordStages.Source807
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate727
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate743_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output743 =
    InitECandidate.Proofs.WordStages.source807 := by
  kernel_rfl
#print axioms translate743_eq
end InitECandidate.Proofs.FrontendStages.Word
