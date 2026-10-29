import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data266
import InitECandidate.Proofs.WordStages.Source330
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate250
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate266_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output266 =
    InitECandidate.Proofs.WordStages.source330 := by
  kernel_rfl
#print axioms translate266_eq
end InitECandidate.Proofs.FrontendStages.Word
