import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data319
import InitECandidate.Proofs.WordStages.Source383
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate319_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output319 =
    InitECandidate.Proofs.WordStages.source383 := by
  kernel_rfl
#print axioms translate319_eq
end InitECandidate.Proofs.FrontendStages.Word
