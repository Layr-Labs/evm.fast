import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data316
import InitECandidate.Proofs.WordStages.Source380
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate300
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate316_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output316 =
    InitECandidate.Proofs.WordStages.source380 := by
  kernel_rfl
#print axioms translate316_eq
end InitECandidate.Proofs.FrontendStages.Word
