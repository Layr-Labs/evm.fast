import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data660
import InitECandidate.Proofs.WordStages.Source724
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate644
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate660_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output660 =
    InitECandidate.Proofs.WordStages.source724 := by
  kernel_rfl
#print axioms translate660_eq
end InitECandidate.Proofs.FrontendStages.Word
