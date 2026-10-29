import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data552
import InitECandidate.Proofs.WordStages.Source616
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate536
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate552_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output552 =
    InitECandidate.Proofs.WordStages.source616 := by
  kernel_rfl
#print axioms translate552_eq
end InitECandidate.Proofs.FrontendStages.Word
