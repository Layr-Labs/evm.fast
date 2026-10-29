import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data387
import InitECandidate.Proofs.WordStages.Source451
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate387_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output387 =
    InitECandidate.Proofs.WordStages.source451 := by
  kernel_rfl
#print axioms translate387_eq
end InitECandidate.Proofs.FrontendStages.Word
