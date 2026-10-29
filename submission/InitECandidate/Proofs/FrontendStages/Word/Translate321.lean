import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data321
import InitECandidate.Proofs.WordStages.Source385
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate305
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate321_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output321 =
    InitECandidate.Proofs.WordStages.source385 := by
  kernel_rfl
#print axioms translate321_eq
end InitECandidate.Proofs.FrontendStages.Word
