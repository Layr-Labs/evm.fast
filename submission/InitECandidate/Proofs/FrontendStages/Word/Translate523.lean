import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data523
import InitECandidate.Proofs.WordStages.Source587
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate523_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output523 =
    InitECandidate.Proofs.WordStages.source587 := by
  kernel_rfl
#print axioms translate523_eq
end InitECandidate.Proofs.FrontendStages.Word
