import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data57
import InitECandidate.Proofs.WordStages.Source121
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate41
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate57_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output57 =
    InitECandidate.Proofs.WordStages.source121 := by
  kernel_rfl
#print axioms translate57_eq
end InitECandidate.Proofs.FrontendStages.Word
