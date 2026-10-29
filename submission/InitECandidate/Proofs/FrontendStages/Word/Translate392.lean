import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data392
import InitECandidate.Proofs.WordStages.Source456
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate376
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate392_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output392 =
    InitECandidate.Proofs.WordStages.source456 := by
  kernel_rfl
#print axioms translate392_eq
end InitECandidate.Proofs.FrontendStages.Word
