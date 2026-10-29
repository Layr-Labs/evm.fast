import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data364
import InitECandidate.Proofs.WordStages.Source428
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate348
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate364_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output364 =
    InitECandidate.Proofs.WordStages.source428 := by
  kernel_rfl
#print axioms translate364_eq
end InitECandidate.Proofs.FrontendStages.Word
