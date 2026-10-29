import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data205
import InitECandidate.Proofs.WordStages.Source269
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate189
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate205_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output205 =
    InitECandidate.Proofs.WordStages.source269 := by
  kernel_rfl
#print axioms translate205_eq
end InitECandidate.Proofs.FrontendStages.Word
