import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data258
import InitECandidate.Proofs.WordStages.Source322
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate242
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate258_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output258 =
    InitECandidate.Proofs.WordStages.source322 := by
  kernel_rfl
#print axioms translate258_eq
end InitECandidate.Proofs.FrontendStages.Word
