import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data769
import InitECandidate.Proofs.WordStages.Source833
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate753
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate769_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output769 =
    InitECandidate.Proofs.WordStages.source833 := by
  kernel_rfl
#print axioms translate769_eq
end InitECandidate.Proofs.FrontendStages.Word
