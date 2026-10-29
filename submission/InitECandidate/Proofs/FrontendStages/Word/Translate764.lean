import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data764
import InitECandidate.Proofs.WordStages.Source828
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate748
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate764_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output764 =
    InitECandidate.Proofs.WordStages.source828 := by
  kernel_rfl
#print axioms translate764_eq
end InitECandidate.Proofs.FrontendStages.Word
