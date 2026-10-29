import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data220
import InitECandidate.Proofs.WordStages.Source284
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate204
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate220_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output220 =
    InitECandidate.Proofs.WordStages.source284 := by
  kernel_rfl
#print axioms translate220_eq
end InitECandidate.Proofs.FrontendStages.Word
