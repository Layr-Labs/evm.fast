import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data601
import InitECandidate.Proofs.WordStages.Source665
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate585
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate601_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output601 =
    InitECandidate.Proofs.WordStages.source665 := by
  kernel_rfl
#print axioms translate601_eq
end InitECandidate.Proofs.FrontendStages.Word
