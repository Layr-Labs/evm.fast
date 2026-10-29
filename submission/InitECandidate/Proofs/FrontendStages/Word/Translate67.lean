import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data67
import InitECandidate.Proofs.WordStages.Source131
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate51
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate67_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output67 =
    InitECandidate.Proofs.WordStages.source131 := by
  kernel_rfl
#print axioms translate67_eq
end InitECandidate.Proofs.FrontendStages.Word
