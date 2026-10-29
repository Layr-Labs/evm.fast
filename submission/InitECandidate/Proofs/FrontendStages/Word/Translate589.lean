import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data589
import InitECandidate.Proofs.WordStages.Source653
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate573
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate589_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output589 =
    InitECandidate.Proofs.WordStages.source653 := by
  kernel_rfl
#print axioms translate589_eq
end InitECandidate.Proofs.FrontendStages.Word
