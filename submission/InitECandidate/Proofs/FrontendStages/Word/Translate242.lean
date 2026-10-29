import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data242
import InitECandidate.Proofs.WordStages.Source306
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate226
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate242_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output242 =
    InitECandidate.Proofs.WordStages.source306 := by
  kernel_rfl
#print axioms translate242_eq
end InitECandidate.Proofs.FrontendStages.Word
