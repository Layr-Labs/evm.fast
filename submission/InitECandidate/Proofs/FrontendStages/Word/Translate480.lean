import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data480
import InitECandidate.Proofs.WordStages.Source544
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate464
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate480_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output480 =
    InitECandidate.Proofs.WordStages.source544 := by
  kernel_rfl
#print axioms translate480_eq
end InitECandidate.Proofs.FrontendStages.Word
