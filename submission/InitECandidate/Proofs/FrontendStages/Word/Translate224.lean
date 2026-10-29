import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data224
import InitECandidate.Proofs.WordStages.Source288
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate208
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate224_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output224 =
    InitECandidate.Proofs.WordStages.source288 := by
  kernel_rfl
#print axioms translate224_eq
end InitECandidate.Proofs.FrontendStages.Word
