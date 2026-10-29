import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data386
import InitECandidate.Proofs.WordStages.Source450
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate370
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate386_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output386 =
    InitECandidate.Proofs.WordStages.source450 := by
  kernel_rfl
#print axioms translate386_eq
end InitECandidate.Proofs.FrontendStages.Word
