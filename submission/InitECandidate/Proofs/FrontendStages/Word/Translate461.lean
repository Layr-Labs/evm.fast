import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data461
import InitECandidate.Proofs.WordStages.Source525
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate461_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output461 =
    InitECandidate.Proofs.WordStages.source525 := by
  kernel_rfl
#print axioms translate461_eq
end InitECandidate.Proofs.FrontendStages.Word
