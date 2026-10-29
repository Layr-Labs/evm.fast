import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data473
import InitECandidate.Proofs.WordStages.Source537
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate473_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output473 =
    InitECandidate.Proofs.WordStages.source537 := by
  kernel_rfl
#print axioms translate473_eq
end InitECandidate.Proofs.FrontendStages.Word
