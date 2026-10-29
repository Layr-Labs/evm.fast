import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data736
import InitECandidate.Proofs.WordStages.Source800
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate720
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate736_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output736 =
    InitECandidate.Proofs.WordStages.source800 := by
  kernel_rfl
#print axioms translate736_eq
end InitECandidate.Proofs.FrontendStages.Word
