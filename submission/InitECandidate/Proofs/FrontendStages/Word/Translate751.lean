import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data751
import InitECandidate.Proofs.WordStages.Source815
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate735
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate751_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output751 =
    InitECandidate.Proofs.WordStages.source815 := by
  kernel_rfl
#print axioms translate751_eq
end InitECandidate.Proofs.FrontendStages.Word
