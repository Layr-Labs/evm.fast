import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data323
import InitECandidate.Proofs.WordStages.Source387
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate307
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate323_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output323 =
    InitECandidate.Proofs.WordStages.source387 := by
  kernel_rfl
#print axioms translate323_eq
end InitECandidate.Proofs.FrontendStages.Word
