import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data300
import InitECandidate.Proofs.WordStages.Source364
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate284
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate300_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output300 =
    InitECandidate.Proofs.WordStages.source364 := by
  kernel_rfl
#print axioms translate300_eq
end InitECandidate.Proofs.FrontendStages.Word
