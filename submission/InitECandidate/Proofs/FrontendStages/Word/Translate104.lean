import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data104
import InitECandidate.Proofs.WordStages.Source168
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate88
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate104_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output104 =
    InitECandidate.Proofs.WordStages.source168 := by
  kernel_rfl
#print axioms translate104_eq
end InitECandidate.Proofs.FrontendStages.Word
