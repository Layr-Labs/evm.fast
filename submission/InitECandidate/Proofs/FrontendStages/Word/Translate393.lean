import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data393
import InitECandidate.Proofs.WordStages.Source457
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate393_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output393 =
    InitECandidate.Proofs.WordStages.source457 := by
  kernel_rfl
#print axioms translate393_eq
end InitECandidate.Proofs.FrontendStages.Word
