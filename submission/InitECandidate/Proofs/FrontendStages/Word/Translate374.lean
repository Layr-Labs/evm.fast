import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data374
import InitECandidate.Proofs.WordStages.Source438
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate358
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate374_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output374 =
    InitECandidate.Proofs.WordStages.source438 := by
  kernel_rfl
#print axioms translate374_eq
end InitECandidate.Proofs.FrontendStages.Word
