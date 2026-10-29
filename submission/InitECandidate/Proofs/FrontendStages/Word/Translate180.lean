import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data180
import InitECandidate.Proofs.WordStages.Source244
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate164
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate180_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output180 =
    InitECandidate.Proofs.WordStages.source244 := by
  kernel_rfl
#print axioms translate180_eq
end InitECandidate.Proofs.FrontendStages.Word
