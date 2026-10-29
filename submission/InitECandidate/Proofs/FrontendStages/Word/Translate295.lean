import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data295
import InitECandidate.Proofs.WordStages.Source359
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate295_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output295 =
    InitECandidate.Proofs.WordStages.source359 := by
  kernel_rfl
#print axioms translate295_eq
end InitECandidate.Proofs.FrontendStages.Word
